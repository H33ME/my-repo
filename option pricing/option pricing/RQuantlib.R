#time for maturity is 0.5
#dividend rate is 0
#time steps is 90
#risk free rate is 0.06
#strike rate is 95
#initial option price is 100
# Volatility rate is 0.2


#option price is american call
library(RQuantLib)

AmericanOption("call",strike=95,volatility = 0.5,dividendYield = 0,
               riskFreeRate = 0.06,maturity = 0.5,timeSteps = 90,underlying = 100)

AmericanOption("put",strike=95,volatility = 0.5,dividendYield = 0,
               riskFreeRate = 0.06,maturity = 0.5,timeSteps = 90,underlying = 100)

EuropeanOption(type = "call",strike=95,volatility = 0.5,dividendYield = 0,
               riskFreeRate = 0.06,maturity = 0.5,underlying = 100)

EuropeanOption(type="put",strike=95,volatility = 0.5,dividendYield = 0,
               riskFreeRate = 0.06,maturity = 0.5,underlying = 100)
# an european option array

underlying.seq<- seq(10,200,by=5)

volatility.seq<- seq(0.2,0.9,by=0.1)

euro.call.array<- EuropeanOptionArrays(type = "call",strike=95,volatility = volatility.seq,dividendYield = 0,
                                       riskFreeRate = 0.06,maturity = 0.5,underlying = underlying.seq)

oldpar<- par(no.readonly = TRUE)

par(mfrow=c(2,2),oma=c(5,0,0,0),mar=c(2,2,2,1))

plot(euro.call.array$parameters.underlying,euro.call.array$value[,1],
     type="n",main="option value",xlab="",ylab="")


for(i in 1:length(volatility.seq)){
  lines(euro.call.array$parameters.underlying,
        euro.call.array$value[,i],col=i)
}

plot(euro.call.array$parameters.underlying,euro.call.array$delta[,1],
type="n",main="option delta",xlab="",ylab="")

for(i in 1:length(volatility.seq)){
  lines(euro.call.array$parameters.underlying,
        euro.call.array$delta[,i],col=i)
}

plot(euro.call.array$parameters.underlying,euro.call.array$gamma[,1],
     type="n",main="option gamma",xlab="",ylab="")

for(i in 1:length(volatility.seq)){
  lines(euro.call.array$parameters.underlying,
        euro.call.array$gamma[,i],col=i)
}

plot(euro.call.array$parameters.underlying,euro.call.array$vega[,1],
     type="n",main="option vega",xlab="",ylab="")

for(i in 1:length(volatility.seq)){
  lines(euro.call.array$parameters.underlying,
        euro.call.array$vega[,i],col=i)
}

mtext(text=paste("Strike is 95,maturity is 6 months, risk free rate is 0.06",
                 "\nUnderlying price from",underlying.seq[1],"to",underlying.seq[length(underlying.seq)],
                 "\nVolatility from",volatility.seq[1],"to",volatility.seq[length(volatility.seq)]),side = 1,font = 1,outer = TRUE,
      padj=1)    
