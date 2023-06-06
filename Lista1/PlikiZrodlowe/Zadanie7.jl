#Piotr Gałwiaczek
#Zad7 Lista1


f(x) = sin(x) + cos(3*x) #funkcja glowna
g(x) = cos(x)-3*sin(3*x) #pochodna funkcji głównej

#funkcja liczy przyblizenie pochodnej w punkcie x
function pochodna_przyblizona(x, h)
	return (f(x+h)-f(x))/h
end

#funkcja liczy blad(wartosc bezwzgledna roznicy "x" i "y") pomiedzy wartoscia x oraz y
function blad(x, y)
	return abs(x-y)
end

#funkcja oblicza przyblizoa pochodna w punkcie i oblicza wartosc prawdziwa.
function test(typ, x, n)
	wynik_g = g(typ(x))
	for i=0:n
		@printf("Przyblizona pochodna w punkcie %d dla h=2^(%d) w arytmetyce %s: ", x, -i, typ)
		h  = typ(2)^(-i) #przyrost
		przyblizenie = pochodna_przyblizona(typ(x), h) #obliczenie przyblizonej pochodnej
		println(przyblizenie) 
		print("Blad wynosi: ")
		println(blad(przyblizenie, wynik_g))
		print("1 + h = ")
		println(Float64(1)+h)
	end
end

test(Float64, 1, 54)