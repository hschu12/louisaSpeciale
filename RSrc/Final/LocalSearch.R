#
# READ RESULTS
#

#
# MEM results
#

mem_small = read.csv('MEM-results.Small.csv')
mem_rmat = read.csv('MEM-results.R-MAT.complete.csv')
mem_compl = read.csv('MEM-results.Complete.csv')

mem_uni_67 = read.csv('MEM-results.Uni.csv')
mem_uni_100 = read.csv('MEM-results.Uni.version2.csv')
mem_uni = do.call('rbind',list(mem_uni_67,mem_uni_100))


#
# Alg 1 results
#

small_1_50 = read.csv('results-Small.1.50.csv')
small_1_100 = read.csv('results-Small.1.100.csv')
small_1_500 = read.csv('results-Small.1.500.csv')
small_1_1000 = read.csv('results-Small.1.1000version1000.csv')
small_1 = do.call('rbind',list(small_1_50,small_1_100,small_1_500,small_1_1000))

uni_1_50 = read.csv('results-Uni.1.50.csv')
uni_1_100 = read.csv('results-Uni.1.100.csv')
uni_1_500 = read.csv('results-Uni.1.500.csv')
uni_1_1000 = read.csv('results-Uni.1.1000.csv')
uni_1 = do.call('rbind',list(uni_1_50,uni_1_100,uni_1_500,uni_1_1000))

#compl_1_50_50 = read.csv('results-Complete.1.50.50.csv')
#compl_1_50_100 = read.csv('results-Complete.1.50.100.csv')
#compl_1_50_500 = read.csv('results-Complete.1.50.500.csv')
#compl_1_50_1000 = read.csv('results-Complete.1.50.1000.csv')
#compl_1_100_50 = read.csv('results-Complete.1.100.50.csv')
#compl_1_100_100 = read.csv('results-Complete.1.100.100.csv')
#compl_1_100_500 = read.csv('results-Complete.1.100.500.csv')
#compl_1_100_1000 = read.csv('results-Complete.1.100.1000.csv')
#compl_1 = do.call('rbind',list(compl_1_50_50,compl_1_50_100,compl_1_50_500,compl_1_50_1000,compl_1_100_50,compl_1_100_100,compl_1_100_500,compl_1_100_1000))

compl_1 = read.csv('results-Complete.1all.csv')


rmat_1_50_50 = read.csv('results-R-MAT.1.50.50.csv')
rmat_1_50_100 = read.csv('results-R-MAT.1.50.100.csv')
rmat_1_50_500 = read.csv('results-R-MAT.1.50.500.csv')
rmat_1_50_1000 = read.csv('results-R-MAT.1.50.1000.csv')
rmat_1_100_50 = read.csv('results-R-MAT.1.100.50.csv')
rmat_1_100_100 = read.csv('results-R-MAT.1.100.100.csv')
rmat_1_100_500 = read.csv('results-R-MAT.1.100.500.csv')
rmat_1_100_1000 = read.csv('results-R-MAT.1.100.1000.csv')
rmat_1 = do.call('rbind',list(rmat_1_50_50,rmat_1_50_100,rmat_1_50_500,rmat_1_50_1000,rmat_1_100_50,rmat_1_100_100,rmat_1_100_500,rmat_1_100_1000))


#
# Alg 2 results
#


small_2_50 = read.csv('results-Small.2.50.csv')
small_2_100 = read.csv('results-Small.2.100.csv')
small_2_500 = read.csv('results-Small.2.500.csv')
small_2_1000 = read.csv('results-Small.2.1000version1000.csv')
small_2 = do.call('rbind',list(small_2_50,small_2_100,small_2_500,small_2_1000))

uni_2_50_67 = read.csv('results-Uni.2.50.csv')
uni_2_50_100 = read.csv('results-Uni.2.50-version2.csv')
uni_2_50 = do.call('rbind',list(uni_2_50_67,uni_2_50_100))
uni_2_100 = read.csv('results-Uni.2.100-version2.csv')
uni_2_500 = read.csv('results-Uni.2.500-version2.csv')
uni_2_1000_72 = read.csv('results-Uni.2.1000-version2.csv')
uni_2_1000_100 = read.csv('results-Uni.2.1000-version3.csv')
uni_2_1000 = do.call('rbind',list(uni_2_1000_72,uni_2_1000_100))
uni_2 = do.call('rbind',list(uni_2_50,uni_2_100,uni_2_500,uni_2_1000))

#compl_2_50_50 = read.csv('results-Complete.2.50.50.csv')
#compl_2_50_100 = read.csv('results-Complete.2.50.100.csv')
#compl_2_50_500 = read.csv('results-Complete.2.50.500.csv')
#compl_2_50_1000 = read.csv('results-Complete.2.50.1000.csv')
#compl_2_100_50 = read.csv('results-Complete.2.100.50.csv')
#compl_2_100_100 = read.csv('results-Complete.2.100.100.csv')
#compl_2_100_500 = read.csv('results-Complete.2.100.500.csv')
#compl_2_100_1000 = read.csv('results-Complete.2.100.1000.csv')
#compl_2 = do.call('rbind',list(compl_2_50_50, compl_2_50_100, compl_2_50_500, compl_2_50_1000, compl_2_100_50, compl_2_100_100, compl_2_100_500, compl_2_100_1000))

compl_2 = read.csv('results-Complete.2all.csv')

rmat_2_50_50 = read.csv('results-R-MAT.2.50.50.csv')
rmat_2_50_100 = read.csv('results-R-MAT.2.50.100.csv')
rmat_2_50_500 = read.csv('results-R-MAT.2.50.500.csv')
rmat_2_50_1000 = read.csv('results-R-MAT.2.50.1000.csv')
rmat_2_100_50_77 = read.csv('results-R-MAT.2.100.50.csv')
rmat_2_100_50_100 = read.csv('results-R-MAT.2.100.50-version2.csv')
rmat_2_100_50 = do.call('rbind',list(rmat_2_100_50_77,rmat_2_100_50_100))
rmat_2_100_100_67 = read.csv('results-R-MAT.2.100.100-version2.csv')
rmat_2_100_100_100 = read.csv('results-R-MAT.2.100.100-version3.csv')
rmat_2_100_100 = do.call('rbind',list(rmat_2_100_100_67,rmat_2_100_100_100))
rmat_2_100_500 = read.csv('results-R-MAT.2.100.500-version3.csv')
rmat_2_100_1000_84 = read.csv('results-R-MAT.2.100.1000-version3.csv') # Fjern 5 observationer
rmat_2_100_1000_84 = rmat_2_100_1000_84[1:510,]
rmat_2_100_1000_100 = read.csv('results-R-MAT.2.100.1000-version4.csv')
rmat_2_100_1000 = do.call('rbind',list(rmat_2_100_1000_84,rmat_2_100_1000_100))
rmat_2 = do.call('rbind',list(rmat_2_50_50,rmat_2_50_100,rmat_2_50_500,rmat_2_50_1000,rmat_2_100_50,rmat_2_100_100,rmat_2_100_500,rmat_2_100_1000))


