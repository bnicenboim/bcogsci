data {
  int<lower = 1> N;
  int<lower = 1> N_subj;
  vector[N] c_lfreq;
  vector[N] c_lex;
  vector[N] rt;
  array[N] int nchoice;
  array[N] int subj;
}
transformed data{
  real min_rt = min(rt);
  real max_rt = max(rt);
  int N_re = 6;
}
parameters {
  array[2] real alpha;
  array[4] real beta;
  real<lower = 0> sigma;
  real<lower = 0> T_0;
  real<lower = 0, upper = .1> theta_c;
  vector<lower = 0>[N_re] tau_u;
  matrix[N_subj, N_re] u;
}
model {
}
generated quantities {
  array[N] real rt_pred;
  array[N] real nchoice_pred;
  for(n in 1:N){
    real T = rt[n] - T_0;
    array[2] real mu = {alpha[1] + u[subj[n], 1] -
                    c_lex[n] * (beta[1] + u[subj[n], 2]) -
                    c_lfreq[n] * (beta[2] + u[subj[n], 3]),
                    alpha[2] + u[subj[n], 4] -
                    c_lex[n] * (beta[3] + u[subj[n], 5]) -
                    c_lfreq[n] * (beta[4] + u[subj[n], 6])};
    real cont = bernoulli_rng(theta_c);
    if(cont == 1){
      rt_pred[n] = uniform_rng(min_rt, max_rt);
      nchoice_pred[n] = bernoulli_rng(0.5) + 1;
    } else {
      real accum1 = lognormal_rng(mu[1], sigma);
      real accum2 = lognormal_rng(mu[2], sigma);
      rt_pred[n] = fmin(accum1, accum2) + T_0;
      nchoice_pred[n] = (accum1 > accum2) + 1;
    }
  }
}
