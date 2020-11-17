class Factura
    def initialize(amount)
        @amount = amount
    end

    def calculate
        return "Cantidad: #{@amount}"
    end
end

amount = ARGV[0];
invoice_bot = Factura.new(amount)
puts invoice_bot.calculate()
