class CuentaBancaria
    attr_accessor :banco, :n_cuenta, :saldo
    def initialize(banco, n_cuenta, saldo)
        @banco = banco
        @n_cuenta = n_cuenta
        @saldo = saldo
    end
    def transferir(monto, otra_cuenta)
        @saldo = @saldo - monto
        @monto = monto
        @otra_cuenta = cuenta
    end
end