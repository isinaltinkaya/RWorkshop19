###########################
# 1. Hello world
###########################
print("Hello, world!")

###########################
# 2. R as a calculator
###########################
1+1
100-20
4*6
10^2
100/4
sqrt(2)
log2(2) 
?log2

###########################
# 3. Variables
###########################
num <- 2
num

n = 7.45

###########################
# 4. Vectors
###########################
c(1,3,6,8,13)
x <- c(1,3,6,8,13)
x

# create another vector, y.
y <- c(2,5,4,7,12)
y

x[5]

vector1 <- c("hi","how","are","you")

1:10
values <- 1:10

mean(x)
median(x)
min(y)
max(y)

data.frame(x)
data.frame(y)
data.frame(x,y)
data.frame(y,x)

for (i in data.frame(x,y)) {
  print(max(i))
}

sum = 0
for (i in data.frame(x,y)) {
  sum = sum + max(i)
}
sum

max(x+y)

which(x==6)

#you can also use greater than (>), less than (<), greater than or equal to (>=), or less than or equal to (>=).
which(x<3)

which.min(y)
which.max(y)

#sample standard deviation
sd(x)

summary(x)

#correlation
cor(x,y)

length(y)
x==6

plot(x,y)

#note, the type="l" below is a lowercase L for line, not the number 1.
plot(x,y,type="l")

#plot() is a function, which can take many arguments. The arguments you give to plot will determine how the plot looks.
plot(x,y,col="blue")
plot(x,y,main="x vs. y")
plot(x,y,main="x vs. y", col="blue", pch=20)
plot(x,y,main="x vs. y", ylab="y label", xlab="x label", type="b", col="red")
?plot
?par

###########################
# 5. Using ggplot2
###########################

library(ggplot2)
data(iris)
View(iris)

# scatter plots
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+
  geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+
  geom_point()+
  theme_bw()+
  xlab("Sepal Length (mm)")+
  ylab("Petal Length (mm)")

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, color=Species))+
  geom_point()+
  theme_bw()+
  xlab("Sepal Length(mm)")+
  ylab("Petal Length(mm)")

# box and whisker plots
ggplot(iris, aes(x=Species, y=Petal.Length))+
  geom_boxplot()+
  xlab("Iris species")+
  ylab("Petal length (mm)")

ggplot(iris, aes(x=Species, y=Petal.Length))+
  geom_boxplot()+
  geom_point(size=2, color='blue', alpha=0.1)+
  xlab("Iris species")+
  ylab("Petal length (mm)")

ggplot(iris, aes (x=Sepal.Length))+
  geom_histogram()+
  xlab("Sepal Length (mm)")

ggplot(iris, aes (x=Sepal.Length))+
  geom_histogram(bins=10)+
  xlab("Sepal Length (mm)")

ggplot(iris, aes (x=Sepal.Length))+
  geom_histogram(bins=10)+
  xlab("Sepal Length (mm)")+
  facet_wrap(~Species)

# credits: github/mmarchin, Jennifer McMahon