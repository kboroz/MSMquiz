# Clear graphics and data
graphics.off()
rm(list = ls())

# Load Packages
library(fGarch)

# Right Skewed
r = rsnorm(n = 1e+05, xi = 2)

# Plot the distribution
png(filename = "Quiz two a.png", height = 300)
hist(r, n = 100, probability = TRUE, border = "white", col = "red", main = "Right Skewed Dist.")
box()
dev.off()

# Compute the density
d = density(r)
lines(d, lwd = 2, col = "blue")
dev.off()

# Left Skewed distribution 
rr = rsnorm(n = 1e+05, xi = -2)

# Plot the given distribution and correspondent Histogram
png(filename = "Quiz two b.png", height = 300)
hist(rr, n = 100, probability = TRUE, border = "white", col = "green", 
     main = "Left Skewed Dist.")
box()

dev.off()
# Compute the density
dr = density(rr)
lines(dr, lwd = 2)

dev.off()




