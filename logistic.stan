data {
  int <lower = 0> N; 
  int <lower = 0, upper = 1> y [N]; 
  vector [N] x; 
}

parameters {
  real alpha;
  real beta;
}

model {
  y ~ bernoulli_logit(alpha + beta * x);
  
  // alpha ~ normal(0, 1);
  // beta ~ normal(1, 1);
}
