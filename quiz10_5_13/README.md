[<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/banner.png" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **Quiz 10** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of QuantLet : NMMSQ10

Published in : Null

Description : 'An example of random variables nor following asymptotic normality,
for this specific example a Cauchy set of random variables was selected and its 
asymptotic behavior compared with both Binomial and normal distributions'.

Keywords : 'Asymptotic normal distribution, Graphical Representation, Random Variables,
Cauchy, Binomial, pdf'

Author : Luis Alejandro Sarmiento Abogado

Submitted : Tue, December 02 2015 by Luis Alejandro Sarmiento Abogado

Datafile : Null
```
![Q_image](https://github.com/xuxiu/MSMquiz/blob/master/quiz10_5_13/Quiz%2010.png?raw=true)

```r

## Clear history
rm(list = ls(all = TRUE))
graphics.off()

# Load Packages
library(MASS)
library(KernSmooth)

# Random generation of a bynomial distribution
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

```




`


