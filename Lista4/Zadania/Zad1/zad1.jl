#Piotr Gałwiaczek
#
#Zad 1

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



println(ilorazyRoznicowe([3.0, 1.0, 5.0, 6.0], [1.0, -3.0, 2.0, 4.0]))
