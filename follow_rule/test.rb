require 'rspec'
require './order_report.rb'
require './bill_of_lading.rb'
require './invoice.rb'

describe 'Order Report' do

	#Initialize Global Variables
	let(:order_report)   {
		 OrderReport.new("customer", 10.00)
	}

	let(:bill_of_lading) {
		BillOfLading.new(
			customer: order_report.customer,
			total: order_report.total,
			address: "Adresse"
		)
	}

	let(:invoice) {
		Invoice.new(order_report.customer, order_report.total)
	}

	it 'should create successfully' do
		expect(order_report.customer).to eq("customer")
	end

	it 'should have an invoice method to print invoices' do
		expect(order_report).not_to respond_to(:invoice)
	end

	it 'should have a bill of laden method' do
		expect(order_report).not_to respond_to(:bill_of_lading)
	end

	it 'should print the invoice using the invoice class' do
		expect(invoice.print_out).to eq(10.00)
	end

	it 'should print the bill of lading using the bill of lading class' do
		expect(bill_of_lading.print_out).to eq("Adresse")
	end

end
