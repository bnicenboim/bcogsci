data {
  int<lower=1> N_obs;
  array[N_obs] int<lower=1,upper=5> w_ans;
  array[N_obs] real complexity;
  array[N_obs] int subj;
  int N_subj;
}
parameters {
  real a_alpha;
  real t_alpha;
  real f_alpha;
  real f_beta;
  real c_alpha;
  array[5] vector[N_subj] z;
  array[5] real<lower=0> tau;
  // real<lower=0> tau_f_alpha;
  // real<lower=0> tau_f_beta;
  // real<lower=0> tau_a_alpha;
  // real<lower=0> tau_t_alpha;
  // real<lower=0> tau_c_alpha;
}
transformed parameters {
  array[N_obs] simplex[5] theta;
  vector[N_subj] u_f_alpha = z[1] * tau[1];
  vector[N_subj] u_f_beta = z[2] * tau[2];
  vector[N_subj] u_a_alpha =...;
  vector[N_subj] u_t_alpha = ...;
  vector[N_subj] u_c_alpha = ...;
  for(n in 1:N_obs){
    real f = inv_logit(f_alpha + u_f_alpha[subj[n]] + (f_beta + u_f_beta[subj[n]]) * complexity[n]);
    real a = inv_logit(a_alpha + u_a_alpha[subj[n]]);
    real t = inv_logit(t_alpha + u_t_alpha[subj[n]]);
    real c = inv_logit(c_alpha + u_c_alpha[subj[n]]);
    //Pr_NR:
    theta[n, 1] = 1 - a;
    //Pr_Neologism:
    theta[n, 2] = a * (1 - t) * (1 - f) * (1 - c) + a * t * (1 - f) * (1 - c);
    //Pr_Formal:
    theta[n, 3] = a * (1 - t) * (1 - f) * c +  a * t * (1 - f) * c;
    //Pr_Mixed:
    theta[n, 4] = a * (1 - t) * f;
    //Pr_Correct:
    theta[n, 5] = a * t * f;
  }
}
model {
  target += beta_lpdf(a | 2, 2);
  target += beta_lpdf(t | 2, 2);
  target += beta_lpdf(f | 2, 2);
  target += beta_lpdf(c | 2, 2);
  // target += normal_lpdf(u_f_alpha| 0, tau_f_alpha);
  // target += normal_lpdf(u_f_beta | 0, tau_f_beta);
  // target += normal_lpdf(u_a_alpha| 0, tau_a_alpha);
  // target += normal_lpdf(u_t_alpha| 0, tau_t_alpha);
  // target += normal_lpdf(u_c_alpha| 0, tau_c_alpha);
  for(n in 1:5)
    target += std_normal_lpdf(z[n])

  target += normal_lpdf(tau | 0 ,2);
  // target += normal_lpdf(tau_f_alpha| 0 ,2) ;
  // target += normal_lpdf(tau_f_beta| 0 ,2);
  // target += normal_lpdf(tau_a_alpha| 0 ,2);
  // target += normal_lpdf(tau_t_alpha| 0 ,2);
  // target += normal_lpdf(tau_c_alpha| 0 ,2);
  target += - 5 * normal_lccdf(0 | 0, 2);

  for(n in 1:N_obs)
    target += categorical_lpmf(w_ans[n] | theta[n]);
}
generated quantities{
	array[N_obs] int pred_w_ans;
  for(n in 1:N_obs)
    pred_w_ans[n] = categorical_rng(theta[n]);
}
