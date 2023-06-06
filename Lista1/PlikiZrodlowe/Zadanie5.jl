#Piotr Gałwiaczek
#Zad5 Lista1


#FUNKCJE LICZĄCE:

#funkcja wykonujaca iloczyn skalarny dla tablicy 'x' oraz 'y'
#zaczynajac od pierwszych elementach, konczac na ostatnim
function suma_w_przod(x, y)
	s = typeof(x[1])(0) #zmienna w ktorej bedzie przechowywana wartosc iloczynu skalarnego
	for i = 1:length(x)
		s+=x[i]*y[i]
	end
	print("Suma w przod: ")
	println(s)
end

#funkcja wykonujaca iloczyn skalarny dla tablicy 'x' oraz 'y'
#zaczynajac od ostatnich elementow, konczac na pierwszym
function suma_w_tyl(x, y)
	s = typeof(x[1])(0) #zmienna w ktorej bedzie przechowywana wartosc iloczynu skalarnego
	for i = 0:length(x)-1
		s+=x[length(x)-i]*y[length(y) - i]
	end
	print("Suma w tyl: ")
	println(s)
end

#funkcja wykonujaca iloczyn skalarny dla tablicy 'x' oraz 'y'
#zaczynajac od najwiekszych liczb w tablicach, konczac na najmniejszych
function od_najw_do_najm(x, y)
	wyn_czesciowe = typeof(x[0])[0, 0, 0, 0, 0] #tablica z wynikami czesciowymi
	s = typeof(x[0])(0) #zmienna w ktorej bedzie przechowywana wartosc iloczynu skalarnego
	#petla obliczajaca wyniki czesciowe
	for i = 1:5
		wyn_czesciowe[i]=x[i]*y[i]
	end
	sort!(wyn_czesciowe, rev=true) #sortowanie tablicy malejaco
	#petla sumujaca wyniki czesciowe
	for i = 1:5
		s+=wyn_czesciowe[i]
	end
	print("Suma od najwiekszego do najmniejszego: ")
	println(s)
end

#funkcja wykonujaca iloczyn skalarny dla tablicy 'x' oraz 'y'
#zaczynajac od najmniejszych liczb w tablicach, konczac na najwiekszych
function od_najm_do_najw(x, y)
	wyn_czesciowe = typeof(x[0])[0, 0, 0, 0, 0] #tablica z wynikami czesciowymi
	s = typeof(x[0])(0)
	#petla obliczajaca wyniki czesciowe
	for i = 1:5
		wyn_czesciowe[i]=x[i]*y[i]
	end
	sort!(wyn_czesciowe) #sortowanie tablicy rosnaco
	#petla sumujaca wyniki czesciowe
	for i = 1:5
		s+=wyn_czesciowe[i]
	end
	print("Suma od najmniejszego do najwiekszego: ")
	println(s)
end

#FUNKCJE WYPISUJACE:

#funkcja testujaca. Parametrem jest typ danych
function test(typ)
	print("test dla ")
	println(typ)
	x = typ[2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
	y = typ[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]
	suma_w_przod(x, y)
	suma_w_tyl(x, y)
	od_najw_do_najm(x, y)
	od_najm_do_najw(x, y)
end

test(Float32)
test(Float64)