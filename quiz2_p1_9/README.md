[<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/banner.png" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **Quiz 2** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of QuantLet : NMMS2

Published in : Null

Description : 'Plot right and leftskewed asymetric normal distributions' 

Keywords : 'Asymetric Normal Distribution, Skeweness, pdf, Histogram'

Author : Luis Alejandro Sarmiento Abogado

Submitted : Tue, December 02 2015 by Luis Alejandro Sarmiento Abogado

Datafile : Null
```
![Q_image](https://github.com/xuxiu/MSMquiz/blob/master/quiz2_p1_9/Quiz%20two%20a.png?raw=true)
![Q_image](https://github.com/xuxiu/MSMquiz/blob/master/quiz2_p1_9/Quiz%20two%20b.png?raw=true)

```r
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

```




`


