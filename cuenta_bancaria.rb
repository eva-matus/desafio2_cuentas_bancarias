# Ejercicio 1
# Dado el siguiente Diagrama UML, se pide en un proyecto desde cero:
# 1. Crear las clases Usuario y CuentaBancaria (1punto)
# 2. Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el número de
# cuenta y el saldo (el saldo por defecto será cero). (1punto)
# 3. Crear el método
# transferir
# en la clase Cuenta que reciba un monto y otra cuenta. Este método restará del saldo actual el
# monto y aumentará el saldo de la otra cuenta en el mismo monto (1punto)
# Tip: es necesario que exista el attr_writer o attr_accessor del saldo para acceder al saldo
# de la otra cuenta
# 4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a
# la otra.5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al menos 1
# cuenta bancaria. (1punto)
# 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1punto)

class CuentaBancaria
    attr_accessor :banco, :n_cuenta, :saldo
    def initialize(banco, n_cuenta, saldo = 0)
        @banco = banco
        @n_cuenta = n_cuenta
        @saldo = saldo
    end
    def transferir(monto, cuenta_externa)
        @saldo = @saldo - monto
        cuenta_externa.saldo = cuenta_externa.saldo + monto 
    end
end

class Usuario
    attr_accessor :nombre
    def initialize(nombre, cuentas) 
        @nombre = nombre
        @cuentas =  cuentas
    end
    def saldo_total
        total = 0
        @cuentas.each do |cuenta|
        total += cuenta.saldo 
        end
        total
    end
end

cuenta1 = CuentaBancaria.new('banco santander', 123456, 2000)
cuenta2 = CuentaBancaria.new('banco santander', 456789, 3000)
cuenta3 = CuentaBancaria.new('banco santander', 234789, 8000)
cuenta4 = CuentaBancaria.new('banco santander', 875219, 5000)
usuario1 = Usuario.new('nombre', [cuenta3, cuenta4])
cuenta4.transferir(2000, cuenta2)
print cuenta1.inspect
print cuenta2.inspect
print usuario1.saldo_total