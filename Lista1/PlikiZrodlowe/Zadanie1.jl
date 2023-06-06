#Piotr Gałwiaczek
#Zad1 Lista 1

#FUNKCJE LICZĄCE:

#funkcja liczy liczbe macheps. Parametrem jest typ danych
#Rozpoczynamy od start=1 i dzielimy na dwa(według wskazówki)
Using printf
function count_macheps(typ)
	x = typ(1)
	y = typ(1)
	while typ(1) + x > typ(1)
		y = x
		x/=typ(2)
	end
	return y
end

#funckja liczy liczbe eta. Parametrem jest typ danych
#Rozpoczynamy od start=2 i dzielimy na dwa(według wskazówki)

function count_eta(typ)
	start = typ(1)
	while start/typ(2) > 0
		start/=typ(2)
	end
	return start
end

#funkcja liczy liczbe MAX. Parametrem jest typ danych
function count_max(typ)
	x = typ(1)	#liczba MAX
	ile_dodajemy = typ(2) #ta zmienna dodaje wartość do 'MAX'
	#Ta pętla liczy dodaje wartości do x (isinf według wskazówki)
	while !isinf(x+ile_dodajemy)
		x+=ile_dodajemy
		ile_dodajemy*=typ(2)
	end
	notEndLoop = 1 #koniec petli
    #pętla dodaje wartości dopóki nie osiągnie MAX i dalsze dodwanie nie będzie miało sensu
	while notEndLoop == 1
		#szukanie największej liczby nie zmieniającej nam 'x'
		while isinf(x+ile_dodajemy)
			ile_dodajemy/=typ(2)
		end
		oldValue = x #sprawdzamy czy nie zmienilo nam sie x
		while !isinf(x+ile_dodajemy)
			oldValue = x
			x += ile_dodajemy
			if oldValue == x #jesli nie to:
				notEndLoop = 0 #zakoncz petle
				break
			end
		end
	end
	return x
end

#FUNKCJE WYPISUJĄCE:

#funkcja wypisuje wyniki. Parametry widoczne w funkcji
function test(nazwa_testu, nazwa_typu, nazwa_funkcji, wynik_mojej_funkcji, prawdziwa_wartosc)
	@printf("Moje %s dla %s: ", nazwa_testu, nazwa_typu)
	println(wynik_mojej_funkcji)
	@printf("Wywolanie funkcji %s dla %s: ", nazwa_funkcji, nazwa_typu)
	println(prawdziwa_wartosc)
	println("")
end

#TESTOWANIE ZADANIA

test("eps", "Float16", "eps", count_macheps(Float16), eps(Float16))
test("eps", "Float32", "eps", count_macheps(Float32), eps(Float32))
test("eps", "Float64", "eps", count_macheps(Float64), eps(Float64))

test("eta", "Float16", "nextfloat", count_eta(Float16), nextfloat(Float16(0.0)))
test("eta", "Float32", "nextfloat", count_eta(Float32), nextfloat(Float32(0.0)))
test("eta", "Float64", "nextfloat", count_eta(Float64), nextfloat(Float64(0.0)))

test("max", "Float16", "realmax", count_max(Float16), realmax(Float16))
test("max", "Float32", "realmax", count_max(Float32), realmax(Float32))
test("max", "Float64", "realmax", count_max(Float64), realmax(Float64))