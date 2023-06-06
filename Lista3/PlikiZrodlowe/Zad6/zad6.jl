#Piotr Gałwiaczek
#
#Zad6

include("mzerowe.jl")
using .mzerowe

#przyblizenie podstawiane do epsiolna i delty we wszystkich przykladach
przyblizenie = Float64(10)^(-5)

#funkcja obliczajaca miejsce zerowe funkcji f za pomoca metod: bisekcji, stycznych, siecznych
#	f	testowana funkcja
#	pf	pochodna funkcji f
#	b0,b1	przedzialy poczatkowe w metodzie bisekcji
#	n	poczatek dla metody stycznych
#	x0,x1	dane poczatkowe dla metody siecznych
#	delta,epsilon	przyblizenia
#	wzor	string testowanego wzoru
function miejscaZerowe(f, pf, b0::Float64, b1::Float64, n::Float64, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, wzor::AbstractString)
	@printf("Miejsce zerowe dla %s\n", wzor)
	print("Metoda bisekcji: ")
	print(mzerowe.mbisekcji(f, b0, b1, delta, epsilon))
	print("\nMetoda stycznych: ")
	print(mzerowe.mstycznych(f, pf, n, delta, epsilon, 100))
	print("\nMetoda siecznych: ")
	print(mzerowe.msiecznych(f, x0, x1, delta, epsilon, 100))
	print("\n")
end

#pierwsza testowana funkcja
f1(x) = Base.MathConstants.e^(1-x)-1
#pochodna funkcji f1
pf1(x) = -Base.MathConstants.e^(1-x)

#druga testowana funkcja
f2(x) = x*Base.MathConstants.e^(-x)
#pochodna funkcji f2
pf2(x) = Base.MathConstants.e^(-x)-x*Base.MathConstants.e^(-x)


miejscaZerowe(f1, pf1,	Float64(0),	Float64(2),	Float64(2),	Float64(1.5),	Float64(2),	przyblizenie,	przyblizenie,	"e^(1-x)-1"	)
miejscaZerowe(f2, pf2,	Float64(-0.1),	Float64(0.1),	Float64(-1),	Float64(-1),	Float64(-0.5),	przyblizenie,	przyblizenie,	"x*e^(-x)"	)
