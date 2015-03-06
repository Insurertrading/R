library(psych)
library(ggplot2)
library(dplyr)
library(GGally)

d <- cars
glimpse(d)

fit <- lm ( dist ~ speed, d)
report <- summary(fit)
describe (fit)

d2 <- mutate(d, speed=1.67*speed, dist=0.3*dist, ratio=dist/speed)
head(d2)

qplot(data=d2, speed, dist, xlab="длина тормозного пути, м", ylab="Кол-во машин", main='Данные 1920х годов') + stat_smooth(method="lm")


t<-swiss
glimpse(t)
describe(t)
ggpairs(t)
