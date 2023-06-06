#Piotr Gałwiaczek
#
#Zad4

include("mzerowe.jl")
using .mzerowe

#testowana funkcja
f(x) = sin(x)-((1/2)x)^2
#pochodna funkcji f
pf(x) = cos(x)-(x/2)


print("Metoda bisekcji: ")
print(mzerowe.mbisekcji(f, Float64(1.5), Float64(2), Float64(1/2)*Float64(10)^-5, Float64(1/2)*Float64(10)^-5))
print("\nMetoda stycznych: ")
print(mzerowe.mstycznych(f, pf, Float64(1.5), Float64(1/2)*Float64(10)^-5, Float64(1/2)*Float64(10)^-5, 100))
print("\nMetoda siecznych: ")
print(mzerowe.msiecznych(f, Float64(1), Float64(2), Float64(1/2)*Float64(10)^-5, Float64(1/2)*Float64(10)^-5, 100))
print("\n")
