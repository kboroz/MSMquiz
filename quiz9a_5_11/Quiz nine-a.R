# Clear graphics and data
graphics.off()
rm(list = ls())

# Generate a set of random variables.
random <- rnorm(n = 1e+05, mean = 2, sd = 0.5)

# Determine their correspondent mean and variancehttps://github.com/saabogal/Quizzes-Mathematical-Statistics/tree/Quiz9a_p5_11/tree/Quiz9a_p5_11/Quiz9a_5_11
mu = mean(random)
sd = sd(random)

# Set the transformation function.
Y = function(mu, sd, random) {
  (random - mu)/sd
}
X = (random - mu)/sd

# Determine the mean and variance of our transformation
mean(X)
var(X)

# Plot the results graphically to prove that X is asymptotically normal
# distributed
plot(density(random), col = "red", xlim = c(-3, 4), ylim = c(0, .8), lwd = 2, 
     main = "Densities comparison")
lines(density(X), col = "blue", lwd = 2)
legend("topleft", legend = c("Transformation", "r.v"), lty = 1, col = c("blue", 
                                                                        "red"), cex = 0.9)


