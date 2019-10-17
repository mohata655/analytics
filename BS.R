#Data Strucutres in R
#Vectors-----
v1=10
v1
print(v1)
v2=1:100
v2
(v3=c(1,6,4,10)) # create and print
v4=seq(1,100,5)
v4
v5=c('A','Reshma',"IIFT")
v5
class(v5)
(v6=1:100000)
(v7=rnorm(100,mean=60,sd=10))
mean(v7)
sd(v7)
v7[1:10]
v7[seq(1,100,2)]
v7[v7>50]
v7[v7>70|v7<60]
mean(v7[v7>70|v7<60])
hist(v7)
plot(density(v7))
hist(v7,breaks=4)
quantile(v7)
summary(v7)
quantile(v7,seq(0,1,.1))
quantile(v7,seq(0,1,.01))
sort(v7)
sort(v7, decreasing=TRUE)

#Matrix----
(data=24:1)
v12=c(1,3,'a')
v12
v13=1:10
v13+2
v13^2
v13/sum(v13)
data
m1=matrix(data)
m1
(m2=matrix(data,nrow=4))
(m2=matrix(data,nrow=4,byrow=T))
?matrix
m2[1,]
m2[,1]
m2[,c(1,3)]
m2[c(1,4),c(2,4)]
m2
rowSums(m2)
colSums(m2)
rowMeans(m2)
colMeans(m2)
table(mtcars$cyl)
t1=table(mtcars$cyl,mtcars$gear,dnn=c('cyl','gear'))
margin.table(t1,margin=1)
margin.table(t1)         
addmargins(t1)         
addmargins(t1, FUN=mean)            
addmargins(t1, FUN=list(list(mean,sum),list(sd,var)))           
sweep(m2,MARGIN=1,STATS=4,FUN='+')    
sweep(m2,MARGIN=1,STATS=c(1,2,3,4),FUN='+') 


mtcars
data()
AirPassengers
class(mtcars)
head(mtcars,n=3)
dim(mtcars)
nrow(mtcars)
names(mtcars)
rownames(mtcars)
head(mtcars)
summary(mtcars)
mtcars[mtcars$gear==4, ]
mtcars[mtcars$gear==4 & mtcars$mpg<25,c('mpg','gear','cyl')]
mtcars[c(1,3,4),c(1,5)]       
mtcars
write.csv(mtcars,'reshma.csv')
read.csv('reshma.csv')
write.csv(mtcars,'reshma1.csv',row.names = F)
df2=read.csv('reshma1.csv')
head(df2)
(carnames=paste('car',1:32,sep=':'))
df2$cars=carnames
df2



#DataFrame----

(rollno=1:30)
(name=paste('student',1:30))
rep('m',3)
rep(c('m','f'),c(12,18))
(gender=sample(c('m','f'),size=30,replace=T,prob=c(.6,.4)))
table(gender)
prop.table(table(gender))
?sample
(marks=runif(30,min=50,max=100))

x=c(-14.45,-14.67,14.45,14.67)
trunc(x)
round(x,1)
floor(x)
ceiling(x)
(grades=sample(c('a','b','c'),size=30,replace=T,prob=c(.3,.45,.25)))
table(grades)
prop.table(table(grades))

rollno;name;gender;marks;grades
students=data.frame(rollno,name,gender,marks,grades)
head(students)
str(students)
summary(students)
students$name=as.character(students$name)
str(students)
summary(students)
students$grades=factor(students$grades, ordered=T)
students$grades
students$grades=factor(students$grades, ordered=T,levels=c('c','b','a'))
students$grades
table(students$grades)
barplot(table(students$grades),col=1:3)
hist(students$marks)
range(students$marks)
hist(students$marks,breaks=c(0,70,90,100))
students[students$gender=='m' & students$marks>70, ]
