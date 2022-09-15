data {
  int<lower = 1> N_trials;
  array[5] int<lower = 0, upper = N_trials> ans;
}
parameters {
  real<lower = 0, upper = 1> a;
  real<lower = 0, upper = 1> t;
  real<lower = 0, upper = 1> f;
  real<lower = 0, upper = 1> c;
}
transformed parameters {
  simplex[5] theta;
  theta[1] = 1 - a; //Pr_NR
  theta[2] = a * (1 - t) * (1 - f) * (1 - c) + a * t * (1 - f) * (1 - c); //Pr_Neologism
  theta[3] = a * (1 - t) * (1 - f) * c +  a * t * (1 - f) * c;  //Pr_Formal
  theta[4] = a * (1 - t) * f; //Pr_Mixed
  theta[5] = a * t * f; //Pr_Correct
}
model {
  target += beta_lpdf(a | 2, 2);
  target += beta_lpdf(t | 2, 2);
  target += beta_lpdf(f | 2, 2);
  target += beta_lpdf(c | 2, 2);
  target += multinomial_lpmf(ans | theta);
}
generated quantities{
	array[5] int pred_ans;
  pred_ans = multinomial_rng(theta, N_trials);
}
