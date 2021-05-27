class House

	def initialize(start='This is')
		@start = start
	end

	def recite
		(1..12).collect { |i| line(i) }.join("\n")
	end

  def line(num)
		"#{@start} #{phrase(num)}.\n"
  end

	private

	def phrase(num)
		data.last(num).join(' ')
	end

	def data
		data_list.append('the house that Jack built')
	end

	def data_list
		(0..10).map { |i| "the #{DATA[:subject][i]} that #{DATA[:verb][i]}" }
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

	private

	def data_list
		super.shuffle(random: @random_val)
	end

end 

class ShuffleHouse < House

	def initialize(start='This is', seed: Random.new())
		super(start)
		@seed = seed
	end

	private

	def data_list
		subjects = DATA[:subject].shuffle(random: Random.new(@seed))
		verbs = DATA[:verb].shuffle(random: Random.new(@seed+1))
		(0..10).map { |i| "the #{subjects[i]} that #{verbs[i]}" }
	end

end