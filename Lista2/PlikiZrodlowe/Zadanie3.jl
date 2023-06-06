#Piotr Gałwiaczek
#Zad3 Lista 2

include("hilb.jl")
include("matcond.jl")

using LinearAlgebra;

i=[2,5,8,11,13,16,19]
for n in i
	println()
	println()
	println("Macierz stopnia ", n)
	A = hilb(n)
	x = ones(Float64,(n,1))
	b = A*x
	println()

	println("Metodą Gaussa: ")
	x1=A\b
	println(x1)
	println("(błąd): ", norm(x-x1)/norm(x))
	println()

	println("Za pomocą macierzy odwróconej: ")
	x2=inv(A)*b
	println(x2)
	println("(błąd): ", norm(x-x2)/norm(x))
	println()

	println("Wskaźnik uwarunkowania: ", cond(A))
	println("Rząd macierzy: ", rank(A))
	println()
end


i=[5,10,20]
cc=[1,10,10^3,10^7,10^12,10^16]
for n in i
	for c in cc
		println()
		println()
		println("Macierz wymiaru ",n)
		println("Losowa macierz z uwarunkowaniem :",c)
		x=ones(Float64, (n,1))
		R=matcond(n,Float64(c))
		b = R*x

		println("Metodą Gaussa: ")
		x1=R\b
		println(x1)
		println("(błąd): ", norm(x-x1)/norm(x))
		println()

		println("Za pomocą macierzy odwrotnej: ")
		x2=inv(R)*b
		println(x2)
		println("(błąd): ", norm(x-x2)/norm(x))
		println()
		println("Wskaźnik uwarunkowania: ", cond(R))
		println("Rząd macierzy: ", rank(R))
		println()
	end
end
