# Multiple Linear Regression Model - MPG Regression:

# read csv file
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# generate multiple linear regression model
lm(mpg ~`vehicle length` + `spoiler angle` + `ground clearance` + AWD, data=MechaCar_mpg) 

# generate summary statistics
summary(lm(mpg ~`vehicle length` + `spoiler angle` + `ground clearance` + AWD, data=MechaCar_mpg)) 

# Suspension Coil Summary:

# read csv file
suspension_coil<-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# mean, median, variance, standard deviation 
mean(suspension_coil$PSI)
median(suspension_coil$PSI)
var(suspension_coil$PSI)
sd(suspension_coil$PSI)
sqrt(var(suspension_coil$PSI))# Convert variance to standard deviation

Coeff.Variation<-(sd(suspension_coil$PSI)/mean(suspension_coil$PSI))*100 #Coefficient of variation, as percent
Coeff.Variation

# Suspension Coil T-Test

#visualize distribution using density plot
ggplot(suspension_coil,aes(x=log(PSI))) + geom_density()

# #compare sample versus population means
t.test(suspension_coil$PSI,mu=1500)


# Design Your Own Study
