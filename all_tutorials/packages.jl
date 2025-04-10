#! PACKAGES
# Plots Package 

using Plots

f(x) = x^3 -2x^2 +3x

plot(f)

plot(f;
    
    linewidth = 5,
    color = :red,
    lims = (-2,2),
    
)

for i = 1:3:12
    plot(f(i))
end