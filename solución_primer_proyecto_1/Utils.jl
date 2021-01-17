struct Grid{T<:Real}
    lim_abs :: T
    lim_ord :: T
    tam_espacio :: T
end

"""
	makeGrid(g::Grid)
Crear una matriz de rangos [rango_abcisas,rango_ordenadas]
"""
function makeGrid(g::Grid)
    rango_ancisas = -g.lim_abs:g.tam_espacio:g.lim_abs
    rango_ord = -g.lim_ord:g.tam_espacio:g.lim_ord
end



begin ##*
    # Julia y Mandelbrot
    fc(z,c)= z^2+c
    
    # Formas biológicas
    f₁(z,c)=sin(z)+z^2+c
    f₂(z,c)=z^z+z^6+c
    f₃(z,c)=z^z+z^5+c
    f₄(z,c)=z^5+c
    f₅(z,c)=z^3+c
end

""" *
	testJM(z::Complex)
Comprobar el criterio de convergencia para los conjuntos de Julia y Mandelbrot
"""
function testJM(z::Complex)
	return sqrt(real(z)^2 + imag(z)^2)<2
end


"""
	testbiomorph(z::Complex,τ::Real)
Comprobar el criterio de convergencia para los conjuntos de Julia y Mandelbrot
"""
function testbiomorph(z::Complex,τ::Real)
	return (real(z)<τ)&&(imag(z)<τ)
end


"""
	iterate(test::Function,f::Function,z::Complex,iter::Integer)
Interar z sobre una funcion f
"""
function iterate(test::Function,f::Function,z::Complex,iter::Integer)
    for i in 1:iter
        if test(z)==false
            return false
        else
            z = f(z)
        end
    end
    return true
end


"""*
	colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer)
Retornar el número de iteraciones para un valor dado de z minetras un criterio de convergencia sea válido
"""
function colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer)
	iteraciones  = 0
    return iteraciones
end

function colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer,τ::Integer)
	
end


