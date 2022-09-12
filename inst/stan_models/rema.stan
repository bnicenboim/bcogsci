data {
	int<lower=0> N; //number of studies
	array[N] real y; // estimated effect
	array[N] real<lower=0> sigma; // SEs of effect
}
parameters{
	real theta; //population mean
	array[N] real theta_i; //separate mean for each study
	real<lower=0> tau;  // between study variability
}
model {
//priors
theta ~ normal(0,100);
theta_i ~ normal(0,100);
tau ~ cauchy(0,1);

for(i in 1:N){
y[i] ~ normal(theta_i[i],sigma[i]);
theta_i[i] ~ normal(theta,tau);
}
}
