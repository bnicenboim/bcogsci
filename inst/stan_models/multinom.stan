data {
  int<lower = 1> N_trials;
  int<lower = 0,upper = N_trials> ans[5];
}
parameters {
  simplex[5] theta;
}
model {
  target += dirichlet_lpdf(theta | rep_vector(2, 5));
  target += multinomial_lpmf(ans | theta);
}
generated quantities{
  int pred_ans[5] = multinomial_rng(theta, 5);
}

