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
num2 = 2
num

n = 7.45

###########################
# 4. Vectors
###########################
c(1,3,6,8,13)
x <- c(1,3,6,8,13)
x
# contains string
b = c(1.3, "GENEID")
b

# create another vector, y.
y <- c(2,5,4,7,12)
y
y[5]
x[5]

vector1 <- c("hi","how","are","you")

1:10

values <- 1:10

# variable
values

# string
"values"

mean(x)
median(x)
min(y)
max(y)

data.frame(x)
data.frame(y)
data.frame(x,y)
data.frame(y,x)

# remove variable
rm(n)

mydata = data.frame(x,y)
mydata

for (i in mydata) {
  print(max(i))
}

for (i in c(1,5,4)) {
  print("hello")
}
  
sum = 0

for (i in mydata) {
  sum = sum + max(i)
}

sum

max(x+y)

# is equal?
which(x==6)

# is not equal?
which(x!=6)

#you can also use greater than (>), less than (<), greater than or equal to (>=), or less than or equal to (>=).
which(x<6)
which(x<=6)

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

iris$Species

# scatter plots

ggplot(iris)

ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))

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
  ylab("Petal Length(mm)")+
  facet_wrap(~Species)


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

library(readxl)
dummyset1 <- read_excel("Rworkshop/RWorkshop19/dummyset1.xlsx", 
                          +     col_types = c("numeric", "numeric"))
View(dummyset1)

# credits: github/mmarchin, Jennifer McMahon