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
![Q_image](https://github.com/xuxiu/MSMquiz/blob/master/quiz9a_5_11/Quiz%209a.png?raw=true)

```r
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


```




`


