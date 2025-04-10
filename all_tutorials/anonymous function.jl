#! ANONYMOUS FUNCITON 

firstname = [
    "Asteris",
    "Eleni",
    "BingBong"
]

@show map(length,firstname) 

map(x -> x* " Asteris", firstname) #anonymous funciton that adds that string to every single string variable inside the []
