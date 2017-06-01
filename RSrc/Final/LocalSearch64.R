#
# READ RESULTS
#


mem_rmat64 = read.csv('MEM-results.R-MAT64.extra.csv')
rmat64_1 = read.csv('results-R-MAT64.Allk.1.extra.csv')
rmat64_2 = read.csv('results-R-MAT64.Allk.2.extra.csv')


#
# CHANGE INTO NUMERICS
#

# Change factor into numerics
mem_rmat64$max.multirute.flow = as.numeric(levels(mem_rmat64$max.multirute.flow))[mem_rmat64$max.multirute.flow]

rmat64_1$m = as.numeric(levels(rmat64_1$m))[rmat64_1$m]
rmat64_2$m = as.numeric(levels(rmat64_2$m))[rmat64_2$m]


#
# RENAME COLUMNS
#

colnames(mem_rmat64)[7:9] = c('n','multiple','ex')
colnames(rmat64_1)[22:23] = c('multiple','ex')
colnames(rmat64_2)[22:23] = c('multiple','ex')

write.table(mem_rmat64, "mem_rmat64_first.csv",quote=FALSE, sep="\t")
write.table(rmat64_1, "rmat64_1_first.csv",quote=FALSE, sep="\t")
write.table(rmat64_2, "rmat64_2_first.csv",quote=FALSE, sep="\t")


#
# 64 RESULTS GRAPHS
#

# Find n and lower and upper bound and ratio1, ratio2 and best.ratio between them
# Save in mem_rmat64.
for (i in 1:900){ #nrow(mem_rmat64)){
  n = mem_rmat64$n[i]
  multiple = mem_rmat64$multiple[i]
  ex = mem_rmat64$ex[i]
  k = mem_rmat64$k[i]
  mem_rmat64$lower[i] = mem_rmat64$max.multirute.flow[i]/(mem_rmat64$k[i]+1)
  for (j in 1:nrow(rmat64_1)){
    # Set upper1 and 2
    if (rmat64_1$n[j] == n && rmat64_1$multiple[j] == multiple && rmat64_1$ex[j] == ex && rmat64_1$k[j] == k){
      mem_rmat64$upper1[i] = rmat64_1$best.max.flow[j]
    }
  }
  for (l in 1:nrow(rmat64_2)){
    if (rmat64_2$n[l] == n && rmat64_2$multiple[l] == multiple && rmat64_2$ex[l] == ex && rmat64_2$k[l] == k){
      mem_rmat64$upper2[i] = rmat64_2$best.max.flow[l]
    }
  }
  # Set ratio1 and 2
  if (mem_rmat64$upper1[i]>0){
    mem_rmat64$ratio1[i] = mem_rmat64$lower[i]/mem_rmat64$upper1[i]
  }
  else{
    mem_rmat64$ratio1[i] = NA
  }
  if(mem_rmat64$upper2[i] > 0){
    mem_rmat64$ratio2[i] = mem_rmat64$lower[i]/mem_rmat64$upper2[i]
  }
  else{
    mem_rmat64$ratio2[i] = NA
  }
  # If ratio 1 = NA
  if (is.na(mem_rmat64$ratio1[i])){
    # If ratio2  > 0
    if(mem_rmat64$ratio2 > 0){
      mem_rmat64$best.ratio[i] = mem_rmat64$ratio2[i]
      mem_rmat64$best.alg[i] = 2
    }
    # If both are NA
    else{
      mem_rmat64$best.ratio[i] = NA
      mem_rmat64$best.alg[i] = NA
    }
  }
  # If ratio1 > 0
  else {
    # If ratio2 = NA
    if (is.na(mem_rmat64$ratio2[i])){
      mem_rmat64$best.ratio[i] = mem_rmat64$ratio1[i]
      mem_rmat64$best.alg[i] = 1
    }
    # If both are > 0
    else {
      # If ratio1 smallest 
      if (mem_rmat64$ratio1[i] < mem_rmat64$ratio2[i]){
        mem_rmat64$best.ratio[i] = mem_rmat64$ratio1[i]
        mem_rmat64$best.alg[i] = 1
      }  
      # If ratio2 smallest 
      if (mem_rmat64$ratio2[i] < mem_rmat64$ratio1[i]){
        mem_rmat64$best.ratio[i] = mem_rmat64$ratio2[i]
        mem_rmat64$best.alg[i] = 2
      } 
      # if they are equal
      else {
        mem_rmat64$best.ratio[i] = mem_rmat64$ratio1[i]
        mem_rmat64$best.alg[i] = 3
      }
    }
  }
}

# Create separate data frames for n=64 and n=128
allk_64 = data.frame()
allk_128 = data.frame()
for (i in 1:900){
  if (mem_rmat64$n[i] == 64){
    allk_64 = rbind(allk_64,mem_rmat64[i,])
  }
  if (mem_rmat64$n[i] == 128){
    allk_128 = rbind(allk_128,mem_rmat64[i,])
  }
}

# Find averages of the 100 samples
m = c(2,4,8,16,32,64,128,256,512)
ratio_sum_64 = c(0,0,0,0,0,0,0,0,0)
ratio_sum_128 = c(0,0,0,0,0,0,0,0,0)
ex_64 = c(0,0,0,0,0,0,0,0,0)
ex_128 = c(0,0,0,0,0,0,0,0,0)
ratio_64 = c(0,0,0,0,0,0,0,0,0)
ratio_128 = c(0,0,0,0,0,0,0,0,0)

index = 0
for (i in m){
  index = index + 1
  for (j in 1:nrow(allk_64)){
    if (as.numeric(allk_64$multiple[j]) == i){
      ratio_sum_64[index] = as.numeric(ratio_sum_64[index]) + as.numeric(allk_64$best.ratio[j])
      ex_64[index] = ex_64[index] + 1
    }
  }
}

index = 0
for (i in m){
  index = index + 1
  for (j in 1:nrow(allk_128)){
    if (as.numeric(allk_128$multiple[j]) == i){
      ratio_sum_128[index] = ratio_sum_128[index] + allk_128$best.ratio[j]
      ex_128[index] = ex_128[index] + 1
    }
  }
}

max_64 = 0
max_128 = 0
for (i in 1:9){
  ratio_64[i] = ratio_sum_64[i]/ex_64[i]
  if (as.numeric(ratio_64[i]) > max_64){
    max_64 = ratio_64
  }
  ratio_128[i] = ratio_sum_128[i]/ex_128[i]
  if (as.numeric(ratio_128[i]) > max_128){
    max_128 = ratio_128
  }
}
ratio_64 = c(ratio_64,NA)
ratio_128 = c(NA,ratio_128)

ks =c(2^7,2^8,2^9,2^10,2^11,2^12,2^13,2^14,2^15,2^16)
max_y = max(max_64,max_128)
plot_colors = c("blue","red")

# Start PNG device driver to save output to figure.png
png(filename="figure_ratio.png", height=500, width=700, bg="white")
plot(ks,ratio_64, type="o", col=plot_colors[1], ylim=c(0,max_y),xlab= "Capacity",ylab= "Ratio")
axis(1, at=c(2^7,2^8,2^9,2^10,2^11,2^12,2^13,2^14,2^15,2^16))
box()
lines(ks,ratio_128, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
legend(2^7, max_y, c('n=64','n=128'), cex=1.25, col=plot_colors, pch=21:22, lty=1:2);
dev.off()



