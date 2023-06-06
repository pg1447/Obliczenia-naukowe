#Piotr Gałwiaczek
#
#Zad 2



function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
	n = length(x)
	if ( n != length(f) )
		print("Blad\n")
		return -1
	end
	d = Vector{Float64}
	d = zeros(n)
	for i=1:n
		d[i] = f[i]
	end
	for j=2:n
		for i=n:-1:j
			d[i] = (d[i]-d[i-1])/(x[i]-x[i-j+1])
		end
	end
	return d
end



function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
	n = length(x)
	w = Vector{Float64}
	w = zeros(n)
	w[n] = fx[n]
	for i=n-1:-1:1
		w[i] = fx[i]+(t-x[i])*w[i+1]
	end
	return w[1]
end


println(warNewton([3.0, 1.0, 5.0, 6.0], ilorazyRoznicowe([3.0, 1.0, 5.0, 6.0], [1.0, -3.0, 2.0, 4.0]), 0.5))
