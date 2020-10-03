class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'El numero no esta entre 1 y 13'
        end
        if !['C', 'D', 'E', 'T'].include?(pinta)
            raise ArgumentError, 'No es la pinta amigx'
        end
            @numero = numero
            @pinta = pinta
    end
end