#
# CHANGE INTO NUMERICS
#

# Change factor into numerics
mem_small$max.multirute.flow = as.numeric(levels(mem_small$max.multirute.flow))[mem_small$max.multirute.flow]
mem_uni$max.multirute.flow = as.numeric(levels(mem_uni$max.multirute.flow))[mem_uni$max.multirute.flow]
mem_compl$max.multirute.flow = as.numeric(levels(mem_compl$max.multirute.flow))[mem_compl$max.multirute.flow]
mem_rmat$max.multirute.flow = as.numeric(levels(mem_rmat$max.multirute.flow))[mem_rmat$max.multirute.flow]

small_1$best.max.flow = as.numeric(levels(small_1$best.max.flow))[small_1$best.max.flow]
small_2$best.max.flow = as.numeric(levels(small_2$best.max.flow))[small_2$best.max.flow]
uni_1$best.max.flow = as.numeric(levels(uni_1$best.max.flow))[uni_1$best.max.flow]
uni_2$best.max.flow = as.numeric(levels(uni_2$best.max.flow))[uni_2$best.max.flow]
compl_1$best.max.flow = as.numeric(levels(compl_1$best.max.flow))[compl_1$best.max.flow]
compl_2$best.max.flow = as.numeric(levels(compl_2$best.max.flow))[compl_2$best.max.flow]
rmat_1$best.max.flow = as.numeric(levels(rmat_1$best.max.flow))[rmat_1$best.max.flow]
rmat_2$best.max.flow = as.numeric(levels(rmat_2$best.max.flow))[rmat_2$best.max.flow]

small_1$initial.max.flow = as.numeric(levels(small_1$initial.max.flow))[small_1$initial.max.flow]
small_2$initial.max.flow = as.numeric(levels(small_2$initial.max.flow))[small_2$initial.max.flow]
uni_1$initial.max.flow = as.numeric(levels(uni_1$initial.max.flow))[uni_1$initial.max.flow]
uni_2$initial.max.flow = as.numeric(levels(uni_2$initial.max.flow))[uni_2$initial.max.flow]
compl_1$initial.max.flow = as.numeric(levels(compl_1$initial.max.flow))[compl_1$initial.max.flow]
compl_2$initial.max.flow = as.numeric(levels(compl_2$initial.max.flow))[compl_2$initial.max.flow]
rmat_1$initial.max.flow = as.numeric(levels(rmat_1$initial.max.flow))[rmat_1$initial.max.flow]
rmat_2$initial.max.flow = as.numeric(levels(rmat_2$initial.max.flow))[rmat_2$initial.max.flow]

small_1$m = as.numeric(levels(small_1$m))[small_1$m]
small_2$m = as.numeric(levels(small_2$m))[small_2$m]
uni_1$m = as.numeric(levels(uni_1$m))[uni_1$m]
uni_2$m = as.numeric(levels(uni_2$m))[uni_2$m]
compl_1$m = as.numeric(levels(compl_1$m))[compl_1$m]
compl_2$m = as.numeric(levels(compl_2$m))[compl_2$m]
rmat_1$m = as.numeric(levels(rmat_1$m))[rmat_1$m]
rmat_2$m = as.numeric(levels(rmat_2$m))[rmat_2$m]

#
# RENAME COLUMNS
#

colnames(mem_small)[6:9] = c('n','neighbour','p','ex')
colnames(small_1)[22:24] = c('neighbour','p','ex')
colnames(small_2)[22:24] = c('neighbour','p','ex')

colnames(mem_uni)[7:9] = c('n','multiple','ex')
colnames(uni_1)[23:24] = c('multiple','ex')
colnames(uni_2)[23:24] = c('multiple','ex')

colnames(mem_compl)[6:8] = c('n','max.c','ex')
colnames(compl_1)[22:23] = c('max.c','ex')
colnames(compl_2)[22:23] = c('max.c','ex')

colnames(mem_rmat)[6:8] = c('n','multiple','ex')
colnames(rmat_1)[22:23] = c('multiple','ex')
colnames(rmat_2)[22:23] = c('multiple','ex')


#
# REMOVE EMPTY ROWS
#

#
# mem
# 

# mem small
NA_mem_small = list()
for (i in 1:nrow(mem_small)) {
  if (is.na(mem_small$max.multirute.flow[i])) {
    NA_mem_small = c(NA_mem_small, i)
  }   
}
removed = 0
for (j in NA_mem_small){
  mem_small = mem_small[-(j-removed),]
  removed = removed + 1
}

# mem uni
NA_mem_uni = list()
for (i in 1:nrow(mem_uni)) {
  if (is.na(mem_uni$max.multirute.flow[i])) {
    NA_mem_uni = c(NA_mem_uni, i)
  }   
}
removed = 0
for (j in NA_mem_uni){
  mem_uni = mem_uni[-(j-removed),]
  removed = removed + 1
}

# mem compl
NA_mem_compl = list()
for (i in 1:nrow(mem_compl)) {
  if (is.na(mem_compl$max.multirute.flow[i])) {
    NA_mem_compl = c(NA_mem_compl, i)
  }   
}
removed = 0
for (j in NA_mem_compl){
  mem_compl = mem_compl[-(j-removed),]
  removed = removed + 1
}

# mem rmat
NA_mem_rmat = list()
for (i in 1:nrow(mem_rmat)) {
  if (is.na(mem_rmat$max.multirute.flow[i])) {
    NA_mem_rmat = c(NA_mem_rmat, i)
  }   
}
removed = 0
for (j in NA_mem_rmat){
  mem_rmat = mem_rmat[-(j-removed),]
  removed = removed + 1
}


#
# alg 1
#

# small 1
NA_small_1 = list()
for (i in 1:nrow(small_1)) {
  if (is.na(small_1$m[i])) {
    NA_small_1 = c(NA_small_1, i)
  }   
}
removed = 0
for (j in NA_small_1){
  small_1 = small_1[-(j-removed),]
  removed = removed + 1
}

# uni 1
NA_uni_1 = list()
for (i in 1:nrow(uni_1)) {
  if (is.na(uni_1$m[i])) {
    NA_uni_1 = c(NA_uni_1, i)
  }   
}
removed = 0
for (j in NA_uni_1){
  uni_1 = uni_1[-(j-removed),]
  removed = removed + 1
}

# compl 1
NA_compl_1 = list()
for (i in 1:nrow(compl_1)) {
  if (is.na(compl_1$m[i])) {
    NA_compl_1 = c(NA_compl_1, i)
  }   
}
removed = 0
for (j in NA_compl_1){
  compl_1 = compl_1[-(j-removed),]
  removed = removed + 1
}

# rmat 1
NA_rmat_1 = list()
for (i in 1:nrow(rmat_1)) {
  if (is.na(rmat_1$m[i])) {
    NA_rmat_1 = c(NA_rmat_1, i)
  }   
}
removed = 0
for (j in NA_rmat_1){
  rmat_1 = rmat_1[-(j-removed),]
  removed = removed + 1
}

