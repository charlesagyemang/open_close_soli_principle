require 'rspec'
require './order_report.rb'

describe 'Order Report' do
	#global variables
	let(:order_report) { 	order_report = OrderReport.new("customer", 10.00) }


	it 'should create successfully' do
		expect(order_report.customer).to eq("customer")	
	end

	it 'should have an invoice method to print invoices' do
		expect(order_report).to respond_to(:invoice)
	end

	it 'should have a bill of laden method' do
		expect(order_report).to respond_to(:bill_of_lading)
	end


end
