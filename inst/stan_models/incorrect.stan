data {
  int<lower = 1> N;
  vector[N] rt;
  int correct[N];
}
parameters {
  real<lower = 0> sigma;
  real theta;
}
model {
  target += normal_lpdf(mu | 0, 20);
  target += lognormal_lpdf(sigma | 3, 1)
  for(n in 1:N)
    target += lognormal_lpdf(rt[n] | mu, sigma);
    target += bernoulli_lpdf(correct[n] | theta);
}
