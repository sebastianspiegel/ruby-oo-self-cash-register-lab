class CashRegister

    attr_accessor :discount, :total, :price

    def initialize(discount = 0)
        @total = 0
        @discount = discount.to_f
        @cart = []
        # @price = price
    end
    
    def total
        @total 
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        @price = price * quantity
        while quantity > 0
            @cart << item 
            quantity -= 1
        end
    end

    def apply_discount
        self.total = total - total * (discount / 100)
        if discount == 0
            "There is no discount to apply."
        else 
            "After the discount, the total comes to $#{@total.round}."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        self.total -= price
    end
end
