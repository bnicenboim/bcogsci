functions {
  real recnormal_lpdf(vector RT, real mu, real sigma){
    real lpdf;
    lpdf = normal_lpdf(1 ./ RT | mu, sigma)
    - num_elements(RT) * normal_lccdf(0 | mu, sigma)
    - sum(2 * log(RT));
    return lpdf;
  }
  real recnormal_rng(real mu, real sigma){
    real pred_rt = 0;
    while (pred_rt <= 0)
      pred_rt = 1 / normal_rng(mu, sigma);
    return pred_rt;
  }
}
data {
  int<lower = 1> N;
  real mu_s_loc;
  real mu_s_scale;
  real sigma_s_loc;
  real sigma_s_scale;
}
transformed data { // these adhere to the conventions above
  vector[N] RT;
  real mu_ = normal_rng(mu_s_loc, mu_s_loc)/ 1000;
  real sigma_ = lognormal_rng(sigma_s_loc, sigma_s_scale) /1000;
  for(n in 1:N)
    RT[n] = recnormal_rng(mu_, sigma_);
     }
parameters {
  real mu_s;
  real<lower = 0> sigma_s;
}
transformed parameters {
  real mu = mu_s / 1000;
  real sigma = sigma_s / 1000;
}
model {
  target += normal_lpdf(mu_s | mu_s_loc, mu_s_loc);
  target += lognormal_lpdf(sigma_s | sigma_s_loc, sigma_s_scale);
  target += recnormal_lpdf(RT | mu, sigma);
}
generated quantities {
  vector[N] RT_ = RT;
  vector[2] pars_;
  int ranks_[2] = {mu > mu_, sigma > sigma_};
  vector[N] log_lik;
  pars_[1] = mu_;
  pars_[2] = sigma_;
  for(n in 1:N)
    log_lik[n] = recnormal_lpdf([RT[n]]' | mu, sigma);
}
