data {
  int<lower=1> N;
  vector[N] x;
  vector[N] SE_x;
  vector[N] y;
  vector[N] SE_y;
}
parameters {
  real alpha;
  real beta;
  real chi;
  real<lower = 0> sigma;
  real<lower = 0> tau;
  vector[N] z;
}
transformed parameters {
  vector[N] x_true = z * tau + chi;
}
model {
  target += normal_lpdf(x | x_true, SE_x);
  target += normal_lpdf(y | alpha + beta * x_true,
                        sqrt(square(SE_y) + square(sigma)));
  target += std_normal_lpdf(z);
  target += normal_lpdf(alpha | 0, 0.5);
  target += normal_lpdf(beta | 0, 0.5);
  target += normal_lpdf(chi | 0, 0.5);
  target += normal_lpdf(sigma| 0, 0.5)
    - normal_lccdf(0 | 0, 0.5);
  target += normal_lpdf(tau | 0, 0.5)
    - normal_lccdf(0 | 0, 0.5);
}
