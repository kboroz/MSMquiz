# Clear graphics and data
graphics.off()
rm(list = ls())

# Load Packages
library(MASS)
library(KernSmooth)

# Random generation of a bynomial distribution.
p = 0.5
n = 1000

# Random generation of the binomial distribution with parameters 1000*n
# and p

bsample = rbinom(n * 1000, 1, p)

# Create a matrix of binomial random variables

bsamplem = matrix(bsample, n, 1000)

# Compute kernel density estimate

bden = bkde((colMeans(bsamplem) - p)/sqrt(p * (1 - p)/n))

# Proceed to plot the three distributions
plot(bden, col = "blue3", type = "l", lty = 1, lwd = 1, xlab = "", ylab = "Density", 
     main = "Cauchy, Normal and Binomial distributions bahavior", cex.lab = 1, 
     cex.axis = 1, ylim = c(0, 0.45))

plot(dnorm, -4, 4, n = 1000, col = "Green", add = TRUE)

plot(dcauchy, -4, 4, n = 1000, col = "red", add = TRUE)

# Set the legend to differentiate
legend("topleft", legend = c("Binomial Distribution", "Normal Distribution", 
                             "Cauchy Distribution"), lty = 1, col = c("blue", "green", "red"), cex = 0.9)





