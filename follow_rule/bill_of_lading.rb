class BillOfLading  < OrderReport
	def initialize(**args)
		@address = args[:address]
		puts "======#{@address}=====iiaiia"
	end

	def print_out
		puts "Bill Of Lading"
		puts @customer
		@address
	end
end
