#time for maturity tau is 0.5
#time steps M is 90
#risk free rate r is 0.06
#strike rate X is 95
#initial option price S0 is 100
# Volatility rate sigma is 0.2

library(NMOF)

#European call
S0=100; X=95; r=0.06; tau=0.5; sigma=0.2;M = 90
EuropeanCall(S0, X, r, tau, sigma, M )
EuropeanCallBE(S0, X, r, tau, sigma)             

#to calculate delta
h <- 1e-8 
C1 <- EuropeanCall(S0 = 100 + h, X = 95, r = 0.06, tau = 0.5, sigma = 0.2, M = 90) 
C2 <- EuropeanCall(S0 = 100 , X = 95, r = 0.06, tau = 0.5, sigma = 0.20, M = 90) 
(C1 - C2) / h

