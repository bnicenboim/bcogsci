data {
  int<lower = 1> N;
  array[N] int correct;
  vector[N] c_set_size;
}
parameters {
  real alpha;
  real beta;
}
model {
  target += normal_lpdf(alpha | 6, 1.5);
  target += normal_lpdf(beta | 0, 0.1);
  target += bernoulli_lpmf(correct |Phi(alpha + c_set_size * beta));
}
generated quantities {
  vector[N] correct_pred;
  for(n in 1:N)
    correct_pred[n] = bernoulli_rng(Phi(alpha + c_set_size[n] * beta));
}
