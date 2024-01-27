data {
  int<lower = 1> N;
  vector[N] x;
  vector[N] rt;
  array[N] int acc;
  vector[N] x2; //speed or accuracy emphasis
  int<lower = 0, upper = 1> onlyprior;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
  real<upper = alpha> gamma;
  real<lower = 0> sigma2;
  real<lower = 0, upper = 1> p_correct;
  real<lower = 0, upper = 1> p_btask;
  real beta_task;
}
model {
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .1);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(gamma | 6, 1)-
  normal_lcdf(alpha | 6, 1);
  target += normal_lpdf(sigma2 | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(beta_task | 0, 1);
  target += beta_lpdf(p_correct | 995, 5);
  target += beta_lpdf(p_btask | 8, 2);
  if(onlyprior != 1)
    for(n in 1:N){
      real lodds_task = logit(p_btask) + x2[n] * beta_task;
      target +=
        log_sum_exp(log_inv_logit(lodds_task)+
                 lognormal_lpdf(rt[n] | alpha + x[n] * beta, sigma) +
                 bernoulli_lpmf(acc[n] | p_correct),
                 log1m_inv_logit(lodds_task) +
                 lognormal_lpdf(rt[n] | gamma, sigma2) +
                 bernoulli_lpmf(acc[n] | .5));
    }
}
generated quantities {
  array[N] real rt_pred;
  array[N] real acc_pred;
  array[N] int z;
  for(n in 1:N){
    real lodds_task = logit(p_btask) + x2[n] * beta_task;
    z[n] = bernoulli_rng(inv_logit(lodds_task));
    if(z[n]==1){
      rt_pred[n] = lognormal_rng(alpha + x[n] * beta, sigma);
      acc_pred[n] = bernoulli_rng(p_correct);
    } else{
      rt_pred[n] = lognormal_rng(gamma, sigma2);
      acc_pred[n] = bernoulli_rng(.5);
    }
  }
}

