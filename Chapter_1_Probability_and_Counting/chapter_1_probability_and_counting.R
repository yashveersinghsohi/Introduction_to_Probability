# Factorials and Binomial Coefficients
###############################################################################
factorial(10)
# factorial(170) - Beyond this R will return InF only
choose(10, 4)
lfactorial(171)
lchoose(10000, 5000)
###############################################################################


# Sampling and Simulation
###############################################################################
n = 10; k = 5
sample(n, k)
sample(letters, 7)
sample(letters, 17, replace=T)
sample(4, 3, replace=T, prob=c(0.1, 0.2, 0.3, 0.4))
###############################################################################


# Matching Problem Simulation
###############################################################################
num_cards = 52
simulation = replicate(10^4, sum(sample(n) == (1:n)))
sum(simulation>=1)/10^4
###############################################################################


# Birthday Problem Simulation
###############################################################################
k = 23
prob = 1-((prod((365-k+1):365))/365^k)
pbirthday(23)
qbirthday(0.5)
pbirthday(23, coincident=3)
qbirthday(0.5, coincident=3)

b = sample(1:365, 23, replace=T)
tabulate(b)

simulation = replicate(10^4, max(tabulate(sample(1:365, 23, replace=T))))
sum(simulation>=2)/10^4
###############################################################################