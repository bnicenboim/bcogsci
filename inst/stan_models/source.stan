data {
  int<lower = 1> N;
  int<lower = 1, upper = 3> source[N];
  int response[N, 3];
  int<lower = 0> K; // number of predictors
  matrix[N, K] X; // model matrix
  int<lower = 1> N_subj;
  int<lower = 1, upper = N_subj> subj[N];
}
transformed data {
  int N_p = 5; //Number of latent parameters
}
parameters {
  real D1_alpha;
  real D2_alpha;
  real d_alpha;
  real b_alpha;
  real g_alpha;
  vector[K] D1_beta;
  vector[K] D2_beta;
  vector[K] d_beta;
  vector[K] b_beta;
  vector[K] g_beta;
  vector<lower = 0>[N_p] tau_u; // 5 parameters
  matrix[N_p, N_subj] z_u;
  cholesky_factor_corr[N_p] L_u;
}
transformed parameters {
  simplex[3] theta[N]; // 3 possible responses
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
  target += normal_lpdf(D1_alpha | 0, 3);
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
