functions {
  real lognormal_race2_lpdf(real T, int nchoice, array[] real mu, real sigma){
    real lpdf;
    if(nchoice == 1)
        lpdf = lognormal_lpdf(T | mu[1] , sigma)  +
          lognormal_lccdf(T | mu[2], sigma);
      else
        lpdf = lognormal_lpdf(T | mu[2], sigma) +
          lognormal_lccdf(T | mu[1], sigma);
    return lpdf;
  }
}
data {
  int<lower = 1> N;
  int<lower = 1> N_subj;
  vector[N] c_lfreq;
  vector[N] c_lex;
  vector[N] rt;
  array[N] int nchoice;
  array[N] int subj;
}
transformed data{
  real min_rt = min(rt);
  real max_rt = max(rt);
  int N_re = 6;
}
parameters {
  array[2] real alpha;
  array[4] real beta;
  real<lower = 0> sigma;
  real<lower = 0> T_0;
  real<lower = 0, upper = 0.1> theta_c;
  vector<lower = 0>[N_re] tau_u;
  matrix[N_re, N_subj] z_u;
  cholesky_factor_corr[N_re] L_u;
}
transformed parameters {
  matrix[N_subj, N_re] u;
  u = (diag_pre_multiply(tau_u, L_u) * z_u)';
}
model {
  array[N] real log_lik;
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, 0.5);
  target += normal_lpdf(sigma | 0.5, 0.2)
    - normal_lccdf(0 | 0.5, 0.2);
  target += lognormal_lpdf(T_0 | log(200), 0.3);
  target += beta_lpdf(theta_c | 0.9, 70) -
    beta_lcdf(0.1 | 0.9, 70);
  target += normal_lpdf(tau_u | 0.1, 0.1)
    - N_re * normal_lccdf(0 | 0.1, 0.1);
  target += lkj_corr_cholesky_lpdf(L_u | 2);
  target += std_normal_lpdf(to_vector(z_u));
  for(n in 1:N){
    real T = rt[n] - T_0;
    if(T > 0){
    array[2] real mu = {alpha[1] + u[subj[n], 1] -
                    c_lex[n] * (beta[1] + u[subj[n], 2]) -
                    c_lfreq[n] * (beta[2] + u[subj[n], 3]),
                    alpha[2] + u[subj[n], 4] -
                    c_lex[n] * (beta[3] + u[subj[n], 5]) -
                    c_lfreq[n] * (beta[4] + u[subj[n], 6])};
    log_lik[n] = log_sum_exp(
                  log(theta_c) + uniform_lpdf(rt[n] | min_rt, max_rt)
                         + log(0.5),                  log1m(theta_c) + lognormal_race2_lpdf(T | nchoice[n], mu, sigma));
    } else {
      // T < 0, observed time is smaller than the non-decision time
      log_lik[n] = log(theta_c) + uniform_lpdf(rt[n] | min_rt, max_rt)
                   + log(0.5);
    }
  }
  target += sum(log_lik);
}
generated quantities {
  corr_matrix[N_re] R_u = L_u * L_u';
}
