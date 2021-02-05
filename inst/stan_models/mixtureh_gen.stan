data {
  int<lower = 1> N;
  vector[N] x;
  vector[N] rt;
  int acc[N];
  vector[N] x2; //speed or accuracy emphasis
  int<lower = 1> N_subj;
  int<lower = 1, upper = N_subj> subj[N];
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
  real<upper = alpha> gamma; //guessing
  real<lower = 0> sigma2;
  real<lower = 0, upper = 1> p_correct;
  real<lower = 0, upper = 1> p_btask;
  real beta_task;
  vector<lower = 0>[3]  tau_u;   
  matrix[3, N_subj] z_u;
  cholesky_factor_corr[3] L_u;
  matrix[N_subj, 3] u;
}
generated quantities {
  real rt_pred[N];
  real acc_pred[N];
  int z[N];
  for(n in 1:N){
    real lodds_task = logit(p_btask) + x2[n] * beta_task;
    z[n] = bernoulli_rng(inv_logit(lodds_task));
    if(z[n]==1){
      rt_pred[n] = lognormal_rng(alpha + u[subj[n],1] +
                                 x[n] * (beta + u[subj[n], 2]), sigma);
      acc_pred[n] = bernoulli_rng(p_correct);
    } else{
      rt_pred[n] = lognormal_rng(gamma + u[subj[n], 3], sigma2);
      acc_pred[n] = bernoulli_rng(.5);
    }
  }
}
