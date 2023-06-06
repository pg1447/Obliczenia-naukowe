#Piotr Gałwiaczek
#
#Zad5

include("mzerowe.jl")
using .mzerowe

#testowana funkcja
f(x) = 3*x - Base.MathConstants.e^x

print("Punkt przeciecia funkcji 3x i e^x:\n")
print(mzerowe.mbisekcji(f,Float64(0), Float64(1), Float64(10)^(-4), Float64(10)^(-4)))
print("\n") 
print(mzerowe.mbisekcji(f,Float64(1), Float64(2), Float64(10)^(-4), Float64(10)^(-4)))
