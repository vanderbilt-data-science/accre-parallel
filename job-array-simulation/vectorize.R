# vectorize.R
#
# The purpose of this code is to compare the time of execution for element-wise multiplication.  The two methods being compared are:
# 1) a vectorized multiplication vs 2) element-wise multiplication via for loops.  The code is an extension of an example from: 
# http://stackoverflow.com/questions/16902902/why-is-vectorization-faster.
#
# Inputs: the name of the input file to read
# Outputs: none
# System out: the times of execution and the means of the squared vector of random numbers

args <- commandArgs(trailingOnly = TRUE)
args <- as.numeric(args)

n=args[1]

# populate with random nos of length n
v=runif(n)

# Vectorized square of elements
cat(" Results for vectorized multiply with ", n, " elements: \n")
system.time({vv<-v*v; m<-mean(vv)});
cat("vectorized mean: ", m, "\n\n")

# Looping square of elements
cat(" Results for looped multiply with ", n, " elements: \n")
system.time({for(i in 1:length(v)) { vv[i]<-v[i]*v[i] }; m<-mean(vv)});
cat("vectorized mean: ", m)