#Piotr Gałwiaczek
#Zad6 Lista 1


#funkcja liczy pierwsze wyrażenie z zadania. Parametry to typ danych i "x".
function f(typ, x)
	return sqrt(typ(x)^2 + typ(1))-typ(1)
end

#funkcja liczy drugie wyrażenie z zadania. Parametry to typ danych i "x".
#jako parametry nalezy podac typ w jakim wykonywane sa obliczenia, oraz wartosc 'x'
function g(typ, x)
	return typ(x)^2/(sqrt(typ(x)^2 + typ(1))+typ(1))
end

#funkcja wypisuje wyniki. Parametry to typ danych i "n"(zakres wykładnika)
function test(typ, n)
	for i=1:n
		@printf("Wynik funkcji f dla 8^%d z typem %s: ", -i, typ)
		println(f(typ, typ(8)^(-i)))
		@printf("Wynik funkcji g dla 8^%d z typem %s: ", -i, typ)
		println(g(typ, typ(8)^(-i)))
	end
end

test(Float64, 100)