class House

	def initialize(start='This is')
		@start = start
	end

	def recite
		(1..12).collect { |i| line(i) }.join("\n")
	end

	def phrase(num)
		data.last(num).join(' ')
	end

  def line(num)
		"#{@start} #{phrase(num)}.\n"
	end

	private

	DATA = [
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
	
	def data
		DATA
	end

end

class RandomHouse < House

	def initialize(start='This is', seed: Random.new())
		super(start)
		@seed = seed
	end

	def data
		@data ||= super.shuffle(random: Random.new(@seed))
		@data.delete('the house that Jack built')
		@data.append('the house that Jack built')
	end

end 

class ShuffleHouse < House

	def initialize(start='This is', seed: Random.new())
		super(start)
		@seed = seed
	end

	def data
		subjects = SUBJECTS.shuffle(random: Random.new(@seed))
		verbs = VERBS.shuffle(random: Random.new(@seed+1))
		data = (0..10).map { |i| "the #{subjects[i]} that #{verbs[i]}" }
		data.append('the house that Jack built')
	end

	SUBJECTS = [
			'horse and the hound and the horn',
			'farmer sowing his corn',
			'rooster that crowed in the morn',
			'priest all shaven and shorn',
			'man all tattered and torn',
			'maiden all forlorn',
			'cow with the crumpled horn',
			'dog',
			'cat',
			'rat',
			'malt'
		]

		VERBS = [
			'belonged to',
			'kept',
			'woke',
			'married',
			'kissed',
			'milked',
			'tossed',
			'worried',
			'killed',
			'ate',
			'lay in'
		]

end