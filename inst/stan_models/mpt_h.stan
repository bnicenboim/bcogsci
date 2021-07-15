data {
  int<lower = 1> N_obs;
  int<lower = 1,upper = 5> w_ans[N_obs];
  real complexity[N_obs];
  int<lower = 1> N_subj;
  int<lower = 1, upper = N_subj> subj[N_obs];
}
parameters {
  real<lower = 0, upper = 1> t;
  real<lower = 0, upper = 1> c;
  real alpha_a;
  real<lower = 0> tau_u_a;
  vector[N_subj] u_a;
  real alpha_f;
  real beta_f;
}
transformed parameters {
  simplex[5] theta[N_obs];
  for (n in 1:N_obs){
    real a = inv_logit(alpha_a + u_a[subj[n]]);
    real f = inv_logit(alpha_f + complexity[n] * beta_f);
    //Pr_NR
    theta[n, 1] = 1 - a;
    //Pr_Neologism
    theta[n, 2] = a * (1 - t) * (1 - f) * (1 - c) +
      a * t * (1 - f) * (1 - c);
    //Pr_Formal
    theta[n, 3] = a * (1 - t) * (1 - f) * c
      + a * t * (1 - f) * c;
    //Pr_Mixed
    theta[n, 4] = a * (1 - t) * f;
    //Pr_Correct
    theta[n, 5] = a * t * f;
  }
}
model {
  target += beta_lpdf(t | 2, 2);
  target += beta_lpdf(c | 2, 2);
  target += normal_lpdf(alpha_a | 0, 2);
  target += normal_lpdf(alpha_f | 0, 2);
  target += normal_lpdf(beta_f | 0, 2);
  target += normal_lpdf(u_a | 0, tau_u_a);
  target += normal_lpdf(tau_u_a | 0, 1) - normal_lccdf(0 | 0, 1);
  for(n in 1:N_obs)
    target +=  categorical_lpmf(w_ans[n] | theta[n]);
}
generated quantities{
  int<lower = 1, upper = 5> pred_w_ans[N_obs];
  for(n in 1:N_obs)
    pred_w_ans[n] = categorical_rng(theta[n]);
}
