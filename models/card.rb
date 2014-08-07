class Card
	attr_reader :name, :value, :suit

	def initialize(*args)	

		raise ArgumentError, "missing an argument" if args.count < 3
		raise ArgumentError, "too many arguments" if args.count > 3
		
		@name = args[0]
		@value = args[1]
		@suit = args[2]
	end
end