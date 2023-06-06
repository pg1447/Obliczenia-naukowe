#Piotr Gałwiaczek
#Zad3 Lista 1


#funkcja ktora generuje kolejne liczby dodajac do poprzedniej wartosc 2^(-52)
function generowanie(ile, pocz_przedzialu, typ, delta)
	for k=1:ile
		x = pocz_przedzialu+typ(k)*delta
		print(x)
		print("\t : ")
		println(bits(x))
	end	
end

#generowanie(10, Float64(1/2), Float64, Float64(2)^(-53))
generowanie(10, Float64(1), Float64, Float64(2)^(-52))
generowanie(10, Float64(2), Float64, Float64(2)^(-51))