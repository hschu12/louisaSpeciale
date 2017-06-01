
# Read files
presults1 = read.csv('p-results.1.csv')
presults2 = read.csv('p-results.2.csv')
presults3 = read.csv('p-results.3.csvc')
presults4 = read.csv('p-results.4.csv')
presults5 = read.csv('p-results.5.csvc')
presults6 = read.csv('p-results.6.csvc')
presults7 = read.csv('p-results.7.csvc')
presults8 = read.csv('p-results.8.csv')
presults9 = read.csv('p-results.9.csv')
presults10 = read.csv('t-results.10.csv')
presults11 = read.csv('p-results.11.csv')

# Change factor into numerics
presults1$best.max.flow = as.numeric(levels(presults1$best.max.flow))[presults1$best.max.flow]
presults2$best.max.flow = as.numeric(levels(presults2$best.max.flow))[presults2$best.max.flow]
presults3$best.max.flow = as.numeric(levels(presults3$best.max.flow))[presults3$best.max.flow]
presults4$best.max.flow = as.numeric(levels(presults4$best.max.flow))[presults4$best.max.flow]
presults5$best.max.flow = as.numeric(levels(presults5$best.max.flow))[presults5$best.max.flow]
presults6$best.max.flow = as.numeric(levels(presults6$best.max.flow))[presults6$best.max.flow]
presults7$best.max.flow = as.numeric(levels(presults7$best.max.flow))[presults7$best.max.flow]
presults8$best.max.flow = as.numeric(levels(presults8$best.max.flow))[presults8$best.max.flow]
presults9$best.max.flow = as.numeric(levels(presults9$best.max.flow))[presults9$best.max.flow]
presults10$best.max.flow = as.numeric(levels(presults10$best.max.flow))[presults10$best.max.flow]
presults11$best.max.flow = as.numeric(levels(presults11$best.max.flow))[presults11$best.max.flow]

presults1$initial.max.flow = as.numeric(levels(presults1$initial.max.flow))[presults1$initial.max.flow]
presults2$initial.max.flow = as.numeric(levels(presults2$initial.max.flow))[presults2$initial.max.flow]
presults3$initial.max.flow = as.numeric(levels(presults3$initial.max.flow))[presults3$initial.max.flow]
presults4$initial.max.flow = as.numeric(levels(presults4$initial.max.flow))[presults4$initial.max.flow]
presults5$initial.max.flow = as.numeric(levels(presults5$initial.max.flow))[presults5$initial.max.flow]
presults6$initial.max.flow = as.numeric(levels(presults6$initial.max.flow))[presults6$initial.max.flow]
presults7$initial.max.flow = as.numeric(levels(presults7$initial.max.flow))[presults7$initial.max.flow]
presults8$initial.max.flow = as.numeric(levels(presults8$initial.max.flow))[presults8$initial.max.flow]
presults9$initial.max.flow = as.numeric(levels(presults9$initial.max.flow))[presults9$initial.max.flow]
presults10$initial.max.flow = as.numeric(levels(presults10$initial.max.flow))[presults10$initial.max.flow]
presults11$initial.max.flow = as.numeric(levels(presults11$initial.max.flow))[presults11$initial.max.flow]

# Remove empty rows
NA_list = list()
for (i in 1:nrow(presults1)) {
  if (is.na(presults1$best.max.flow[i])) {
    NA_list = c(NA_list, i)
    }   
}
removed = 0
for (j in NA_list){
  presults1 = presults1[-(j-removed),]
  presults2 = presults2[-(j-removed),]
  presults3 = presults3[-(j-removed),]
  presults4 = presults4[-(j-removed),]
  presults5 = presults5[-(j-removed),]
  presults6 = presults6[-(j-removed),]
  presults7 = presults7[-(j-removed),]
  presults8 = presults8[-(j-removed),]
  presults9 = presults9[-(j-removed),]
  presults10 = presults10[-(j-removed),]
  presults11 = presults11[-(j-removed),]
  removed = removed + 1
}

