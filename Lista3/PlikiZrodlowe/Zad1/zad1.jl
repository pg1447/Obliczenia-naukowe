#Piotr Gałwiaczek
#
#Zad1

#Funkcja obliczajaca miejsce zerowe metoda bisekcji
function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
	u = f(a)
	v = f(b)
	e = b-a
	if sign(u) == sign(v)
		return -1, -1, 0, 1
	end
	i = 0
	while true
		i = i + 1
		e = e/Float64(2)
		c = a+e
		w=f(c)
		if abs(e)<delta || abs(w)<epsilon
                        return c, w, i, 0
                end
		if sign(w) != sign(u)
			b = c
			v = w
		else
			a = c
			u = w
		end
	end
end
