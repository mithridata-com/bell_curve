library(ggplot2)

# Parameters
mu <- 0  # Mean for the normal distribution
sigma <- 1  # Standard deviation for the normal distribution
df <- 3  # Degrees of freedom for the t-distribution (lower = fatter tails)

# Generate data
x <- seq(-4, 4, by = 0.01)
normal_dist <- dnorm(x, mean = mu, sd = sigma)
tdist <- dt((x - mu) / sigma, df = df) / sigma

# Data frame for plotting
data <- data.frame(x = x, Normal = normal_dist, TDist = tdist)

# Plot
ggplot(data, aes(x = x)) +
  geom_line(aes(y = Normal, color = "Normal Distribution")) +
  geom_line(aes(y = TDist, color = "T-Distribution")) +
  labs(title = "Normal vs. Fat-Tailed (T) Distribution",
       x = "Value",
       y = "Density") +
  scale_color_manual(values = c("Normal Distribution" = "blue", "T-Distribution" = "red")) +
  theme_minimal() +
  theme(legend.title = element_blank())
