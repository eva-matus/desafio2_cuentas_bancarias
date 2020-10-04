# Ejercicio 2
# Baraja de cartas
# Crear la clase carta con los atributos numero y pinta (1punto)
# Agregar los getters y setters a ambos atributos
# Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la pinta que
# está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'
# (1punto)
# Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb
# Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
# (1punto)
# Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta
# y guardarse dentro del arreglo cartas.
# Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle
# Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop
# (1punto)
# Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.
# (1punto)

require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize(cartas)
        pintas = ['C', 'D', 'E', 'T']
        @cartas = []
        pintas.each do |pinta|
            13.times do |i|
                @cartas.push(Carta.new(i+1, pinta))
            end
        end
    end
    def barajar
        @cartas = @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
    end

end