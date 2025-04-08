#! MULTIPLE DISPATCH 

#funciton overloading 
#will only work if it has the type int64
function mytypeof(x::Int64)
    return "Int64"
end


#2 methods isntead of 1 
function mytypeof(x::Number)
    return "Number"
end

#2 methods so 2 behaviours of this funciton based on the data type

function mytypeof(x::Any)
    return "Any"
end

#lets test the multiple dispatch 
function mygenericfunction(x)
    println("$x is type\n",
            mytypeof(x)
            )
end

mygenericfunction(1)
mygenericfunction("boi")
mygenericfunction(1.3)
mygenericfunction(pi)
mygenericfunction(1//3)
mygenericfunction(1//4)
mygenericfunction([1,23,4])



#new data type and new method 
struct Ghost
    name::String
end

function mytypeof(x::Ghost)
        return "Ghost"
end

phantom = Ghost("I am a ghost")
mygenericfunction(phantom)

methods(mytypeof)
#should have 4 methods 

methods(mygenericfunction)
#has 1 method regardign of the inside funciton

methods(+)
#198 different methods 