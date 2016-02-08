# clear history
rm(list = ls(all = TRUE))
graphics.off()


lambda = 1
iqrratio = lambda * log(3)
firstquartile = log(4/3) / lambda
thirdquartile = log(4) / lambda

# plotting
cord.x = c(firstquartile,seq(firstquartile,thirdquartile,0.001),thirdquartile) 
cord.y = c(0,dexp(seq(firstquartile,thirdquartile,0.001), lambda),0) 
curve(dexp(x,lambda),xlim=c(0,3), ylim=c(0,5),main=paste('lambda =',toString(lambda), ',  IQR/SD =', sprintf('%.1f',iqrratio)), ylab='exponential density') 
polygon(cord.x,cord.y,col='skyblue')

