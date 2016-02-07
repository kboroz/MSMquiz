# Clear graphics and data
graphics.off()
rm(list = ls())

# Generate a set of random variables following a normal distribution.
random = rnorm(n = 1e+05, mean = 2, sd = 0.5)

# Determine their correspondent mean, standard deviation and variance.
mu  = mean(random)
sd  = sd(random)
var = var(random)

# Set the transformation function.
Y = function(mu, sd, random) {
  (random - mu)/sd
}

# Compute the new set of random variables under standard normal
# distribution.
X = (random - mu)/sd

# Determine the mean and variance of our transformation
mean(X)
var(X)

# Plot the results graphically to prove that X is asymptotically normal
# distributed

# Plot initial distribution
plot(density(random), col = "red", xlim = c(-3, 4), ylim = c(0, 1), lwd = 2, 
     main = "Densities comparison", xlab = "")

# Plot Transformation
lines(density(X), col = "blue", lwd = 2)

# Set the legend to differentiate
legend("topleft", legend = c("Standard Normal Distribution", "Initial Distribution"), 
       lty = 1, col = c("blue", "red"), cex = 0.9)
dev.off()
