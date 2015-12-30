graphics.off()
rm(list = ls())

# Quiz 10: Show an example of a sequence of rv not following AN

library(MASS)
library(KernSmooth)

# I will proceed to generate three different distributions of random
# variables; Binomial, Normal and Cauchy in order to prove graphically
# that cauchy does not follow an Asymptotic normal distribution

p = 0.5
n = 1000

# Random generation of the binomial distribution with parameters 1000*n
# and 0.5

bsample  = rbinom(n * 1000, 1, 0.5)

# Create a matrix of binomial random variables

bsamplem = matrix(bsample, n, 1000)

# Compute kernel density estimate

bden = bkde((colMeans(bsamplem) - p)/sqrt(p * (1 - p)/n))

# Proceed to plot the three distributions

plot(bden, col = "blue3", type = "l", lty = 1, lwd = 1, xlab = "1000 Random Samples", 
     ylab = "Estimated and Normal Density", cex.lab = 1, cex.axis = 1, ylim = c(0, 
                                                                                0.45))

plot(dnorm,   -4, 4, n = 1000, col = "Green", add = TRUE)

plot(dcauchy, -4, 4, n = 1000, col = "red", add = TRUE)
