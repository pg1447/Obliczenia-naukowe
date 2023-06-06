#Piotr Gałwiaczek
#Zad2 Lista 1


#funkcja licząca podane wyrazenie
function wyrazenie(typ)
	return typ(3)*((typ(4)/typ(3))-typ(1))-typ(1)
end

#funkcja testujaca
function test(typ)
	@printf("wyrazenie(%s): ", typ)
	println(wyrazenie(typ))
	@printf("eps(%s): ", typ)
	println(eps(typ))
end

test(Float16)
test(Float32)
test(Float64)