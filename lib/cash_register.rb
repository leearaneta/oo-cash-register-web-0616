require "pry"

class CashRegister


	attr_accessor :total

	def initialize(discount = 0)
		@discount = discount
		@total = 0
	end

	def discount
		@discount
	end

	def add_item(name, price, quantity = 1)
		@price = price
		@total += price*quantity
		@items ||= []
		quantity.times do 
			@items << name
		end
	end

	def apply_discount
		if @discount != 0
			@total = @total*(1 - @discount.to_f/100)
			"After the discount, the total comes to $#{@total.to_i}."
		else
			"There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = @total - @price
	end
end