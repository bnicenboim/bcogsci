functions {
  real exp_lpdf(vector x, real lambda){
    vector[num_elements(x)] lpdf = log(lambda) - lambda * x;
    return sum(lpdf);
  }
  real exp_icdf(real p, real lambda){
    return - log(1 - p) / lambda;
  }
  real exp_rng(real lambda){
    real u = uniform_rng(0, 1);
    return exp_icdf(u, lambda);
  }
}
data {
  int<lower = 1> N;
  vector[N] RT;
}
parameters {
  real<lower = 0> lambda;
}
model {
  target += normal_lpdf(lambda | 0, .1) -
    normal_lccdf(0 | 0, .1);
  target += exp_lpdf(RT | lambda);
}
generated quantities {
  real rt_pred[N];
  for (n in 1:N)
    rt_pred[n] = exp_rng(lambda);
}
