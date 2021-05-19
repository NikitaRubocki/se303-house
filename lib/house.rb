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
		lyric = Lyric.new(num, start: @start, random: @random, seed: @seed)
		lyric.line
		pieces = lyric.line
		if @random == true
			pieces = lyric.line.shuffle(random: Random.new(@seed))
		end
		"#{@start} #{pieces.last(num).join(' ')}.\n"
	end

end