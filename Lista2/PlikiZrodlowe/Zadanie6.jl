#Piotr Gałwiaczek
#Zadanie6 Lista2




println("c=-2, x0=1")
x = 1.0
c = -2.0
for i=1:40
        x0=x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end

println("")


println("c=-2, x0=2")
x = 2.0
c = -2.0
for i=1:40
        x=x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")


println("c= -2, x0 = 1.99999999999999")
x = 1.99999999999999
c = -2.0
for i=1:40
        x=x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")


println("c= -1, x0 = 1")
x = 1.0
c = -1.0
for i=1:40
        x=x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")

println("c= -1, x0 = -1")
x = 1.0
c = -1.0
for i=1:40
        x= x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")


println("c= -1, x0 = 0.75")
x = 0.75
c = -1.0
for i=1:40
        x = x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")


println("c= -1, x0 = 0.25")
x = 0.25
c = -1.0
for i=1:40
        x=x^2 + c
        print("Wartość x",i," jest równa: ",x)
        println("")
end
println("")