# Calculate percentage of best / initial max-flow and save to column percentage
percentage_sum1 = 0
percentage_sum2 = 0
percentage_sum3 = 0
percentage_sum4 = 0
percentage_sum5 = 0
percentage_sum6 = 0
percentage_sum7 = 0
percentage_sum8 = 0
percentage_sum9 = 0
percentage_sum10 = 0
percentage_sum11 = 0
for (i in 1:nrow(presults1)) {
  percentage1 = presults1$best.max.flow[i] / presults1$initial.max.flow[i]
  percentage2 = presults2$best.max.flow[i] / presults2$initial.max.flow[i]
  percentage3 = presults3$best.max.flow[i] / presults3$initial.max.flow[i]
  percentage4 = presults4$best.max.flow[i] / presults4$initial.max.flow[i]
  percentage5 = presults5$best.max.flow[i] / presults5$initial.max.flow[i]
  percentage6 = presults6$best.max.flow[i] / presults6$initial.max.flow[i]
  percentage7 = presults7$best.max.flow[i] / presults7$initial.max.flow[i]
  percentage8 = presults8$best.max.flow[i] / presults8$initial.max.flow[i]
  percentage9 = presults9$best.max.flow[i] / presults9$initial.max.flow[i]
  percentage10 = presults10$best.max.flow[i] / presults10$initial.max.flow[i]
  percentage11 = presults11$best.max.flow[i] / presults11$initial.max.flow[i]
  
  presults1$percentage[i] = percentage1
  presults2$percentage[i] = percentage2
  presults3$percentage[i] = percentage3
  presults4$percentage[i] = percentage4
  presults5$percentage[i] = percentage5
  presults6$percentage[i] = percentage6
  presults7$percentage[i] = percentage7
  presults8$percentage[i] = percentage8
  presults9$percentage[i] = percentage9
  presults10$percentage[i] = percentage10
  presults11$percentage[i] = percentage11
  
  percentage_sum1 = percentage_sum1 + percentage1
  percentage_sum2 = percentage_sum2 + percentage2
  percentage_sum3 = percentage_sum3 + percentage3
  percentage_sum4 = percentage_sum4 + percentage4
  percentage_sum5 = percentage_sum5 + percentage5
  percentage_sum6 = percentage_sum6 + percentage6
  percentage_sum7 = percentage_sum7 + percentage7
  percentage_sum8 = percentage_sum8 + percentage8
  percentage_sum9 = percentage_sum9 + percentage9
  percentage_sum10 = percentage_sum10 + percentage10
  percentage_sum11 = percentage_sum11 + percentage11
  
} 

# Calculate average percentage for tests
average_percentage1 = percentage_sum1/nrow(presults1)
average_percentage2 = percentage_sum2/nrow(presults1)
average_percentage3 = percentage_sum3/nrow(presults1)
average_percentage4 = percentage_sum4/nrow(presults1)
average_percentage5 = percentage_sum5/nrow(presults1)
average_percentage6 = percentage_sum6/nrow(presults1)
average_percentage7 = percentage_sum7/nrow(presults1)
average_percentage8 = percentage_sum8/nrow(presults1)
average_percentage9 = percentage_sum9/nrow(presults1)
average_percentage10 = percentage_sum10/nrow(presults1)
average_percentage11 = percentage_sum11/nrow(presults1)

# Merge the tests 1
presults = do.call('rbind',list(presults1,presults2,presults3,presults4,presults5,presults6,presults7,presults8,presults9))

# Create boxplot of percentage max-flow remainig ~ p 
boxplot(percentage~probability.p,data=presults, main="p-values for Probabilistic Improvement", 
        xlab="p", ylab="Percentage remaining of max-flow")

# Merge the tests 2 (p = 0.05,0.1, 0.15, 0.2)
presults_final = do.call('rbind',list(presults10,presults4,presults11,presults6))

# Create boxplot of percentage max-flow remainig ~ p (p = 0.05,0.1, 0.15, 0.2)
boxplot(percentage~probability.p,data=presults_final, main="p-values for Probabilistic Improvement", 
        xlab="p", ylab="Percentage remaining of max-flow")

# Create boxplot of best max-flow ~ p 
boxplot(best.max.flow~probability.p,data=presults, main="p-values for Probabilistic Improvement", 
        xlab="p", ylab="Best max-flow of Local Search")

