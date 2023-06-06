#Piotr Gałwiaczek
#
#Zad3

#Funkcja obliczajaca miejsce zerowe metoda siecznych
function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	fa = f(x0)
	fb = f(x1)
	for k=1:maxit
		if abs(fa)>abs(fb)
			temp = x0
			x0 = x1
			x1 = temp
			temp = fa
			fa = fb
			fb = temp
		end
		s = (x1-x0)/(fb-fa)
		x1 = x0
		fb = fa
		x0 = x0 - fa*s
		fa = f(x0)
		if abs(x1-x0)<delta || abs(fa)<epsilon
			return x0, fa, k, 0
		end
	end
	return x0, fa, maxit, 1
end
