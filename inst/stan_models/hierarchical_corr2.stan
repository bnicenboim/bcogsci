data {
  int<lower=1> N;
  vector[N] signal;
  int<lower = 1> N_subj;
  vector[N] c_cloze;
  array[N] int<lower = 1, upper = N_subj> subj;
}
parameters {
  real<lower = 0> sigma;
  vector<lower = 0>[2]  tau_u;
  real alpha;
  real beta;
  matrix[2, N_subj] z_u;
  cholesky_factor_corr[2] L_u;
}
transformed parameters {
  matrix[N_subj, 2] u;
  u = (diag_pre_multiply(tau_u, L_u) * z_u)';
}
model {
  target += normal_lpdf(alpha| 0,10);
  target += normal_lpdf(beta | 0,10);
  target += normal_lpdf(sigma | 0, 50)  -
    normal_lccdf(0 | 0, 50);
  target += normal_lpdf(tau_u | 0, 20)  -
    2 * normal_lccdf(0 | 0, 20);
  target += lkj_corr_cholesky_lpdf(L_u | 2);
  target += std_normal_lpdf(to_vector(z_u));
  target += normal_lpdf(signal | alpha + u[subj, 1] +
                        c_cloze .* (beta + u[subj, 2]), sigma);
}
generated quantities {
  matrix[2, 2] R_u = (L_u * L_u');
  real rho_u = R_u[1, 2];
  vector[N_subj] effect_by_subj = beta + u[ , 2];
}
