class Hand
	attr_reader :type, :value
	attr_accessor :win

	def initialize(*args)
		raise ArgumentError, "missing an argument" if args.count < 5 && args.count > 0
		raise ArgumentError, "too many arguments" if args.count > 5
		@cards = args
		@cards.sort!
		@win = false

		if cards[1].value != cards[0]+1 do
			#Cannot be a straight or straight flush.			
		end

		
	end



end