#
# alg 2
#

# small 2
NA_small_2 = list()
for (i in 1:nrow(small_2)) {
  if (is.na(small_2$m[i])) {
    NA_small_2 = c(NA_small_2, i)
  }   
}
removed = 0
for (j in NA_small_2){
  small_2 = small_2[-(j-removed),]
  removed = removed + 1
}

# uni 2
NA_uni_2 = list()
for (i in 1:nrow(uni_2)) {
  if (is.na(uni_2$m[i])) {
    NA_uni_2 = c(NA_uni_2, i)
  }   
}
removed = 0
for (j in NA_uni_2){
  uni_2 = uni_2[-(j-removed),]
  removed = removed + 1
}

# compl 2
NA_compl_2 = list()
for (i in 1:nrow(compl_2)) {
  if (is.na(compl_2$m[i])) {
    NA_compl_2 = c(NA_compl_2, i)
  }   
}
removed = 0
for (j in NA_compl_2){
  compl_2 = compl_2[-(j-removed),]
  removed = removed + 1
}

# rmat 2
NA_rmat_2 = list()
for (i in 1:nrow(rmat_2)) {
  if (is.na(rmat_2$m[i])) {
    NA_rmat_2 = c(NA_rmat_2, i)
  }   
}
removed = 0
for (j in NA_rmat_2){
  rmat_2 = rmat_2[-(j-removed),]
  removed = removed + 1
}



write.table(mem_small, "mem_small_first.csv",quote=FALSE, sep="\t")
write.table(mem_uni, "mem_uni_first.csv",quote=FALSE, sep="\t")
write.table(mem_compl, "mem_compl_first.csv",quote=FALSE, sep="\t")
write.table(mem_rmat, "mem_rmat_first.csv",quote=FALSE, sep="\t")

write.table(small_1, "small_1_first.csv",quote=FALSE, sep="\t")
write.table(small_2, "small_2_first.csv",quote=FALSE, sep="\t")
write.table(uni_1, "uni_1_first.csv",quote=FALSE, sep="\t")
write.table(uni_2, "uni_2_first.csv",quote=FALSE, sep="\t")
write.table(compl_1, "compl_1_first.csv",quote=FALSE, sep="\t")
write.table(compl_2, "compl_2_first.csv",quote=FALSE, sep="\t")
write.table(rmat_1, "rmat_1_first.csv",quote=FALSE, sep="\t")
write.table(rmat_2, "rmat_2_first.csv",quote=FALSE, sep="\t")






#############################################################################################

#
# CREATE COMPLETE DATA FRAMES
#

#############################################################################################

mem_small_save = mem_small
small_1_save = small_1
small_2_save = small_2


################

mem_small = mem_small_save
small_1 = small_1_save
small_2 = small_2_save




#
# Save MEM data in the other data frames
#

# Small

# Go through mem
for (i in 1:nrow(mem_small)){
  n = mem_small$n[i]
  neighbour = mem_small$neighbour[i]
  p = mem_small$p[i]
  ex = mem_small$ex[i]
  k = mem_small$k[i]
  # Go through 1
  for (j in 1:nrow(small_1)){
    
    # If the same network for the same k
    if (small_1$n[j] == n && small_1$neighbour[j] == neighbour && small_1$p[j] == p && small_1$ex[j] == ex && small_1$k[j] == k){
      
      # Save mem in small_1 and save small_1 in mem
      small_1$mem[j] = mem_small$max.multirute.flow[i]
      mem_small$small_1[i] = small_1$best.max.flow[j]
      
      # Calculate c1 and save in both
      if (small_1$best.max.flow[j] > 0){
        constant1 = mem_small$max.multirute.flow[i]/small_1$best.max.flow[j]
        small_1$constant[j] = constant1
        mem_small$constant1[i] = constant1
      }
      else{
        small_1$constant[j] = NA
        mem_small$constant1[i] = NA
      }
      
      # Go through 2
      for (l in 1:nrow(small_2)){
        # If the same network and same k
        if (small_2$n[l] == n && small_2$neighbour[l] == neighbour && small_2$p[l] == p && small_2$ex[l] == ex && small_2$k[l] == k){
          
          # Save mem in small_2 and save small_2 in mem
          small_2$mem[l] = mem_small$max.multirute.flow[i]
          mem_small$small_2[i] = small_2$best.max.flow[l]
          
          # Calculate c2 and save in both
          if (small_2$best.max.flow[l] > 0){
            constant2 = mem_small$max.multirute.flow[i]/small_2$best.max.flow[l]
            small_2$constant[l] = constant2
            mem_small$constant2[i] = constant2  
          }
          else {
            small_2$constant[l] = NA
            mem_small$constant2[i] = NA
          }
          
          # Find and save best c's and which alg is best
          if (constant1 > constant2){
            mem_small$best.constant[i] = constant1
            mem_small$best.alg[i] = 1
            small_1$best[j] = 1
            small_2$best[l] = 0
          }
          if (constant2 > constant1){
            mem_small$best.constant[i] = constant2
            mem_small$best.alg[i] = 2
            small_1$best[j] = 0
            small_2$best[l] = 1
          }
          else {
            mem_small$best.constant[i] = constant1
            mem_small$best.alg[i] = NA
            small_1$best[j] = 0.5
            small_2$best[l] = 0.5
          }
        }
      }
    }
  }
}

write.table(mem_small, "mem_small.csv",quote=FALSE, sep="\t")
write.table(small_1, "small_1.csv",quote=FALSE, sep="\t")
write.table(small_2, "small_2.csv",quote=FALSE, sep="\t")




mem_uni_save = mem_uni
uni_1_save = uni_1
uni_2_save = uni_2





mem_uni = mem_uni_save
uni_1 = uni_1_save
uni_2 = uni_2_save


# Uni

