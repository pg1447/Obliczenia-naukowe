#Piotr Gałwiaczek
#
#Funkcje obliczajace miejsca zerowe

module mzerowe
export mbisekcji, mstycznych, msiecznych

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


#Metoda obliczajaca miejsce zerowe metoda stycznych
function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	v = f(x0)
	if abs(v)<epsilon
		return 0, x0, v 
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

end