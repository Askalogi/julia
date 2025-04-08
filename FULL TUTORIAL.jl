#=
--------------------------------------------------------------------------------
THIS IS THE BASIC MATH JULIA FILE FROM THE DOGGOD TUTORIAL
ALSO THIS IS A MULTI LINE COMMENT SO COOL
--------------------------------------------------------------------------------
=#

#! BASIC MATH OPERATIONS
1 + 1

2 - 1

3*4

10/5

5/2

2^3

10%3 #Gives the ypoloipo

1 + (3-7)^3 * 6

#! BOOLEANS

3<2

3>=3

2>0

0==0

# && short circuiting AND

1==1 && 1>1

2>=0 && 3==3 

# || short cuicruiting OR 

1 == 1 || 2>9 

0<-1 || 13 == 8

#true = 1 and false = 0 

false + true + true 

#! VARIABLES 

x = 1 

y = 3

z = x + y 

#how to incement
i = 1

i = i+1
i+=1

# how to perform basic math 
#using variables 

height = 2 
width = 3 
area = height * width

# use Ctrl enter isntead of shift enter 
i +=1 

#! Data Types | Numbers
typeof(-3)

typeof(2.3)

example::Float16 = 1.2

typeof(example)

0.1 + 0.2

1/3 

typeof(1/3)

1//3

typeof(1//3)


1//3 + 1//7

typeof(pi)

round(pi; digits = 10)

1000000 == 1_000_000

sqrt(4)

4/2

5/2

div(4,2)

#always an integer
div(5,2) 

# \div<tab>
4 ÷ 2

5 ÷ 2

#! CHAR AND STRINGS
typeof('a')

typeof("str")

typeof("Hello, World")

typeof("a")

#How to display quatation marks
println("phantom says \" bingbong \"")

#OR

println("""phantom says " bingbong " """)

#how to display new lines 
println("1\n2\n3\n")

#how to display tabs 
println("1\t2\t3")

#how to concatenate (*)
s1 = "Hello "

s2 = "World"

s1_s2 = s1 * s2

# how to interpolate ($string)

s3 = "phantom"

println("$s3 dot bingbong")

#unicode characters
#\alpha<tab>
typeof("α ΕΛΛΗΝΙΚΑ")

#\:dog:<tab> DONT DO THAT
println(typeof("🐶"))
typeof('🐶')

🐶 = 4

γ = 2 

#! ARRAYS 

#vector or column vector
col_vector = [1,2,3]

typeof(col_vector)

#constructa row vector

row_vector = [1.0 2.0 3.0]
#rows x columns 
typeof(row_vector)

#name[index#] 1-based in JULIA

#access vector element 
col_vector[2]

#mutate vector element 

col_vector[2] = 20
col_vector

# find # of elements in a vector 
length(col_vector)

#sort vector elements 
# (descending) and non destructive

sort(col_vector)
sort(col_vector ; rev= true)

col_vector # NOTHING CHANGED

# sort descending and destructive its the !

sort!(col_vector)
sort!(col_vector ;rev=true)

col_vector

#in place the data itself is being changed and manipulated 

#add new elemnet to the end of the vector 
push!(col_vector, 110)
display(col_vector)

# remove element from the end of a vector 
pop!(col_vector)
col_vector

#construct a matrix with 2 rows and 3 columns 

matrix = [1 2 3 ; 4 5 6]
typeof(matrix)

#access element in row 1 and column 3
matrix[1,3]

#julia uses column major order 

matrix[5]
#=
So in the example above the index starts at column 1 row 1 and then goes to column 1 row 2 becasue it is column major
and continues with that same logic
=#

#construct array with elemnts 
#of different data types 

multi_types = [
    1, 1.0, 3/pi, 1//3,
    'd', "bingy" , [7,8,9]
]

typeof(multi_types)

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

#! DICTIONARY
#key-value pairs 
#hash table = dictrionary 

#construct the dictionary 

# => pairs character
phantom = Dict(
    "name" => :phantomas,
    :age => 23,
    103 => "boing"

)
# key => value they can be any datatype
# :sth is a symbol data type doesnt take up any memory and ist like string 

# dictionary is unorderd collection so you CANT sort a dictionary 
phantom["name"]
phantom[:age]
phantom[103]

phantom[:age] = 10034
phantom
phantom[103] = "biiiing"
phantom
# add a kye-value pair 

phantom[:study] = "Physics"

phantom #RANDOM POSTION DISPLAYED

#remove a key value pair

pop!(phantom, 103) #the dict name and then the key

phantom


#! STRUCT ?
#user-defined named fields 

#declare struct 

mutable struct Phantom
    name::String
    age::Integer
    height::Float16
end

# create a struct instance 
me = Phantom("Asteris",
    23,
    1.80
)

typeof(me) # type phantom or an isntance of a struct 

#access struct field value 
me.age
me.name
me.height

# cannot add new fields to struct
phantom.email = "bing@gmail.com" #! ERROR 

#! CONTROL FLOW 
#perform tasks depending on certain conditions 

x, y = 1,2 

x, y = y, x

x = y 

#tasks 

task_1() = println("$x > $y")

#new_func = funciton()

task_2() = println("$x < $y")

task_3() = println("$x == $y")

# Conditional Evaluation So we Dont Calculate all 3 tasks at the same time 

# if expression 

if x>y 
    task_1()
elseif x<y 
    task_2()
else 
    task_3()
end 

#! TRNARY OPERATOR
# ? : ternary operator 
# a ? b : c  required spaces 

# conditions

x, y = 1,2 

x,y = y,x 

x = y 

#tasks 

task_1() = println("$x > $y")

#new_func = funciton()

task_2() = println("$x < $y")

task_3() = println("$x == $y")


#ternary operator 
#if ...... elseif..... else ...... end
x>y ? task_1() : (x<y ? task_2() : task_3)

#! WHILE LOOP

# while loop 

i = 1 

while i <=10
    
    println(*)
    i +=1
end 

#!SOS IF YOU GET STUCK IN AN INFINITE LOOP CLICK ON TERMINAL AND PRESS Ctrl + C 


#! FOR LOOP
for i = 1:10 #start :  end 
    println(i)
end

for i = 0:5:50 #start : step : end
    println(i)
end


#! FOR IN 
# loop over an array
my_array = [10, 20, 30]

for element in my_array
    println(element)
end

# loop over a string

mystring = "phantomastic"

for str in mystring
    println(str)
end

# same thing with a dictionary

my_dict = Dict(
    :kanye => "Graduation",
    :jayz => "The Blueprint",
    :tyler => "Chromakopia",
    :savage => "Savage Mode II"
)
# for key, value 
for (rappers,albums) in my_dict
    println("$rappers\t->\t$albums")
end

#! Comprehension
# for loop to construct an array 

# [ expression for i = range ]

cubed = [i^3 for i =1:10]
sinus = [sin(i) for i = 0:pi/2:2*pi]

cubed[8]


#! FUNCTION 
# arguments x and y 
function addition(x,y)
    x + y
end
#this code is now avaliable in memory

addition(3,10) #calling a function

f(a,b) = sqrt(a+b^2)
f(3,1)

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