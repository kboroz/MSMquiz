# Clear graphics and data
graphics.off()
rm(list = ls())

# Load Packages
library(fGarch)

# Left Skewed
r = rsnorm(n = 1e+05, xi = 2)

# Plot the distribution
hist(r, n = 100, probability = TRUE, border = "white", col = "red", main = "Left Skewed Dist.")
box()

# Compute the density
d = density(r)
lines(d, lwd = 2, col = "blue")

# Right Skewed distribution 
rr = rsnorm(n = 1e+05, xi = -2)

# Plot the given distribution and correspondent Histogram
hist(rr, n = 100, probability = TRUE, border = "white", col = "green", 
     main = "Right Skewed Dist.")
box()

# Compute the density
dr = density(rr)
lines(dr, lwd = 2)



