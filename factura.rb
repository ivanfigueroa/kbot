class Factura
    def initialize(amount, unitPrice, state)
        @amount = amount
        @unitPrice = unitPrice
        @state = state
    end

    def calculate
        return "Cantidad: #{@amount} \nPrecio Unitario: #{@unitPrice}\nEstado: #{@state}"
    end
end

amount = ARGV[0];
unitPrice = ARGV[1];
state = ARGV[2];
invoice_bot = Factura.new(amount, unitPrice, state)
puts invoice_bot.calculate()
