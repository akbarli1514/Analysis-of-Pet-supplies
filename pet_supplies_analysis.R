install.packages("dplyr")
install.packages("ggplot2")
install.packages("GGally")
# load required libraries
library(dplyr)
library(ggplot2)

# Load the data
pet_supplies <- read.csv("pet_supplies.csv")

# Summary statistics
# get the basic statistics such as mean, median, min, max, quartiles etc.
summary(pet_supplies)

# Distribution of products by category
# visualize the distribution of products by category using a bar chart
ggplot(data = pet_supplies) + 
  geom_bar(mapping = aes(x = category))

# Distribution of products by animal
# visualize the distribution of products by animal using a bar chart
ggplot(data = pet_supplies) + 
  geom_bar(mapping = aes(x = animal))

# Distribution of products by size
# visualize the distribution of products by size using a bar chart
ggplot(data = pet_supplies) + 
  geom_bar(mapping = aes(x = size))

# Distribution of repeat purchase
# visualize the distribution of repeat purchase using a bar chart
ggplot(data = pet_supplies) + 
  geom_bar(mapping = aes(x = repeat_purchase))

# Correlation matrix
# to understand the correlation between the numerical features
corr <- cor(pet_supplies[  , c("price", "sales", "rating")])
# print the correlation matrix
corr

# Scatter plot matrix
# visualize the scatter plot matrix of the numerical features
library(GGally)
ggpairs(pet_supplies[, c("price", "sales", "rating")])