# Find average best max-flow values
sum1 = 0
sum2 = 0
sum3 = 0
sum4 = 0
sum5 = 0
sum6 = 0
sum7 = 0
sum8 = 0
sum9 = 0
for (i in 1:nrow(presults9)){
  sum1 = sum1 + presults1$best.max.flow[i]
  sum2 = sum2 + presults2$best.max.flow[i]
  sum3 = sum3 + presults3$best.max.flow[i]
  sum4 = sum4 + presults4$best.max.flow[i]
  sum5 = sum5 + presults5$best.max.flow[i]
  sum6 = sum6 + presults6$best.max.flow[i]
  sum7 = sum7 + presults7$best.max.flow[i]
  sum8 = sum8 + presults8$best.max.flow[i]
  sum9 = sum9 + presults9$best.max.flow[i]
}
avr1 = sum1/nrow(presults1)
avr2 = sum2/nrow(presults1)
avr3 = sum3/nrow(presults1)
avr4 = sum4/nrow(presults1)
avr5 = sum5/nrow(presults1)
avr6 = sum6/nrow(presults1)
avr7 = sum7/nrow(presults1)
avr8 = sum8/nrow(presults1)
avr9 = sum9/nrow(presults1)

avrp = c(average_percentage1,average_percentage2,average_percentage3,average_percentage4,average_percentage5,average_percentage6,average_percentage7,average_percentage8,average_percentage9)
avr = c(avr1,avr2,avr3,avr4,avr5,avr6,avr7,avr8,avr9)
p = c(0.6,0.7,0.5,0.2,0.8,0.1,0.9,0.3,0.4)

plot(p,avr,ylab='Average best max-flow value',main = 'p-values for Probabilistic Improvement')
plot(p,avrp,ylab='Average percentage remaining max-flow',main='p-values for Probabilistic Improvement')




#
# Split up between best max flow > 2000 or < 2000
#

# Split up between best max flow > 2000 or < 2000
biglist = list()
smalllist = list()
for (i in 1:nrow(presults)){
  if (presults$best.max.flow[i] >2000){
    biglist = c(biglist,i)  
  }
  else{
    smalllist = c(smalllist,i)
  }
}

# Create results where max flow > 2000
presult2000 = data.frame()
for (j in biglist){
  presult2000 = rbind(presult2000,presults[j,])
}

# Create results where max flow < 2000
removed = 0
for (j in biglist){
  presults = presults[-(j-removed),]
  removed = removed + 1
}

# Create boxplot of best max-flow ~ p 
boxplot(best.max.flow~probability.p,data=presults, main="p-values for Probabilistic Improvement", 
        xlab="p", ylab="Best max-flow of Local Search")





#
# Split up between best max flow > 200 or < 200
#

# Split up between best max flow > 200 or < 200
medlist = list()
smalllist = list()
for (i in 1:nrow(presults)){
  if (presults$best.max.flow[i] >200){
    medlist = c(medlist,i)  
  }
  else{
    smalllist = c(smalllist,i)
  }
}

# Create results where max flow > 200
presult200 = data.frame()
for (j in medlist){
  presult200 = rbind(presult200,presults[j,])
}

# Create results where max flow < 200
removed = 0
for (j in medlist){
  presults = presults[-(j-removed),]
  removed = removed + 1
}

# Create boxplot of best max-flow ~ p (SMALL)
boxplot(best.max.flow~probability.p,data=presults, main="p-values for Probabilistic Improvement (SMALL)", 
        xlab="p", ylab="Best max-flow of Local Search")

# Create boxplot of best max-flow ~ p (MED)
boxplot(best.max.flow~probability.p,data=presult200, main="p-values for Probabilistic Improvement (MEDIUM)", 
        xlab="p", ylab="Best max-flow of Local Search")

# Create boxplot of best max-flow ~ p (LARGE)
boxplot(best.max.flow~probability.p,data=presult2000, main="p-values for Probabilistic Improvement (LARGE)", 
        xlab="p", ylab="Best max-flow of Local Search")


