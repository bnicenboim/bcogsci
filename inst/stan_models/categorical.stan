data {
  int<lower = 1> N_obs;
  array[N_obs] int<lower = 1, upper = 5> w_ans;
}
parameters {
  simplex[5] theta;
}
model {
  target += dirichlet_lpdf(theta | rep_vector(2, 5));
  for(n in 1:N_obs)
    target += categorical_lpmf(w_ans[n] | theta);
}
generated quantities{
  array[N_obs] int pred_w_ans;
  for(n in 1:N_obs)
    pred_w_ans[n] = categorical_rng(theta);
}

