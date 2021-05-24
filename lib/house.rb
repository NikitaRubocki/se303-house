class House

	def initialize(start: 'This is')
		@start = start
	end

	def recite
		(1..12).collect { |i| line(i) }.join("\n")
	end

	def phrase(num)
		lines.last(num).join(' ')
	end

  def line(num)
		"#{@start} #{lines.last(num).join(' ')}.\n"
	end

	private
	
	def lines
		[
			'the horse and the hound and the horn that belonged to',
			'the farmer sowing his corn that kept',
			'the rooster that crowed in the morn that woke',
			'the priest all shaven and shorn that married',
			'the man all tattered and torn that kissed',
			'the maiden all forlorn that milked',
			'the cow with the crumpled horn that tossed',
			'the dog that worried',
			'the cat that killed',
			'the rat that ate', 
			'the malt that lay in', 
			'the house that Jack built'
		]
	end
end