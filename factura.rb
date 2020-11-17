class Factura
    def initialize(amount, unitPrice)
        @amount = amount
        @unitPrice = unitPrice
    end

    def calculate
        return "Cantidad: #{@amount} \nPrecio Unitario: #{@unitPrice}"
    end
end

amount = ARGV[0];
unitPrice = ARGV[1];
invoice_bot = Factura.new(amount, unitPrice)
puts invoice_bot.calculate()