# Go through mem
for (i in 1:nrow(mem_uni)){
  n = mem_uni$n[i]
  multiple = mem_uni$multiple[i]
  ex = mem_uni$ex[i]
  k = mem_uni$k[i]
  # Go through 1
  for (j in 1:nrow(uni_1)){
    
    # If the same network for the same k
    if (uni_1$n[j] == n && uni_1$multiple[j] == multiple && uni_1$ex[j] == ex && uni_1$k[j] == k){
      
      # Save mem in 1 and save 1 in mem
      uni_1$mem[j] = mem_uni$max.multirute.flow[i]
      mem_uni$small_1[i] = uni_1$best.max.flow[j]
      
      # Calculate c1 and save in both
      constant1 = mem_uni$max.multirute.flow[i]/uni_1$best.max.flow[j]
      uni_1$constant[j] = constant1
      mem_uni$constant1[i] = constant1
      
      # Go through 2
      for (l in 1:nrow(uni_2)){
        # If the same network and same k
        if (uni_2$n[l] == n && uni_2$multiple[l] == multiple && uni_2$ex[l] == ex && uni_2$k[l] == k){
          
          # Save mem in 2 and save 2 in mem
          uni_2$mem[l] = mem_uni$max.multirute.flow[i]
          mem_uni$uni_2[i] = uni_2$best.max.flow[l]
          
          # Calculate c2 and save in both
          constant2 = mem_uni$max.multirute.flow[i]/uni_2$best.max.flow[l]
          uni_2$constant[l] = constant2
          mem_uni$constant2[i] = constant2  
          
          # Find and save best c's and which alg is best
          if (constant1 > constant2){
            mem_uni$best.constant[i] = constant1
            mem_uni$best.alg[i] = 1
            uni_1$best[j] = 1
            uni_2$best[l] = 0
          }
          if (constant2 > constant1){
            mem_uni$best.constant[i] = constant2
            mem_uni$best.alg[i] = 2
            uni_1$best[j] = 0
            uni_2$best[l] = 1
          }
          else {
            mem_uni$best.constant[i] = constant1
            mem_uni$best.alg[i] = NA
            uni_1$best[j] = 0.5
            uni_2$best[l] = 0.5
          }
        }
      }
    }
  }
}


write.table(mem_uni, "mem_uni.csv",quote=FALSE, sep="\t")
write.table(uni_1, "uni_1.csv",quote=FALSE, sep="\t")
write.table(uni_2, "uni_2.csv",quote=FALSE, sep="\t")




mem_compl_save = mem_compl
compl_1_save = compl_1
compl_2_save = compl_2




mem_compl = mem_compl_save
compl_1 = compl_1_save
compl_2 = compl_2_save

# Compl

# Go through mem
for (i in 1:nrow(mem_compl)){
  n = mem_compl$n[i]
  max_c = mem_compl$max.c[i]
  ex = mem_compl$ex[i]
  k = mem_compl$k[i]
  # Go through 1
  for (j in 1:nrow(compl_1)){
    
    # If the same network for the same k
    if (compl_1$n[j] == n && compl_1$max.c[j] == max_c && compl_1$ex[j] == ex && compl_1$k[j] == k){
      
      # Save mem in 1 and save 1 in mem
      compl_1$mem[j] = mem_compl$max.multirute.flow[i]
      mem_compl$small_1[i] = compl_1$best.max.flow[j]
      
      # Calculate c1 and save in both
      constant1 = mem_compl$max.multirute.flow[i]/compl_1$best.max.flow[j]
      compl_1$constant[j] = constant1
      mem_compl$constant1[i] = constant1
      
      # Go through 2
      for (l in 1:nrow(compl_2)){
        # If the same network and same k
        if (compl_2$n[l] == n && compl_2$max.c[l] == max_c && compl_2$ex[l] == ex && compl_2$k[l] == k){
          
          # Save mem in 2 and save 2 in mem
          compl_2$mem[l] = mem_compl$max.multirute.flow[i]
          mem_compl$uni_2[i] = compl_2$best.max.flow[l]
          
          # Calculate c2 and save in both
          constant2 = mem_compl$max.multirute.flow[i]/compl_2$best.max.flow[l]
          compl_2$constant[l] = constant2
          mem_compl$constant2[i] = constant2  
          
          # Find and save best c's and which alg is best
          if (constant1 > constant2){
            mem_compl$best.constant[i] = constant1
            mem_compl$best.alg[i] = 1
            compl_1$best[j] = 1
            compl_2$best[l] = 0
          }
          if (constant2 > constant1){
            mem_compl$best.constant[i] = constant2
            mem_compl$best.alg[i] = 2
            compl_1$best[j] = 0
            compl_2$best[l] = 1
          }
          else {
            mem_compl$best.constant[i] = constant1
            mem_compl$best.alg[i] = NA
            compl_1$best[j] = 0.5
            compl_2$best[l] = 0.5
          }
        }
      }
    }
  }
}

write.table(mem_compl, "mem_compl.csv",quote=FALSE, sep="\t")
write.table(compl_1, "compl_1.csv",quote=FALSE, sep="\t")
write.table(compl_2, "compl_2.csv",quote=FALSE, sep="\t")


# RMAT

# Go through mem
for (i in 1:nrow(mem_rmat)){
  n = mem_rmat$n[i]
  multiple = mem_rmat$multiple[i]
  ex = mem_rmat$ex[i]
  k = mem_rmat$k[i]
  # Go through 1
  for (j in 1:nrow(rmat_1)){
    
    # If the same network for the same k
    if (rmat_1$n[j] == n && rmat_1$multiple[j] == multiple && rmat_1$ex[j] == ex && rmat_1$k[j] == k){
      
      # Save mem in 1 and save 1 in mem
      rmat_1$mem[j] = mem_rmat$max.multirute.flow[i]
      mem_rmat$small_1[i] = rmat_1$best.max.flow[j]
      
      # Calculate c1 and save in both
      constant1 = mem_rmat$max.multirute.flow[i]/rmat_1$best.max.flow[j]
      rmat_1$constant[j] = constant1
      mem_rmat$constant1[i] = constant1
      
      # Go through 2
      for (l in 1:nrow(rmat_2)){
        # If the same network and same k
        if (rmat_2$n[l] == n && rmat_2$multiple[l] == multiple && rmat_2$ex[l] == ex && rmat_2$k[l] == k){
          
          # Save mem in 2 and save 2 in mem
          rmat_2$mem[l] = mem_rmat$max.multirute.flow[i]
          mem_rmat$rmat_2[i] = rmat_2$best.max.flow[l]
          
          # Calculate c2 and save in both
          constant2 = mem_rmat$max.multirute.flow[i]/rmat_2$best.max.flow[l]
          rmat_2$constant[l] = constant2
          mem_rmat$constant2[i] = constant2  
          
          # Find and save best c's and which alg is best
          if (constant1 > constant2){
            mem_rmat$best.constant[i] = constant1
            mem_rmat$best.alg[i] = 1
            rmat_1$best[j] = 1
            rmat_2$best[l] = 0
          }
          if (constant2 > constant1){
            mem_rmat$best.constant[i] = constant2
            mem_rmat$best.alg[i] = 2
            rmat_1$best[j] = 0
            rmat_2$best[l] = 1
          }
          else {
            mem_rmat$best.constant[i] = constant1
            mem_rmat$best.alg[i] = NA
            rmat_1$best[j] = 0.5
            rmat_2$best[l] = 0.5
          }
        }
      }
    }
  }
}

write.table(mem_rmat, "mem_rmat.csv",quote=FALSE, sep="\t")
write.table(rmat_1, "rmat_1.csv",quote=FALSE, sep="\t")
write.table(rmat_2, "rmat_2.csv",quote=FALSE, sep="\t")





#############################################################################################

#
# C-K PLOTS FOR EACH CLASS OF NETWORK
#

#############################################################################################

#
# SMALL WORLD 
#


