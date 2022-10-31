require 'pry'

class CashRegister


    attr_accessor :discount
    attr_accessor :total
    attr_accessor :last
    attr_accessor :items
   
  

  

    def initialize(discount = 0)

        @discount = discount
        @total = 0
        @items = []

    end

    def add_item(title, price, quantity = 1)

        @last = price * quantity

        @total += price * quantity

      

      quantity.times do 
         @items << title

      end

    end
# binding.pry

    def apply_discount

        if @discount != 0
            @total = @total - @total * @discount/100
            "After the discount, the total comes to $#{@total}."
        elsif @discount = 0
            "There is no discount to apply."
        end
    end

    def items

        @items

    end


    def void_last_transaction

        @total -= @last

        if @items == []
            @total = 0.0

        else

        end



    end





end

puts "hello" * 3