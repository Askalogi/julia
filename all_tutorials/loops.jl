
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