# Find average constant for each k value and each n-value to create plot with a line for each n
ns = c(50,100,500,1000)
ks = c(2,3,5,10,50)
n_index = c(1,2,3,4)
k_index = c(1,2,3,4,5)
sum_n50 = c(0,0,0,0,0)
sum_n100 = c(0,0,0,0,0)
sum_n500 = c(0,0,0,0,0)
sum_n1000 = c(0,0,0,0,0)
ex_n50 = c(0,0,0,0,0)
ex_n100 = c(0,0,0,0,0)
ex_n500 = c(0,0,0,0,0)
ex_n1000 = c(0,0,0,0,0)


for (i in 1:nrow(mem_small)){
  if (is.finite(mem_small$best.constant[i])){
    for (ni in n_index){
      for (ki in k_index){
        if (mem_small$n[i] == ns[ni] && mem_small$k[i] == ks[ki]){
          if (ns[ni] == 50){
            sum_n50[ki] = sum_n50[ki] + mem_small$best.constant[i]
            ex_n50[ki] = ex_n50[ki] + 1
          }
          if (ns[ni] == 100){
            sum_n100[ki] = sum_n100[ki] + mem_small$best.constant[i]
            ex_n100[ki] = ex_n100[ki] + 1
          }
          if (ns[ni] == 500){
            sum_n500[ki] = sum_n500[ki] + mem_small$best.constant[i]
            ex_n500[ki] = ex_n500[ki] + 1
          }
          if (ns[ni] == 1000){
            sum_n1000[ki] = sum_n1000[ki] + mem_small$best.constant[i]
            ex_n1000[ki] = ex_n1000[ki] + 1
          }
        }
      }
    }
  }
}
n50 = list()
n100 = list()
n500 = list()
n1000 = list()
max_n50 = 0
max_n100 = 0
max_n500 = 0
max_n1000 = 0
min_n50 = Inf
min_n100 = Inf
min_n500 = Inf
min_n1000 = Inf
for (ki in k_index){
  if (ex_n50[ki] > 0){
    n50[ki] = sum_n50[ki] / ex_n50[ki]
    if (as.numeric(n50[ki]) > max_n50){
      max_n50 = as.numeric(n50[ki])
    }
    if (as.numeric(n50[ki]) < min_n50){
      min_n50 = as.numeric(n50[ki])
    }
  }
  if (ex_n100[ki] > 0){
    n100[ki] = sum_n100[ki] / ex_n100[ki]
    if (as.numeric(n100[ki]) > max_n100){
      max_n100 = as.numeric(n100[ki])
    }
    if (as.numeric(n100[ki]) < min_n100){
      min_n100 = as.numeric(n100[ki])
    }
  }
  if (ex_n500[ki] > 0){
    n500[ki] = sum_n500[ki] / ex_n500[ki]
    if (as.numeric(n500[ki]) > max_n500){
      max_n500 = as.numeric(n500[ki])
    }
    if (as.numeric(n500[ki]) < min_n500){
      min_n500 = as.numeric(n500[ki])
    }
  }
  if (ex_n1000[ki] > 0){
    n1000[ki] = sum_n1000[ki] / ex_n1000[ki]
    if (as.numeric(n1000[ki]) > max_n1000){
      max_n1000 = as.numeric(n1000[ki])
    }
    if (as.numeric(n1000[ki]) < min_n1000){
      min_n1000 = as.numeric(n1000[ki])
    }
  }
}

if (ex_n50[5]== 0 && ex_n100[5] == 0 && ex_n500[5]==0 && ex_n1000[5] == 0){
  n50 = n50[1:4]
  n100 = n100[1:4]
  n500 = n500[1:4]
  n1000 = n1000[1:4]
  ks = ks[1:4]
}

max_y = max(max_n50,max_n100,max_n500,max_n1000)
min_y = min(min_n50,min_n100,min_n500,min_n1000)
plot_colors = c("blue","red","forestgreen","mediumorchid3")
upper = c(3,4,5,6,7,8,9,10,11)
k_axis = c(2,3,4,5,6,7,8,9,10)

