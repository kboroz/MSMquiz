#Close windows and clear variables                                                                   
graphics.off()
rm(list = ls(all=TRUE))  

num     = 100000
randvar = rnorm(n = num, mean = num, sd = sqrt(2*num))
mu      = mean(randvar)
sigma   = sd(randvar)

plot(density(randvar), col = "red", lwd = 2, main = "Densities of the r.v.")