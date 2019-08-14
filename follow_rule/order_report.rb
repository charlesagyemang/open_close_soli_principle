class OrderReport

	attr_reader :customer, :total

	def initialize(customer, total)
		@customer = customer
		@total = total
	end

end
