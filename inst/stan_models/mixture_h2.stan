data {
  int<lower = 1> N;
  vector[N] x;
  vector[N] rt;
  array[N] int acc;
  vector[N] x2;
  int<lower = 1> N_subj;
  array[N] int<lower = 1, upper = N_subj> subj;
}
transformed data {
  real p_correct = 1;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
  real<upper = alpha> gamma; //guessing
  real<lower = 0> sigma2;
  real<lower = 0, upper = 1> p_btask;
  real beta_task;
  vector<lower = 0>[3]  tau_u;
  matrix[3, N_subj] z_u;
  cholesky_factor_corr[3] L_u;
}
transformed parameters {
  matrix[N_subj, 3] u;
  u = (diag_pre_multiply(tau_u, L_u) * z_u)';
}
model {
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .1);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(gamma | 6, 1) -
    normal_lcdf(alpha | 6, 1);
  target += normal_lpdf(sigma2 | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(tau_u | 0, .5)
    - 3* normal_lccdf(0 | 0, .5);
  target += normal_lpdf(beta_task | 0, 1);
  target += beta_lpdf(p_btask | 8, 2);
  target += lkj_corr_cholesky_lpdf(L_u | 2);
  target += std_normal_lpdf(to_vector(z_u));
  for(n in 1:N){
    real lodds_task = logit(p_btask) + x2[n] * beta_task;
    target += log_sum_exp(log_inv_logit(lodds_task) +
                          lognormal_lpdf(rt[n] | alpha + u[subj[n], 1] +
                                         x[n] * (beta + u[subj[n], 2]), sigma) +
                          bernoulli_lpmf(acc[n] | p_correct),
                          log1m_inv_logit(lodds_task) +
                          lognormal_lpdf(rt[n] | gamma + u[subj[n], 3], sigma2) +
                          bernoulli_lpmf(acc[n] |.5));
  }
}
generated quantities {
  corr_matrix[3] rho_u = L_u * L_u';
}
