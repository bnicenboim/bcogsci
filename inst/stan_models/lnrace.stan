data {
  int<lower = 1> N;
  vector[N] lfreq;
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
  vector[N] T = rt - T_nd;
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .5);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(T_nd | 150, 100)
    - log_diff_exp(normal_lcdf(min(rt) | 150, 100),
                   normal_lcdf(0 | 150, 100));
  for(n in 1:N){
    if(nchoice[n] == 1)
      target += lognormal_lpdf(T[n] | alpha[1] -
                               c_lex[n] * beta[1] -
                               lfreq[n] * beta[2], sigma)  +
        lognormal_lccdf(T[n] | alpha[2] -
                        c_lex[n] * beta[3] -
                        lfreq[n] * beta[4], sigma);
    else
       target += lognormal_lpdf(T[n] | alpha[2] -
                                c_lex[n] * beta[3] -
                                lfreq[n] * beta[4], sigma) +
        lognormal_lccdf(T[n] | alpha[1] -
                        c_lex[n] * beta[1] -
                        lfreq[n] * beta[2], sigma);
  }
}
