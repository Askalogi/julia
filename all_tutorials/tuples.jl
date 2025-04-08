#! TUPLE
phantom = ("bing", 3, "bong ")

typeof(phantom)

phantom[1]

#tuple elements are immutable 


phantom[1] = "boiiiing" #!ERROR MESSAGE

# tuple elment order is immutable as well 

sort(phantom) #! ERROR

#tuple size is immutable 

pop!(phantom) #!ERROR
push!(phantom, "wowowow") #! ERROR

#  destructure assignment 

(name, age, breed) = phantom 
 
name 
age
breed

#! NamedTuple

#named tuple 
#construct named tupl 

phantom = (
    name = "phantomastic", 
    age = 23 , 
    height = 178,
    metric = "cm"
)

#element_name 
typeof(phantom)

# access named tuple element 
phantom[2]

phantom.name
phantom.age
phantom.height
phantom.metric

# IT IS SUPER IMMUTABLE but both are very memery efficient
