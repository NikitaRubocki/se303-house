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

	def data
		data = (0..10).map { |i| "the #{DATA[:subject][i]} that #{DATA[:verb][i]}" }
		data.append('the house that Jack built')
	end

	DATA = {
		:subject => [
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
		],
		:verb => [
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
	}
	
end

class RandomHouse < House

	def initialize(start='This is', seed: Random.new())
		super(start)
		@random_val = Random.new(seed)
	end

	def data
		@data ||= super.shuffle(random: @random_val)
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

end