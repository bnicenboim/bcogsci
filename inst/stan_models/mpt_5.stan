data {
  int<lower = 1> N_obs;
  int<lower = 1,upper = 5> w_ans[N_obs];
  real complexity[N_obs];
  int<lower = 1> N_subj;
  int<lower = 1, upper = N_subj> subj[N_obs];
}
parameters {
  real<lower = 0, upper = 1> t;
  real<lower = 0, upper = 1> c;
  real a_alpha;
  real<lower = 0> tau_u;
  vector[N_subj] u;
  real f_alpha;
  real f_beta;
}
transformed parameters {
  simplex[5] theta[N_obs];
  for (n in 1:N_obs){
    real a = inv_logit(a_alpha + u[subj[n]]);
    real f = inv_logit(f_alpha + complexity[n] * f_beta);
    theta[n, 1] = 1 - a; //Pr_NR
    theta[n, 2] = a * (1 - t) * (1 - f) * (1 - c) + a * t * (1 - f) * (1 - c); //Pr_Neologism
    theta[n, 3] = a * (1 - t) * (1 - f) * c +  a * t * (1 - f) * c;  //Pr_Formal
    theta[n, 4] = a * (1 - t) * f; //Pr_Mixed
    theta[n, 5] = a * t * f; //Pr_Correct
  }
}
model {
  target += beta_lpdf(t | 2, 2);
  target += beta_lpdf(c | 2, 2);
  target += normal_lpdf(a_alpha | 0, 2);
  target += normal_lpdf(f_alpha | 0, 2);
  target += normal_lpdf(f_beta | 0, 2);
  target += normal_lpdf(u | 0, tau_u);
  target += normal_lpdf(tau_u | 0, 1) - normal_lccdf(0, 0, 1); 
  for(n in 1:N_obs)
    target +=  categorical_lpmf(w_ans[n] | theta[n]);
}
generated quantities{
  int<lower = 1, upper = 5> pred_w_ans[N_obs];
  for(n in 1:N_obs)
    pred_w_ans[n] = categorical_rng(theta[n]);
}
