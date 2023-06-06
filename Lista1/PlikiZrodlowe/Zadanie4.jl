#Piotr Gałwiaczek
#Zad4 Lista 1


#liczba delta, czyli najmniejsza liczba jaka mozna zapisac w przedziale liczb <1,2> (z poprzedniego zadania)
delta = Float64(2)^(-52)
#zmienna za pomoca ktorej bedziemy szukali najmniejszej liczby spelniajacej nasze rownanie
x = Float64(1) + delta
#petla wykonujaca sie od 1 do liczby spelniajacej nasze rownanie
while Float64(x*Float64(1/x)) == 1 && x < 2
	x+=delta #przechodzimy na kolejna liczbe
	#println(x)
	#println(Float64(x*Float64(1/x)))
end
print("Liczba x dla ktorej x*(1/x)!=1 to: ")
println(x)
print("Wynik ten wynosi: ")
println(Float64(x*Float64(1/x)))