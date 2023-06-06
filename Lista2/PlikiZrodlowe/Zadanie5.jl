#Piotr Gałwiaczek
#Zad5 Lista 2



println("Eksperyment ciagly dla Float32")
p0 = Float32(0.01)
r = Float32(3.0)

for i=1:40
        p0=Float32(p0) + Float32(r*p0*Float32(1.0-p0))
	println("Wartość p", i, " jest równa: ", p0)
end


println("Eksperyment ciagly dla float64")
p0 = 0.01
r = 3.0

for i=1:40
        p0+= r*p0*(1.0-p0)
        println("Wartość p", i, " jest równa: ", p0)
end


println("")

println("Eksperyment przerwany dla float32")
p = Float32(0.01)
r = Float32(3.0)

for i=1:10
	p=Float32(p) + Float32(r*p*Float32(1.0-p))
	println("Wartość p", i, " jest równa: ", p)
end

p=trunc(p*1000)/1000
println("")
println("p10 po obcięciu: ", p)

for i=1:30
	p=Float32(p) + Float32(r*p*Float32(1.0-p))
	println("Wartość p", i+10, " jest równa: ", p)
end

