#
# FINDING T_0
#

# Read file
deltas = read.csv('t-results.csv')

# Change factor into numerics
deltas$delta = as.numeric(levels(deltas$delta))[deltas$delta]

no_rows =nrow(deltas)
deltasum = 0
zeros = 0
for (i in 1:no_rows){
  if (deltas$delta[i] != 0){
    deltasum = deltasum + deltas$delta[i]
  }
  else {
    zeros = zeros + 1
  }
}

final_delta = deltasum/(no_rows-zeros)

T_0 = -final_delta/log(0.8)


#
# FINDING a
#

# Read files
a95 = read.csv('a-results.1.csv')
a99 = read.csv('a-results.2.csv')

# Change factor into numerics
a95$best.max.flow = as.numeric(levels(a95$best.max.flow))[a95$best.max.flow]
a99$best.max.flow = as.numeric(levels(a99$best.max.flow))[a99$best.max.flow]

a95$initial.max.flow = as.numeric(levels(a95$initial.max.flow))[a95$initial.max.flow]
a99$initial.max.flow = as.numeric(levels(a99$initial.max.flow))[a99$initial.max.flow]


# Remove empty rows
NA_list = list()
for (i in 1:nrow(a99)) {
  if (is.na(a99$best.max.flow[i])) {
    NA_list = c(NA_list, i)
  }   
}
removed = 0
for (j in NA_list){
  a95 = a95[-(j-removed),]
  a99 = a99[-(j-removed),]
  removed = removed + 1
}

# Calculate percentage of best / initial max-flow and save to column percentage
percentage_sum95 = 0
percentage_sum99 = 0
for (i in 1:nrow(a99)) {
  a95$percentage[i] = a95$best.max.flow[i] / a95$initial.max.flow[i]
  a99$percentage[i] = a99$best.max.flow[i] / a99$initial.max.flow[i]
  
  percentage_sum95 = percentage_sum95 + a95$percentage[i]
  percentage_sum99 = percentage_sum99 + a99$percentage[i]
}  

# Calculate average percentage for tests
average_percentage95 = percentage_sum95/nrow(a95)
average_percentage99 = percentage_sum99/nrow(a99)

# Merge the tests
a = do.call('rbind',list(a95,a99))

# Create boxplot of percentage max-flow remainig ~ a
boxplot(percentage~cooling.constant.a,data=a, main="Cooling constant a of Simulated Annealing", 
        xlab="a", ylab="Percentage remaining of max-flow")

# Create boxplot of best max-flow remainig ~ a
boxplot(best.max.flow~cooling.constant.a,data=a, main="Cooling constant a of Simulated Annealing", 
        xlab="a", ylab="Best max-flow values")


# Find average best max-flow values
sum1 = 0
sum2 = 0
for (i in 1:nrow(a99)){
  sum1 = sum1 + a95$best.max.flow[i]
  sum2 = sum2 + a99$best.max.flow[i]
}
avr1 = sum1/nrow(a99)
avr2 = sum2/nrow(a99)

avrp = c(average_percentage95,average_percentage99)
avr = c(avr1,avr2)
a = c(0.95,0.99)

plot(a,avr,ylab='Average best max-flow value',main = 'a-values for Simulated Annealing')
plot(a,avrp,ylab='Average percentage remaining max-flow',main='a-values for Simulated Annealing')







#
# Split up between best max flow > 2000 or < 2000
#

# Split up between best max flow > 2000 or < 2000
biglist = list()
smalllist = list()
for (i in 1:nrow(a)){
  if (a$best.max.flow[i] >2000){
    biglist = c(biglist,i)  
  }
  else{
    smalllist = c(smalllist,i)
  }
}

# Create results where max flow > 2000
a2000 = data.frame()
for (j in biglist){
  a2000 = rbind(a2000,a[j,])
}

# Create results where max flow < 2000
removed = 0
for (j in biglist){
  a = a[-(j-removed),]
  removed = removed + 1
}

# Create boxplot of best max-flow ~ a 
boxplot(best.max.flow~cooling.constant.a,data=presults, main="Cooling constant a for Simulated Annealing", 
        xlab="a", ylab="Best max-flow of Local Search")





#
# Split up between best max flow > 200 or < 200
#

# Split up between best max flow > 200 or < 200
medlist = list()
smalllist = list()
for (i in 1:nrow(a)){
  if (a$best.max.flow[i] > 200){
    medlist = c(medlist,i)  
  }
  else{
    smalllist = c(smalllist,i)
  }
}

# Create results where max flow > 200
a200 = data.frame()
for (j in medlist){
  a200 = rbind(a200,a[j,])
}

# Create results where max flow < 200
removed = 0
for (j in medlist){
  a = a[-(j-removed),]
  removed = removed + 1
}

# Create boxplot of best max-flow ~ a (SMALL)
boxplot(best.max.flow~cooling.constant.a,data=a, main="a-values for Simulated Annealing (SMALL)", 
        xlab="a", ylab="Best max-flow of Local Search")

# Create boxplot of best max-flow ~ a (MED)
boxplot(best.max.flow~cooling.constant.a,data=a200, main="a-values for Simulated Annealing (MEDIUM)", 
        xlab="a", ylab="Best max-flow of Local Search")

# Create boxplot of best max-flow ~ a (LARGE)
boxplot(best.max.flow~cooling.constant.a,data=a2000, main="a-values for Simulated Annealing (LARGE)", 
        xlab="a", ylab="Best max-flow of Local Search")