# Start PNG device driver to save output to figure.png
png(filename="figure_small1.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,max_y),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="Small World Networks")
legend(2, max_y, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_small2.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,11),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
lines(k_axis,upper)
title(main="Small World Networks")
legend(2, 11, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()






#
# UNI
#



# Find average constant for each k value and each n-value to create plot with a line for each n
ns = c(50,100,500,1000)
ks = c(2,3,5,10,50)
n_index = c(1,2,3,4)
k_index = c(1,2,3,4,5)
sum_n50 = c(0,0,0,0,0)
sum_n100 = c(0,0,0,0,0)
sum_n500 = c(0,0,0,0,0)
sum_n1000 = c(0,0,0,0,0)
ex_n50 = c(0,0,0,0,0)
ex_n100 = c(0,0,0,0,0)
ex_n500 = c(0,0,0,0,0)
ex_n1000 = c(0,0,0,0,0)


for (i in 1:nrow(mem_uni)){
  if (is.finite(mem_uni$best.constant[i])){
    for (ni in n_index){
      for (ki in k_index){
        if (mem_uni$n[i] == ns[ni] && mem_uni$k[i] == ks[ki]){
          if (ns[ni] == 50){
            sum_n50[ki] = sum_n50[ki] + mem_uni$best.constant[i]
            ex_n50[ki] = ex_n50[ki] + 1
          }
          if (ns[ni] == 100){
            sum_n100[ki] = sum_n100[ki] + mem_uni$best.constant[i]
            ex_n100[ki] = ex_n100[ki] + 1
          }
          if (ns[ni] == 500){
            sum_n500[ki] = sum_n500[ki] + mem_uni$best.constant[i]
            ex_n500[ki] = ex_n500[ki] + 1
          }
          if (ns[ni] == 1000){
            sum_n1000[ki] = sum_n1000[ki] + mem_uni$best.constant[i]
            ex_n1000[ki] = ex_n1000[ki] + 1
          }
        }
      }
    }
  }
}
n50 = list()
n100 = list()
n500 = list()
n1000 = list()
max_n50 = 0
max_n100 = 0
max_n500 = 0
max_n1000 = 0
min_n50 = Inf
min_n100 = Inf
min_n500 = Inf
min_n1000 = Inf
for (ki in k_index){
  if (ex_n50[ki] > 0){
    n50[ki] = sum_n50[ki] / ex_n50[ki]
    if (as.numeric(n50[ki]) > max_n50){
      if (ki == 5){
        max_n50_4 = max_n50
      }
      max_n50 = as.numeric(n50[ki])
    }
    if (as.numeric(n50[ki]) < min_n50){
      if (ki == 5){
        min_n50_4 = min_n50
      }
      min_n50 = as.numeric(n50[ki])
    }
  }
  if (ex_n100[ki] > 0){
    n100[ki] = sum_n100[ki] / ex_n100[ki]
    if (as.numeric(n100[ki]) > max_n100){
      if (ki == 5){
        max_n100_4 = max_n100
      }
      max_n100 = as.numeric(n100[ki])
    }
    if (as.numeric(n100[ki]) < min_n100){
      if (ki == 5){
        min_n100_4 = min_n100
      }
      min_n100 = as.numeric(n100[ki])
    }
  }
  if (ex_n500[ki] > 0){
    n500[ki] = sum_n500[ki] / ex_n500[ki]
    if (as.numeric(n500[ki]) > max_n500){
      if (ki == 5){
        max_n500_4 = max_n500
      }
      max_n500 = as.numeric(n500[ki])
    }
    if (as.numeric(n500[ki]) < min_n500){
      if (ki == 5){
        min_n500_4 = min_n500
      }
      min_n500 = as.numeric(n500[ki])
    }
  }
  if (ex_n1000[ki] > 0){
    n1000[ki] = sum_n1000[ki] / ex_n1000[ki]
    if (as.numeric(n1000[ki]) > max_n1000){
      if (ki == 5){
        max_n1000_4 = max_n1000
      }
      max_n1000 = as.numeric(n1000[ki])
    }
    if (as.numeric(n1000[ki]) < min_n1000){
      if (ki == 5){
        min_n1000_4 = min_n1000
      }
      min_n1000 = as.numeric(n1000[ki])
    }
  }
}

if (ex_n50[5]== 0 && ex_n100[5] == 0 && ex_n500[5]==0 && ex_n1000[5] == 0){
  n50 = n50[1:4]
  n100 = n100[1:4]
  n500 = n500[1:4]
  n1000 = n1000[1:4]
  ks = ks[1:4]
}

n50 = c(n50, NA)
n100 = c(n100, NA)

max_y = max(max_n50,max_n100,max_n500,max_n1000)
max_y_4 = max(max_n50,max_n100,max_n500_4,max_n1000_4)
min_y = min(min_n50,min_n100,min_n500,min_n1000)
plot_colors = c("blue","red","forestgreen","mediumorchid3")
upper = c(3:52)
k_axis = c(2:51)

# Start PNG device driver to save output to figure.png
png(filename="figure_uni1.png", height=500, width=700, bg="white")
plot(ks[1:4],n50[1:4], type="o", col=plot_colors[1], ylim=c(min_y,max_y_4),xlab= "k",ylab= "Approximation constant")
box()
lines(ks[1:4],n100[1:4], type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks[1:4],n500[1:4], type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks[1:4],n1000[1:4], type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="Random Networks")
legend(2, max_y_4, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_uni2.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,max_y),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="Random Networks")
legend(2, max_y, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_uni3.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,52),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
lines(k_axis,upper)
title(main="Random Networks")
legend(2, 52, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()






#
# COMPLETE
#



# Find average constant for each k value and each n-value to create plot with a line for each n
ns = c(50,100,500,1000)
ks = c(2,3,5,10,50)
n_index = c(1,2,3,4)
k_index = c(1,2,3,4,5)
sum_n50 = c(0,0,0,0,0)
sum_n100 = c(0,0,0,0,0)
sum_n500 = c(0,0,0,0,0)
sum_n1000 = c(0,0,0,0,0)
ex_n50 = c(0,0,0,0,0)
ex_n100 = c(0,0,0,0,0)
ex_n500 = c(0,0,0,0,0)
ex_n1000 = c(0,0,0,0,0)


for (i in 1:nrow(mem_compl)){
  if (is.finite(mem_compl$best.constant[i])){
    for (ni in n_index){
      for (ki in k_index){
        if (mem_compl$n[i] == ns[ni] && mem_compl$k[i] == ks[ki]){
          if (ns[ni] == 50){
            sum_n50[ki] = sum_n50[ki] + mem_compl$best.constant[i]
            ex_n50[ki] = ex_n50[ki] + 1
          }
          if (ns[ni] == 100){
            sum_n100[ki] = sum_n100[ki] + mem_compl$best.constant[i]
            ex_n100[ki] = ex_n100[ki] + 1
          }
          if (ns[ni] == 500){
            sum_n500[ki] = sum_n500[ki] + mem_compl$best.constant[i]
            ex_n500[ki] = ex_n500[ki] + 1
          }
          if (ns[ni] == 1000){
            sum_n1000[ki] = sum_n1000[ki] + mem_compl$best.constant[i]
            ex_n1000[ki] = ex_n1000[ki] + 1
          }
        }
      }
    }
  }
}
n50 = list()
n100 = list()
n500 = list()
n1000 = list()
max_n50 = 0
max_n100 = 0
max_n500 = 0
max_n1000 = 0
min_n50 = Inf
min_n100 = Inf
min_n500 = Inf
min_n1000 = Inf
for (ki in k_index){
  if (ex_n50[ki] > 0){
    n50[ki] = sum_n50[ki] / ex_n50[ki]
    if (as.numeric(n50[ki]) > max_n50){
      if (ki == 5){
        max_n50_4 = max_n50
      }
      max_n50 = as.numeric(n50[ki])
    }
    if (as.numeric(n50[ki]) < min_n50){
      if (ki == 5){
        min_n50_4 = min_n50
      }
      min_n50 = as.numeric(n50[ki])
    }
  }
  if (ex_n100[ki] > 0){
    n100[ki] = sum_n100[ki] / ex_n100[ki]
    if (as.numeric(n100[ki]) > max_n100){
      if (ki == 5){
        max_n100_4 = max_n100
      }
      max_n100 = as.numeric(n100[ki])
    }
    if (as.numeric(n100[ki]) < min_n100){
      if (ki == 5){
        min_n100_4 = min_n100
      }
      min_n100 = as.numeric(n100[ki])
    }
  }
  if (ex_n500[ki] > 0){
    n500[ki] = sum_n500[ki] / ex_n500[ki]
    if (as.numeric(n500[ki]) > max_n500){
      if (ki == 5){
        max_n500_4 = max_n500
      }
      max_n500 = as.numeric(n500[ki])
    }
    if (as.numeric(n500[ki]) < min_n500){
      if (ki == 5){
        min_n500_4 = min_n500
      }
      min_n500 = as.numeric(n500[ki])
    }
  }
  if (ex_n1000[ki] > 0){
    n1000[ki] = sum_n1000[ki] / ex_n1000[ki]
    if (as.numeric(n1000[ki]) > max_n1000){
      if (ki == 5){
        max_n1000_4 = max_n1000
      }
      max_n1000 = as.numeric(n1000[ki])
    }
    if (as.numeric(n1000[ki]) < min_n1000){
      if (ki == 5){
        min_n1000_4 = min_n1000
      }
      min_n1000 = as.numeric(n1000[ki])
    }
  }
}

if (ex_n50[5]== 0 && ex_n100[5] == 0 && ex_n500[5]==0 && ex_n1000[5] == 0){
  n50 = n50[1:4]
  n100 = n100[1:4]
  n500 = n500[1:4]
  n1000 = n1000[1:4]
  ks = ks[1:4]
}

n50 = c(n50, NA)

max_y = max(max_n50,max_n100,max_n500,max_n1000)
max_y_4 = max(max_n50,max_n100_4,max_n500_4,max_n1000_4)
min_y = min(min_n50,min_n100,min_n500,min_n1000)
plot_colors = c("blue","red","forestgreen","mediumorchid3")
upper = c(3:52)
k_axis = c(2:51)


# Start PNG device driver to save output to figure.png
png(filename="figure_compl1.png", height=500, width=700, bg="white")
plot(ks[1:4],n50[1:4], type="o", col=plot_colors[1], ylim=c(min_y,max_y_4),xlab= "k",ylab= "Approximation constant")
box()
lines(ks[1:4],n100[1:4], type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks[1:4],n500[1:4], type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks[1:4],n1000[1:4], type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="Complete Networks")
legend(2, max_y_4, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_compl2.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,max_y),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="Complete Networks")
legend(2, max_y, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_compl3.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,52),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
lines(k_axis,upper)
title(main="Complete Networks")
legend(2, 52, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()







#
# RMAT
#



# Find average constant for each k value and each n-value to create plot with a line for each n
ns = c(50,100,500,1000)
ks = c(2,3,5,10,50)
n_index = c(1,2,3,4)
k_index = c(1,2,3,4,5)
sum_n50 = c(0,0,0,0,0)
sum_n100 = c(0,0,0,0,0)
sum_n500 = c(0,0,0,0,0)
sum_n1000 = c(0,0,0,0,0)
ex_n50 = c(0,0,0,0,0)
ex_n100 = c(0,0,0,0,0)
ex_n500 = c(0,0,0,0,0)
ex_n1000 = c(0,0,0,0,0)


for (i in 1:nrow(mem_rmat)){
  if (is.finite(mem_rmat$best.constant[i])){
    for (ni in n_index){
      for (ki in k_index){
        if (mem_rmat$n[i] == ns[ni] && mem_rmat$k[i] == ks[ki]){
          if (ns[ni] == 50){
            sum_n50[ki] = sum_n50[ki] + mem_rmat$best.constant[i]
            ex_n50[ki] = ex_n50[ki] + 1
          }
          if (ns[ni] == 100){
            sum_n100[ki] = sum_n100[ki] + mem_rmat$best.constant[i]
            ex_n100[ki] = ex_n100[ki] + 1
          }
          if (ns[ni] == 500){
            sum_n500[ki] = sum_n500[ki] + mem_rmat$best.constant[i]
            ex_n500[ki] = ex_n500[ki] + 1
          }
          if (ns[ni] == 1000){
            sum_n1000[ki] = sum_n1000[ki] + mem_rmat$best.constant[i]
            ex_n1000[ki] = ex_n1000[ki] + 1
          }
        }
      }
    }
  }
}
n50 = list()
n100 = list()
n500 = list()
n1000 = list()
max_n50 = 0
max_n100 = 0
max_n500 = 0
max_n1000 = 0
min_n50 = Inf
min_n100 = Inf
min_n500 = Inf
min_n1000 = Inf
for (ki in k_index){
  if (ex_n50[ki] > 0){
    n50[ki] = sum_n50[ki] / ex_n50[ki]
    if (as.numeric(n50[ki]) > max_n50){
      if (ki == 5){
        max_n50_4 = max_n50
      }
      max_n50 = as.numeric(n50[ki])
    }
    if (as.numeric(n50[ki]) < min_n50){
      if (ki == 5){
        min_n50_4 = min_n50
      }
      min_n50 = as.numeric(n50[ki])
    }
  }
  if (ex_n100[ki] > 0){
    n100[ki] = sum_n100[ki] / ex_n100[ki]
    if (as.numeric(n100[ki]) > max_n100){
      if (ki == 5){
        max_n100_4 = max_n100
      }
      max_n100 = as.numeric(n100[ki])
    }
    if (as.numeric(n100[ki]) < min_n100){
      if (ki == 5){
        min_n100_4 = min_n100
      }
      min_n100 = as.numeric(n100[ki])
    }
  }
  if (ex_n500[ki] > 0){
    n500[ki] = sum_n500[ki] / ex_n500[ki]
    if (as.numeric(n500[ki]) > max_n500){
      if (ki == 5){
        max_n500_4 = max_n500
      }
      max_n500 = as.numeric(n500[ki])
    }
    if (as.numeric(n500[ki]) < min_n500){
      if (ki == 5){
        min_n500_4 = min_n500
      }
      min_n500 = as.numeric(n500[ki])
    }
  }
  if (ex_n1000[ki] > 0){
    n1000[ki] = sum_n1000[ki] / ex_n1000[ki]
    if (as.numeric(n1000[ki]) > max_n1000){
      if (ki == 5){
        max_n1000_4 = max_n1000
      }
      max_n1000 = as.numeric(n1000[ki])
    }
    if (as.numeric(n1000[ki]) < min_n1000){
      if (ki == 5){
        min_n1000_4 = min_n1000
      }
      min_n1000 = as.numeric(n1000[ki])
    }
  }
}

if (ex_n50[5]== 0 && ex_n100[5] == 0 && ex_n500[5]==0 && ex_n1000[5] == 0){
  n50 = n50[1:4]
  n100 = n100[1:4]
  n500 = n500[1:4]
  n1000 = n1000[1:4]
  ks = ks[1:4]
}

n50 = c(n50, NA)
n100 = c(n100, NA)

max_y = max(max_n50,max_n100,max_n500,max_n1000)
max_y_4 = max(max_n50,max_n100,max_n500_4,max_n1000_4)
min_y = min(min_n50,min_n100,min_n500,min_n1000)
plot_colors = c("blue","red","forestgreen","mediumorchid3")
upper = c(3:52)
k_axis = c(2:51)

# Start PNG device driver to save output to figure.png
png(filename="figure_rmat1.png", height=500, width=700, bg="white")
plot(ks[1:4],n50[1:4], type="o", col=plot_colors[1], ylim=c(min_y,max_y_4),xlab= "k",ylab= "Approximation constant")
box()
lines(ks[1:4],n100[1:4], type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks[1:4],n500[1:4], type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks[1:4],n1000[1:4], type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="R-MAT Networks")
legend(2, max_y_4, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_rmat2.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,max_y),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
title(main="R-MAT Networks")
legend(15, max_y, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()

# Start PNG device driver to save output to figure.png
png(filename="figure_rmat3.png", height=500, width=700, bg="white")
plot(ks,n50, type="o", col=plot_colors[1], ylim=c(min_y,52),xlab= "k",ylab= "Approximation constant")
box()
lines(ks,n100, type="o", pch=22, lty=2, col=plot_colors[2], lwd=2)
lines(ks,n500, type="o", pch=23, lty=3, col=plot_colors[3], lwd=2)
lines(ks,n1000, type="o", pch=24, lty=4, col=plot_colors[4], lwd=2)
lines(k_axis,upper)
title(main="R-MAT Networks")
legend(2, 52, c('n=50','n=100','n=500','n=1000'), cex=1.25, col=plot_colors, pch=21:24, lty=1:4);
dev.off()


############################################################################################

#
# PLOTS AND VALUES
#

#############################################################################################

plot(best.constant~k,data=mem_rmat, main='R-MAT networks', xlab="k", ylab="Approximation constant")
plot(best.constant~k,data=mem_compl, main='Complete networks', xlab="k", ylab="Approximation constant")
plot(best.constant~k,data=mem_uni, main='Random shaped networks', xlab="k", ylab="Approximation constant")
plot(best.constant~k,data=mem_small, main='Small world networks', xlab="k", ylab="Approximation constant")

# Boxplots

png(filename="boxplot_rmat.png", height=500, width=500, bg="white")
boxplot(best.constant~k,data=mem_rmat, main='R-MAT networks', xlab="k", ylab="Approximation constant")
dev.off()

png(filename="boxplot_compl.png", height=500, width=500, bg="white")
boxplot(best.constant~k,data=mem_compl, main='Complete networks', xlab="k", ylab="Approximation constant")
dev.off()

png(filename="boxplot_uni.png", height=500, width=500, bg="white")
boxplot(best.constant~k,data=mem_uni, main='Random shaped networks', xlab="k", ylab="Approximation constant")
dev.off()

png(filename="boxplot_small.png", height=500, width=500, bg="white")
boxplot(best.constant~k,data=mem_small, main='Small world networks', xlab="k", ylab="Approximation constant")
dev.off()

#
# Find min and max for each k-value
#

# Rmat
max_cs_rmat = c(0,0,0,0,0)
min_cs_rmat = c(Inf,Inf,Inf,Inf,Inf)
ks =c(2,3,5,10,50)
for (i in 1:nrow(mem_rmat)){
  for (j in 1:5){
    if (mem_rmat$k[i] == ks[j] && mem_rmat$best.constant[i] > max_cs_rmat[j]){
      max_cs_rmat[j] = mem_rmat$best.constant[i]
    }
    if (mem_rmat$k[i] == ks[j] && mem_rmat$constant1[i] < min_cs_rmat[j]){
      min_cs_rmat[j] = mem_rmat$best.constant[i]
    }
  }
}

# Uni
max_cs_uni = c(0,0,0,0,0)
min_cs_uni = c(Inf,Inf,Inf,Inf,Inf)
ks =c(2,3,5,10,50)
for (i in 1:nrow(mem_uni)){
  for (j in 1:5){
    if (mem_uni$k[i] == ks[j] && mem_uni$best.constant[i] > max_cs_uni[j]){
      max_cs_uni[j] = mem_uni$best.constant[i]
    }
    if (mem_uni$k[i] == ks[j] && mem_uni$constant1[i] < min_cs_uni[j]){
      min_cs_uni[j] = mem_uni$best.constant[i]
    }
  }
}

# Compl
max_cs_compl = c(0,0,0,0,0)
min_cs_compl = c(Inf,Inf,Inf,Inf,Inf)
ks =c(2,3,5,10,50)
for (i in 1:nrow(mem_compl)){
  for (j in 1:5){
    if (mem_compl$k[i] == ks[j] && mem_compl$best.constant[i] > max_cs_compl[j]){
      max_cs_compl[j] = mem_compl$best.constant[i]
    }
    if (mem_compl$k[i] == ks[j] && mem_compl$constant1[i] < min_cs_compl[j]){
      min_cs_compl[j] = mem_compl$best.constant[i]
    }
  }
}

# Small
max_cs_small = c(0,0,0,0,0)
min_cs_small = c(Inf,Inf,Inf,Inf,Inf)
ks =c(2,3,5,10,50)
for (i in 1:nrow(mem_small)){
  for (j in 1:5){
    if (mem_small$k[i] == ks[j] && mem_small$best.constant[i] > max_cs_small[j]){
      max_cs_small[j] = mem_small$best.constant[i]
    }
    if (mem_small$k[i] == ks[j] && mem_small$constant1[i] < min_cs_small[j]){
      min_cs_small[j] = mem_small$best.constant[i]
    }
  }
}

max_index_small = which(mem_small$best.constant == max(mem_small$best.constant))
max_small = max(mem_small$best.constant)

best.max.flow = list()
for (i in 1:nrow(small_2)){
  for (j in max_index_small){
    if (small_2$n[i] == mem_small$n[j] && small_2$neighbour[i] == mem_small$neighbour[j] && small_2$p[i] == mem_small$p[j] && small_2$ex[i] == mem_small$ex[j]){
      best.max.flow = c(best.max.flow, small_2$best.max.flow[i])
    }
  }
}

min_index_uni = which(mem_uni$constant1 == min(mem_uni$constant1))
min_uni = min(mem_uni$constant1)

#############################################################################################

#
# WHICH LS ALG IS BEST?
#

#############################################################################################

# Small
test = mem_small$best.alg[1]
alg_small_1 = 0
alg_small_2 = 0
alg_small_na = 0
for (i in 1:nrow(mem_small)){
  if (is.na(mem_small$best.alg[i])){
    alg_small_na = alg_small_na + 1
  }
  else{
    if (mem_small$best.alg[i] == 1){
      alg_small_1 = alg_small_1 + 1
    }
    if (mem_small$best.alg[i] == 2){
      alg_small_2 = alg_small_2 + 1
    }
  }
}

# Uni
alg_uni_1 = 0
alg_uni_2 = 0
alg_uni_na = 0
for (i in 1:nrow(mem_uni)){
  if (is.na(mem_uni$best.alg[i])){
    alg_uni_na = alg_uni_na + 1
  }
  else {
    if (as.numeric(mem_uni$best.alg[i]) == 1){
      alg_uni_1 = alg_uni_1 + 1
    }
    if (as.numeric(mem_uni$best.alg[i]) == 2){
      alg_uni_2 = alg_uni_2 + 1
    }
  }  
}

# Complete
alg_compl_1 = 0
alg_compl_2 = 0
alg_compl_na = 0
for (i in 1:nrow(mem_compl)){
  if (is.na(mem_compl$best.alg[i])){
    alg_compl_na = alg_compl_na + 1
  }
  else {
    if (mem_compl$best.alg[i] == 1){
      alg_compl_1 = alg_compl_1 + 1
    }
    if (mem_compl$best.alg[i] == 2){
      alg_compl_2 = alg_compl_2 + 1
    }
  }
}

# Rmat
alg_rmat_1 = 0
alg_rmat_2 = 0
alg_rmat_na = 0
for (i in 1:nrow(mem_rmat)){
  if (is.na(mem_rmat$best.alg[i])){
    alg_rmat_na = alg_rmat_na + 1
  }
  else {
    if (mem_rmat$best.alg[i] == 1){
      alg_rmat_1 = alg_rmat_1 + 1
    }
    if (mem_rmat$best.alg[i] == 2){
      alg_rmat_2 = alg_rmat_2 + 1
    }
  }
}




