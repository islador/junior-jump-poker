require_relative "/home/islador/poker/models/card.rb"
require_relative "/home/islador/poker/models/hand.rb"
require "./specs/spec_helper"

describe Hand do 
	@card1 = Card.new("Two", 2, "Hearts")
	@card2 = Card.new("Three", 3, "Hearts")
	@card3 = Card.new("Four", 4, "Hearts")
	@card4 = Card.new("Five", 5, "Hearts")
	@card5 = Card.new("Six", 6, "hearts")

	it "takes three args" do
		#Builds hand from scratch
		expect {Hand.new()}.not_to raise_error

		#Perfect build
		expect {Hand.new(@card1, @card2, @card3, @card4, @card5)}.not_to raise_error

		#Above/Below threshold
		expect {Hand.new(@card1)}.to raise_error ArgumentError
		expect {Hand.new(@card1, @card2, @card3, @card4, @card5, @card1)}.to raise_error
	end

	before(:each) do
		@hand = Hand.new(@card1, @card2, @card3, @card4, @card5)
	end


	subject{@hand}

	it {should respond_to(:type)}
	it {should respond_to(:value)}
	it {should respond_to(:win)}


end
