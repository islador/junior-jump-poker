require_relative '/home/islador/poker/models/card.rb'
require './specs/spec_helper'

describe Card do
	it "takes three args" do
		expect {Card.new("King", 13, "hearts")}.not_to raise_error
		expect {Card.new(13, "hearts")}.to raise_error ArgumentError
		expect {Card.new("King", "hearts")}.to raise_error ArgumentError
		expect {Card.new("King", 13)}.to raise_error ArgumentError
		expect {Card.new("King", 13, "hearts", 40)}.to raise_error ArgumentError
	end

	before(:each) do
		@ace = Card.new("Ace", 14, "spades")
	end


	subject{@ace}
	it {should respond_to(:name)}
	it {should respond_to(:value)}
	it {should respond_to(:suit)}

end