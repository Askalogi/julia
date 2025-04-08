
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
