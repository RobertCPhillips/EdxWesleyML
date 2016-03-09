
data <- read.csv("titanic_train.csv")
summary(data)

data$Survived <- as.factor(data$Survived)

require("ggplot2")

g <- ggplot(data, aes(Survived))
g + geom_bar(aes(fill = Sex))

require(rpart)
require(rpart.plot)