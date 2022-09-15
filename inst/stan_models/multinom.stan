data {
  int<lower = 1> N_trials;
  array[5] int<lower = 0,upper = N_trials> ans;
}
parameters {
  simplex[5] theta;
}
model {
  target += dirichlet_lpdf(theta | rep_vector(2, 5));
  target += multinomial_lpmf(ans | theta);
}
generated quantities{
  array[5] int pred_ans = multinomial_rng(theta, N_trials);
}

