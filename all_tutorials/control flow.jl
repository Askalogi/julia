
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