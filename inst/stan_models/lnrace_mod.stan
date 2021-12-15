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
  vector[N] c_lfreq;
  vector[N] c_lex;
  vector[N] rt;
  int nchoice[N];
}
parameters {
  real alpha[2];
  real beta[4];
  real<lower = 0> sigma;
  real<lower = 0, upper = min(rt)> T_nd;
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
for(n in 1:N){
    real T = rt[n] - T_nd;
    real mu[2] = {alpha[1]  -
                    c_lex[n] * beta[1]  -
                    c_lfreq[n] * beta[2],
                    alpha[2]  -
                    c_lex[n] * beta[3] -
                    c_lfreq[n] * beta[4]};
    log_lik[n] = lognormal_race2_lpdf(T | nchoice[n], mu, sigma);
  }
  target += sum(log_lik);
}
