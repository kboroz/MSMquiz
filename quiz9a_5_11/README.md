[<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/banner.png" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **Quiz 9a** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

# Name of QuantLet : MSM

# Published in : MSMLLN

# Description : transformation of a random variable with a given mean
# and variance to an Asymptotic normal distribution with mean zero and
# variance 1.

# Keywords : 'Asymptotic Normal Distribution, Graphical Representation,
# Random Variables, pdf'

# Author : Luis Alejandro Sarmiento Abogado

# Submitted : Tue, December 02 2015 by Luis Alejandro Sarmiento Abogado

# Datafile : Null
```
![Q_image](https://cloud.githubusercontent.com/assets/15620386/11501374/e1df06d0-9833-11e5-95ff-c315ddf32885.png)

```r
# Clear graphics and data
graphics.off()
rm(list = ls())

# Generate a set of random variables.
random <- rnorm(n = 1e+05, mean = 2, sd = 0.5)

# Determine their correspondent mean and variance
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

```




`


