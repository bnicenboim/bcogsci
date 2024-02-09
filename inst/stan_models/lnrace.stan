data {
  int<lower = 1> N;
  vector[N] c_lfreq;
  vector[N] c_lex;
  vector[N] rt;
  array[N] int nchoice;
}
parameters {
  array[2] real alpha;
  array[4] real beta;
  real<lower = 0> sigma;
  real<lower = 0, upper = min(rt)> T_0;
}
model {
  vector[N] T = rt - T_0;
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .5);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(T_0 | 150, 100)
    - log_diff_exp(normal_lcdf(min(rt) | 150, 100),
                   normal_lcdf(0 | 150, 100));
  for(n in 1:N){
    if(nchoice[n] == 1)
      target += lognormal_lpdf(T[n] | alpha[1] -
                               c_lex[n] * beta[1] -
                               c_lfreq[n] * beta[2], sigma)  +
        lognormal_lccdf(T[n] | alpha[2] -
                        c_lex[n] * beta[3] -
                        c_lfreq[n] * beta[4], sigma);
    else
       target += lognormal_lpdf(T[n] | alpha[2] -
                                c_lex[n] * beta[3] -
                                c_lfreq[n] * beta[4], sigma) +
        lognormal_lccdf(T[n] | alpha[1] -
                        c_lex[n] * beta[1] -
                        c_lfreq[n] * beta[2], sigma);
  }
}
