#Piotr Gałwiaczek
#
#modul

module interpolacja

export ilorazyRoznicowe, warNewton, rysujNnfx, oblicz_zm, pierwiastkiCzebyszewa, rysujNnfxCzebyszew

using PyPlot

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


function rysujNnfx(f, a::Float64, b::Float64, n::Int)
	x = Vector{Float64}
	x = zeros(n+1)
	y = Vector{Float64}
	y = zeros(n+1)

	h = (b-a)/n
	for i=1:n+1
		x[i] = a+(i-1)*h
		y[i] = f(x[i])
	end
	n = 100
	h = (b-a)/n
	il_roz = ilorazyRoznicowe(x, y)
	x2 = Vector{Float64}
	x2 = zeros(n+1)
	y2 = Vector{Float64}
	y2 = zeros(n+1)
        y3 = Vector{Float64}
        y3 = zeros(n+1)
	for i=1:n+1
		x2[i] = a+(i-1)*h
		y2[i] = warNewton(x, il_roz, x2[i])
		y3[i] = f(x2[i])
	end
	plot(x2, y2, x2, y3, linewidth=2.0)
end

function oblicz_zm(n::Int, m::Int)
        return cos(((2*m+1)/(n+1))*(pi/2))
end


function pierwiastkiCzebyszewa(n::Int, a::Float64, b::Float64)
        x = Vector{Float64}
        x = zeros(n+1)
        for m=1:n+1
                x[m] = (1/2)*((b-a)*oblicz_zm(n, m-1) + (a+b))
        end
        return x
end

function rysujNnfxCzebyszew(f, a::Float64, b::Float64, n::Int)
	x = Vector{Float64}
	x = zeros(n+1)
	y = Vector{Float64}
	y = zeros(n+1)

	x = pierwiastkiCzebyszewa(n, a, b)
	for i=1:n+1
		y[i] = f(x[i])
	end
	n = 100
	h = (b-a)/n
	il_roz = ilorazyRoznicowe(x, y)
	x2 = Vector{Float64}
	x2 = zeros(n+1)
	y2 = Vector{Float64}
	y2 = zeros(n+1)
        y3 = Vector{Float64}
        y3 = zeros(n+1)
	for i=1:n+1
		x2[i] = a+(i-1)*h
		y2[i] = warNewton(x, il_roz, x2[i])
		y3[i] = f(x2[i])
	end
	plot(x2, y2, x2, y3, linewidth=2.0)
end

end
