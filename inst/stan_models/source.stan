data {
  int<lower = 1> N;
  array[N] int<lower = 1, upper = 3> source;
  array[N, 3] int response;
  int<lower = 0> K; // number of predictors
  matrix[N, K] X; // model matrix
  int<lower = 1> N_subj;
  array[N] int<lower = 1, upper = N_subj> subj;
}
transformed data {
  int N_p = 5; //Number of latent parameters
}
parameters {
  real alpha_D1;
  real alpha_D2;
  real alpha_d;
  real alpha_b;
  real alpha_g;
  vector[K] beta_D1;
  vector[K] beta_D2;
  vector[K] beta_d;
  vector[K] beta_b;
  vector[K] beta_g;
  vector<lower = 0>[N_p] tau_u; // 5 parameters
  matrix[N_p, N_subj] z_u;
  cholesky_factor_corr[N_p] L_u;
}
transformed parameters {
  array[N] simplex[3] theta; // 3 possible responses
  matrix[N_subj, 5] u = (diag_pre_multiply(tau_u, L_u) * z_u)';
  vector[N_subj] D1_u = u[, 1];
  vector[N_subj] D2_u = u[, 2];
  vector[N_subj] d_u = u[, 3];
  vector[N_subj] b_u = u[, 4];
  vector[N_subj] g_u = u[, 5];
  for (n in 1:N){
    real D1 = ....;
    real D2 = ....;
    real d = = ....;
    real b = = ....;
    real g = = ....;
    // assumed for identifiability:
    real a = g;
    // same discriminability for both sources:
    real d1 = d;
    real d2 = d;
    if(source[n] == 1){
    //Probability of a certain answer given that the stimuli is of source A:
    theta[n, 1] = D1 * d1 + D1 * (1 - d1) * a + (1 - D1) * b * g; //Pr A | A
    theta[n, 2] = ... ; //Pr B | A
    theta[n, 3] = ... ;  //Pr N | A
    } else if (source[n] == 2){
    //Probability of a certain answer given that the stimuli is of source B:
    theta[n, 1] = D2 *d2 + D2 * (1 - d2) * a + (1 - D2) * b * g; //Pr A | B
    theta[n, 2] = = ... ; //Pr B | B
    theta[n, 3] = ... ;  //Pr N | B
    } else {
    //Probability of a certain answer given that the stimuli is new:
    theta[n, 1] = ...; //Pr A | N
    theta[n, 2] = ...; //Pr B | N
    theta[n, 3] = ...;  //Pr N | N
    }
  }
}
model {
  // priors:
  (...)

  // for the intercept adjustment:
  target += lkj_corr_cholesky_lpdf(L_u | 2);
  target += std_normal_lpdf(to_vector(z_u));
  target += normal_lpdf(tau_u | 0, 2)  -
    N_p * normal_lccdf(0 | 0, 2);

  for(n in 1:N){
    target +=  multinomial_lpmf(response[n, ] | theta[n]);
  }
}
generated quantities {
  corr_matrix[N_p] rho_u = L_u * L_u';
}
