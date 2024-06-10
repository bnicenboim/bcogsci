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
  matrix[N_subj, 2] u;
  corr_matrix[2] R_u;
}
model {
  target += normal_lpdf(alpha| 0,10);
  target += normal_lpdf(beta | 0,10);
  target += normal_lpdf(sigma | 0, 50)  -
    normal_lccdf(0 | 0, 50);
  target += normal_lpdf(tau_u | 0, 20)  -
    2 * normal_lccdf(0 | 0, 20);
  target += lkj_corr_lpdf(R_u | 2);
  for(i in 1:N_subj)
    target +=  multi_normal_lpdf(u[i,] |
                                 rep_row_vector(0, 2),
                                 quad_form_diag(R_u, tau_u));
  target += normal_lpdf(signal | alpha + u[subj, 1] +
                        c_cloze .* (beta + u[subj, 2]), sigma);
}
