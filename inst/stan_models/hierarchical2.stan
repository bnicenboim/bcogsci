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
}
model {
  target += normal_lpdf(alpha| 0, 10);
  target += normal_lpdf(beta | 0, 10);
  target += normal_lpdf(sigma | 0, 50)  -
    normal_lccdf(0 | 0, 50);
  target += normal_lpdf(tau_u[1] | 0, 20)  -
    normal_lccdf(0 | 0, 20);
  target += normal_lpdf(tau_u[2] | 0, 20)  -
    normal_lccdf(0 | 0, 20);
  target += normal_lpdf(u[, 1]| 0, tau_u[1]);
  target += normal_lpdf(u[, 2]| 0, tau_u[2]);
  target += normal_lpdf(signal | alpha + u[subj, 1] +
                        c_cloze .* (beta + u[subj, 2]), sigma);
}

