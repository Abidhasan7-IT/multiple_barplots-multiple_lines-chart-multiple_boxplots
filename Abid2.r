

                                               # A B I D  H A S A N 2

 #using ggplot2 package multiple barplots:
#install.packages(ggplot2)

library(ggplot2)

Number<- c(12,22,11,26,10,20,21,18)
Gender<-c("Male","Female","Male","Female","Female","Male","Female","Male")
friend_or_not<-c("Unknown","Friend","Unknown","Friend","Unknown","Friend","Unknown","Friend")

store<- data.frame(Number,Gender,friend_or_not)
ggplot(store,aes(Gender,Number,fill=friend_or_not)) + geom_bar(stat = "identity",position = "dodge")
  labs(title="multiple Bar plots",col="green")

  
#using the package barport():

s1<- c(10,2,5,4,6,5,8,10,5,9)
s2<- c(9,5,6,4,7,1,2,6,2,6)
s3<- c(4,2,9,4,3,5,7,10,10,3)

abid<- data.frame(s1,s2,s3)
barplot(as.matrix(abid),main = "Multiple_Bar_plots",ylab = "Count",beside= TRUE,col = rainbow(length(abid)))


#multiple lines chart: 

N<- c(12,22,11,26,10,20,21,18)
G<- c(10,14,19,25,11,21,20,10)

plot(N,type= "o",col="green", xlab="Month",ylab="Rain_Fall", main= "Rain_line_Chart:")
lines(G,type= "o", col= "red")


# Multiple boxplots():


str(trees)
str(airquality)
boxplot(trees,airquality,
        main="Multiple_boxplots_for_comparision",xlab="Number", ylab="Product", border = "black", horizontal = TRUE,notch = TRUE,
        col=c("green","red")
        )

# how i doing with number or value using multiple boxplots()?
# boxplot graph for the relation between mpg (miles per gallon) and cyl (number of cylinders):

input <- mtcars[,c('mpg','cyl')]
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage_Data:",
        notch = TRUE, #notch is a logical value. Set as TRUE to draw a notch
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)





