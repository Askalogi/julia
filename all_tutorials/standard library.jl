#! STANDARD LIBRARY
# Julia base so far 
# Standard Library has more useful functions not for day to day usage 

# example 1 
rand(10)

# Random Numbers Library 
using Random

Random.seed!(1)

rand(10)

data = randn(1000)

function average(x::Vector)
    sum(x)/length(x)
end

average(data)

# Statistics Library 
using Statistics

mean(data)  
#same result

median(data)

std(data)
