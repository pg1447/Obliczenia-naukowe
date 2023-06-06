#Piotr Gałwiaczek
#
#Programy testujace funkcje z zadania 1, 2, oraz 3

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
f1(x) = x^2
#pochodna funkcji f1
pf1(x) = 2*x

#druga testowana funkcja
f2(x) = sin(x)
#pochodna funkcji f2
pf2(x) = cos(x)

#trzecia testowana funkcja
f3(x) = 4*(x+4)      
#pochodna funkcji f3
pf3(x) = 4

#czwarta testowana funkcja
f4(x) = cos(x)      
#pochodna funkcji f4
pf4(x) = -sin(x)


miejscaZerowe(f1, pf1,	Float64(-1),	Float64(1),	Float64(2),	Float64(1.5),	Float64(2),	przyblizenie,	przyblizenie,	"x^2"		)
miejscaZerowe(f2, pf2,	Float64(2),	Float64(4),	Float64(4),	Float64(4),	Float64(4.5),	przyblizenie,	przyblizenie,	"sin(x)"	)
miejscaZerowe(f3, pf3,  Float64(-5),	Float64(-3),	Float64(-3),    Float64(-5),    Float64(-4.5),  przyblizenie,   przyblizenie,   "4*(x+4)"      )
miejscaZerowe(f4, pf4,  Float64(0),	Float64(3),	Float64(2),	Float64(2),	Float64(2.1),	przyblizenie,   przyblizenie,   "cos(x)"      )
