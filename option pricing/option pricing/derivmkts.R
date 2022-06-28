library(derivmkts)
s=100;k=95;v=0.2;r=0.06;tt=0.5;d=0
#american call option
binomopt(s, k, v, r, tt, d, nstep = 90, american = TRUE, putopt=FALSE, specifyupdn=FALSE, crr=TRUE, jarrowrudd=FALSE, up=1.5, dn=0.5, returntrees=FALSE, returnparams=FALSE, returngreeks=FALSE)
binomplot(s, k, v, r, tt, d, nstep=90, putopt=FALSE, american=TRUE, plotvalues=FALSE, plotarrows=FALSE, drawstrike=TRUE, pointsize=4, ylimval=c(0,0), saveplot = FALSE, saveplotfn='binomialplot.pdf', crr=TRUE, jarrowrudd=FALSE, titles=TRUE, specifyupdn=FALSE, up=1.5, dn=0.5, returnprice=FALSE, logy=FALSE)

#american put option
binomopt(s, k, v, r, tt, d, nstep = 90, american = TRUE, putopt=TRUE, specifyupdn=FALSE, crr=TRUE, jarrowrudd=FALSE, up=1.5, dn=0.5, returntrees=FALSE, returnparams=FALSE, returngreeks=FALSE)
binomplot(s, k, v, r, tt, d, nstep=90, putopt=TRUE, american=TRUE, plotvalues=FALSE, plotarrows=FALSE, drawstrike=TRUE, pointsize=4, ylimval=c(0,0), saveplot = FALSE, saveplotfn='binomialplot.pdf', crr=TRUE, jarrowrudd=FALSE, titles=TRUE, specifyupdn=FALSE, up=1.5, dn=0.5, returnprice=FALSE, logy=FALSE)

#european call option
binomopt(s, k, v, r, tt, d, nstep = 90, american = FALSE, putopt=FALSE, specifyupdn=FALSE, crr=TRUE, jarrowrudd=FALSE, up=1.5, dn=0.5, returntrees=FALSE, returnparams=FALSE, returngreeks=FALSE)
binomplot(s, k, v, r, tt, d, nstep=90, putopt=FALSE, american=FALSE, plotvalues=FALSE, plotarrows=FALSE, drawstrike=TRUE, pointsize=4, ylimval=c(0,0), saveplot = FALSE, saveplotfn='binomialplot.pdf', crr=TRUE, jarrowrudd=FALSE, titles=TRUE, specifyupdn=FALSE, up=1.5, dn=0.5, returnprice=FALSE, logy=FALSE)

#european put option
binomopt(s, k, v, r, tt, d, nstep = 90, american = FALSE, putopt=TRUE, specifyupdn=FALSE, crr=TRUE, jarrowrudd=FALSE, up=1.5, dn=0.5, returntrees=FALSE, returnparams=FALSE, returngreeks=FALSE)
binomplot(s, k, v, r, tt, d, nstep=900, putopt=TRUE, american=FALSE, plotvalues=FALSE, plotarrows=FALSE, drawstrike=TRUE, pointsize=4, ylimval=c(0,0), saveplot = FALSE, saveplotfn='binomialplot.pdf', crr=TRUE, jarrowrudd=FALSE, titles=TRUE, specifyupdn=FALSE, up=1.5, dn=0.5, returnprice=FALSE, logy=FALSE)
