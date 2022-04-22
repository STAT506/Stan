data {
  int<lower=1> n1; // number of observations in group 1
  vector[n1] y1; // observations from group 1
  int<lower=1> n2; // number of observations in group 1
  vector[n2] y2; // observations from group 1
  
}
parameters {
  real<lower=0> sigma1; // variance parameter
  real<lower=0> sigma2; // variance parameter
  real<lower=0> mu1; // group 1 mean 
  real<lower=0> mu2; // group 2 mean 
}
transformed parameters{
  real diff;
  diff = mu1 - mu2;
}
model {
  y1 ~ normal(mu1, sigma1);
  y2 ~ normal(mu2, sigma2);
}

