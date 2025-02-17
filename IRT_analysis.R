# Load necessary libraries
install.packages("mirt")  # Run only if you haven't installed it
library(mirt)

# Simulate some response data for a simple IRT model
set.seed(123)
n_items <- 10   # Number of test items
n_people <- 200  # Number of respondents
responses <- matrix(sample(0:1, n_items * n_people, replace = TRUE), nrow = n_people, ncol = n_items)

# Fit a 1-parameter logistic (1PL) IRT model
irt_model <- mirt(responses, 1)

# Display summary of the model
summary(irt_model)

# Plot item characteristic curves
plot(irt_model, type = "trace")
