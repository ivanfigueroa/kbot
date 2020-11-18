class Factura
    def initialize(amount, unitPrice, state)
        @amount = amount.to_i
        @unitPrice = unitPrice.to_f
        @state = state
    end

    def getSubTotal()
        return @amount * @unitPrice
    end

    def getTaxByState(subtotal)
        #DEFAULT CA
        tax = 0.0825
        return subtotal * tax
    end

    def calculate
        subtotal = getSubTotal()
        subtotalString = "# #{@amount} * $#{@unitPrice} = $#{@subtotal}"
        totalAfterTax = getTaxByState(subtotal)
        return "Cantidad: #{@amount} \nPrecio Unitario: #{@unitPrice}\nEstado: #{@state}\n#{subtotalString}\nafter tax#{totalAfterTax}"
    end

    
end

amount = ARGV[0];
unitPrice = ARGV[1];
state = ARGV[2];
invoice_bot = Factura.new(amount, unitPrice, state)
puts invoice_bot.calculate()
