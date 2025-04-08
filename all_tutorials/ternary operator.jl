
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
