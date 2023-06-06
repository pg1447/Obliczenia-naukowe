#Piotr Gałwiaczek
#
#Zad 3

using interpolacja
using PyPlot

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

f(x) = 1/(1+(x^2))
g(x) = abs(x)
k(x) = sin(x)
rysujNnfx(k, -5.0, 5.0, 5)
