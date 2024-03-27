# Load necessary library
library(ggplot2)

# Define mean and standard deviation
mean <- 0
sd <- 1

# Generate data for the normal curve
curve_data <- data.frame(x = seq(-4, 4, by = 0.01))
curve_data$y <- dnorm(curve_data$x, mean = mean, sd = sd)

# Plot the curve
ggplot(curve_data, aes(x = x, y = y)) +
  geom_line() +
  stat_function(fun = dnorm, args = list(mean = mean, sd = sd), geom = "area", fill = "blue", alpha = 0.1, xlim = c(-3, 3)) +
  stat_function(fun = dnorm, args = list(mean = mean, sd = sd), geom = "area", fill = "green", alpha = 0.2, xlim = c(-2, 2)) +
  stat_function(fun = dnorm, args = list(mean = mean, sd = sd), geom = "area", fill = "red", alpha = 0.3, xlim = c(-1, 1)) +
  geom_text(aes(x = -1, y = 0.05), label = "1\u03C3", size = 5) +
  geom_text(aes(x = -2, y = 0.05), label = "2\u03C3", size = 5) +
  geom_text(aes(x = -3, y = 0.05), label = "3\u03C3", size = 5) +
  geom_text(aes(x = 1, y = 0.05), label = "1\u03C3", size = 5) +
  geom_text(aes(x = 2, y = 0.05), label = "2\u03C3", size = 5) +
  geom_text(aes(x = 3, y = 0.05), label = "3\u03C3", size = 5) +
  labs(title = "Normal Distribution Curve with 1, 2, 3\u03C3 Areas",
       x = "Standard Deviations (\u03C3) from Mean", y = "Density") +
  theme_minimal()
