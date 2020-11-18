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
        tax = 0.0825;
        @taxPercentage = 0.0825 * 100
        return subtotal * tax
    end

    def getDiscount(totalAfterTax)
        if (totalAfterTax >= 1000)
            @discountPercentage = 3
            return totalAfterTax * 0.03
        else
            @discountPercentage = 0
            return 0
        end
    end

    def calculate
        subtotal = getSubTotal()
        subtotalString = "# #{@amount} * $#{@unitPrice} = $#{subtotal}"
        tax = getTaxByState(subtotal)
        taxString = "CA (%#{@taxPercentage}) = $#{tax}"
        totalAfterTax = subtotal-tax
        discount = getDiscount(totalAfterTax);
        return "Cantidad: #{@amount} \nPrecio Unitario: #{@unitPrice}\nEstado: #{@state}\n#{subtotalString}\n#{taxString}\ndiscount: #{discount}"
    end

    
end

amount = ARGV[0];
unitPrice = ARGV[1];
state = ARGV[2];
invoice_bot = Factura.new(amount, unitPrice, state)
puts invoice_bot.calculate()
