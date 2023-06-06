#Piotr Gałwiaczek
#
#Zad2

#Metoda obliczajaca miejsce zerowe metoda stycznych
function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	v = f(x0)
	if abs(v)<epsilon
		return 0, x0, v, 0
	end
	for k = 1:maxit
		poch = pf(x0)
		if abs(poch) <= eps(Float64) || poch == NaN || isinf(abs(poch))
			return x0, v, k, 2
		end
		x1 = x0-v/poch
		v = f(x1)
		if abs(x1-x0)<delta || abs(v)<epsilon
			return x1, v, k, 0
		end
		x0 = x1
	end
	return x0,f(x0),maxit,1
end
