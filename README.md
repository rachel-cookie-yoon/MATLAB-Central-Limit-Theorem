# MATLAB-Central-Limit-Theorem
I demonstrated the Central Limit Theorem in MATLAB.

Setup:
The demonstration starts with 6-sided die rolled 3000 times (a 30 x 100 "population" matrix).

Calculations:
- First, compute the mean and standard deviation of all 3,000 individual rolls, representing the original population data. 
- Second, reshape the original population data into a 30 x 100 matrix, representing 30 dice rolls in each of the 100 samples. Compute the sample mean for each of the 100 samples.
- Then, compute the mean and standard deviation of the 100 sample means.

Results:
- The code prints the population mean & standard deviation versus the sample mean & standard deviation.
- Notice that the two means are close in value, while the two standard deviations are quite different. The sample standard deviation is much smaller than the population standard deviation.

Histogram Plot:
I have plotted two histograms to illustrate the results. 
1. The raw population data looks roughly uniformly distributed.
2. The sample mean data approximates a bell-shaped, normal distribution.

Conclusion: Although the individual die rolls are uniformly distributed (not normal), the means of sufficiently large samples (n>=30) drawn from that population will approximate a normal distribution. 

