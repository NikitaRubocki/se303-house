class House

	def recite
		(1..12).collect { |i| line(i) }.join("\n")
	end

  def line(num)
		lines = ['the house that Jack built', 'the malt that lay in']
		case num
		when 1
			"This is #{lines[0]}.\n"
		when 2
			"This is the malt that lay in #{lines[0]}.\n"
		when 3
			"This is the rat that ate the malt that lay in the house that Jack built.\n"
		when 4
			"This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 5
			"This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 6
			"This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 7
			"This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 8
			"This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 9
			"This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 10 
			"This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 11
			"This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 12
			"This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		end
	end

	

end