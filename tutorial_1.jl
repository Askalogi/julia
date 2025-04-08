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

