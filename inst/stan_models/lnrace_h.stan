functions {
  real lognormal_race2_lpdf(real T, int nchoice, real[] mu, real sigma){
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
  int nchoice[N];
  int subj[N];
}
transformed data{
  real min_rt = min(rt);
  real max_rt = max(rt);
  int N_re = 6;
}
parameters {
  real alpha[2];
  real beta[4];
  real<lower = 0> sigma;
  real<lower = 0, upper = min(rt)> T_nd;
  vector<lower = 0>[N_re] tau_u;
  matrix[N_re, N_subj] z_u;
  cholesky_factor_corr[N_re] L_u;
}
transformed parameters {
  matrix[N_subj, N_re] u;
  u = (diag_pre_multiply(tau_u, L_u) * z_u)';
  }
model {
  real log_lik[N];
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .5);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(T_nd | 150, 100)
    - log_diff_exp(normal_lcdf(min(rt) | 150, 100),
                   normal_lcdf(0 | 150, 100));
  target += normal_lpdf(tau_u | .1, .1)
    - N_re * normal_lccdf(0 | .1, .1);
  target += lkj_corr_cholesky_lpdf(L_u | 2);
  target += std_normal_lpdf(to_vector(z_u));
  for(n in 1:N){
    real T = rt[n] - T_nd;
    real mu[2] = {alpha[1] + u[subj[n], 1] -
                    c_lex[n] * (beta[1] + u[subj[n], 2]) -
                    c_lfreq[n] * (beta[2] + u[subj[n], 3]),
                    alpha[2] + u[subj[n], 4] -
                    c_lex[n] * (beta[3] + u[subj[n], 5]) -
                    c_lfreq[n] * (beta[4] + u[subj[n], 6])};
     log_lik[n] = lognormal_race2_lpdf(T | nchoice[n], mu, sigma);
  }
  target += sum(log_lik);
}
generated quantities {
  corr_matrix[N_re] rho_u = L_u * L_u';
}
