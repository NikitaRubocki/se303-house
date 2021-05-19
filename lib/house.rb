require_relative 'lyric.rb'

class House

	def initialize(start: 'This is', random: false, seed: 1)
		@start = start
		@random = random
		@seed = seed
	end

	def recite
		(1..12).collect { |i| line(i) }.join("\n")
	end

  def line(num)
		Lyric.for(num, @start, @random, @seed).line
	end

end