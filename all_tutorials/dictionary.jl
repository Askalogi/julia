
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

