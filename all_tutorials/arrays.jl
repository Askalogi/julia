
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