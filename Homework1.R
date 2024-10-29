library(dslabs)

## Section 1

## Question 1
## Setting the total number of summation
n <- 100

seq <- seq(1, n, 1)
sum <- n*(n+1)/2

print(sum)

## Question 2
n <- 1000
seq <- seq(1, n, 1)
sum <- n*(n+1)/2

print(sum)

## Question 4
log(sqrt(100), base = 10)

## Question 5
a <- sum(1/seq(1,100)**2)
print(a)

b <- pi**2 / 6
print(b)

difference <- a - b
print(difference)

## Section 2

## Question 1
data("murders")
str(murders)

## Question 2
names(murders)
colnames(murders)

## Question 3
a <- murders$abb
print(a)
class(a)

## Question 4
b <- length(levels(murders$region)) ## levels() function is used to get the unique values of a factor
print(b)

## Question 5
table(murders$region) ## table() function is used to get the frequency of each unique value of a factor

## Question 6
pop_num <- murders$population
murd_num <- murders$total

percent_murd <- murd_num/pop_num*100
state_high_murd <- murders$state[which.max(percent_murd)]

print(state_high_murd)

## Section 3
## Question 1
temp <- c(35, 88, 42, 84, 81, 30)
temp

## Question 2
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

## Question 3
names(temp) <- city
temp

## Question 4
temp[1:3]

## Question 5
temp[c("Paris", "San Juan")]

## Question 6
seq <- seq(12, 73, 1)
seq

## Question 7
v <- seq(1, 100, 2)
v

## Question 8
v <- seq(6, 55, 4/7)
length(v)

## Question 9
a <- seq(1, 10, 0.5)
class(a)

## Question 10
a <- seq(1, 10)
class(a)

## R has class: integer, numeric, character, logical, complex, list, data.frame, matrix, array, factor, date, POSIXct, POSIXlt, ts, and function.

## Section 4
library(dslabs)
data("murders")

## Question 1
pop <- murders$population
pop <- sort(pop)
pop[1]
min(pop)

## Question 2
pop <- murders$population
pop <- order(pop)
pop[1]

## Question 3
which.min(murders$population)

## Question 4
murders$state[which.min(murders$population)]

## Question 5
ranks <- rank(murders$population)
my_def <- data.frame(state = murders$state, population = murders$population, rank = ranks)
head(my_def)


## Section 5
## Question 1
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro","San Juan", "Toronto")
names(temp) <- city

temp_c <- (temp - 32) * 5/9
temp_c

## Question 2
data("na_example")
str(na_example)

mean(na_example) ## The is.na function returns a logical vector that tells us which entries are NA

ind <- is.na(na_example)
table(ind)

## Question 3
mean(na_example, na.rm = TRUE)
mean(na_example[!ind])

## Section 6
sort(factor(c("red", "green", "blue")))
## This factor is created without specifying the levels, so the levels are sorted by alphabetical order.

sort(factor(c("red", "green", "blue"), levels = c("red", "green", "blue")))
## This factor is created with the levels specified, so the levels are sorted by the order of the levels specified.
