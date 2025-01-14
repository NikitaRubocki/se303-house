gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class HouseTest < Minitest::Test

  describe 'original version' do
    def test_line_1
      expected = "This is the house that Jack built.\n"
      assert_equal expected, House.new.line(1)
    end

    def test_line_2
      expected = "This is the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(2)
    end

    def test_line_3
      expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(3)
    end

    def test_line_4
      expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(4)
    end

    def test_line_5
      expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(5)
    end

    def test_line_6
      expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(6)
    end

    def test_line_7
      expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(7)
    end

    def test_line_8
      expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(8)
    end

    def test_line_9
      expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(9)
    end

    def test_line_10
      expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(10)
    end

    def test_line_11
      expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(11)
    end

    def test_line_12
      expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new.line(12)
    end

    def test_all_the_lines
      expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
      assert_equal expected, House.new.recite
    end
  end 

  describe 'pirate version' do
    def test_line_1
      expected = "Thar be the house that Jack built.\n"
      assert_equal expected, House.new('Thar be').line(1)
    end

    def test_line_2
      expected = "Thar be the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new('Thar be').line(2)
    end

    def test_line_3
      expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
      assert_equal expected, House.new('Thar be').line(3)
    end
  end

  describe 'random version' do
    def test_line_4
      expected = "This is the malt that lay in the cat that killed the maiden all forlorn that milked the house that Jack built.\n"
      assert_equal expected, RandomHouse.new(seed: 1).line(4)
    end

    def test_line_5
      expected = "This is the priest all shaven and shorn that married the cow with the crumpled horn that tossed the malt that lay in the cat that killed the house that Jack built.\n"
      assert_equal expected, RandomHouse.new(seed: 2).line(5)
    end

    def test_line_6
      expected = "This is the dog that worried the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the cat that killed the malt that lay in the house that Jack built.\n"
      assert_equal expected, RandomHouse.new(seed: 3).line(6)
    end
  end

  describe 'random pirate version' do
    def test_line_4
      expected = "Thar be the malt that lay in the cat that killed the maiden all forlorn that milked the house that Jack built.\n"
      assert_equal expected, RandomHouse.new('Thar be', seed: 1).line(4)
    end

    def test_line_5
      expected = "Thar be the priest all shaven and shorn that married the cow with the crumpled horn that tossed the malt that lay in the cat that killed the house that Jack built.\n"
      assert_equal expected, RandomHouse.new('Thar be', seed: 2).line(5)
    end

    def test_line_6
      expected = "Thar be the dog that worried the horse and the hound and the horn that belonged to the priest all shaven and shorn that married the cat that killed the malt that lay in the house that Jack built.\n"
      assert_equal expected, RandomHouse.new('Thar be', seed: 3).line(6)
    end
  end

  describe 'shuffle version' do
    def test_line_4
      expected = "This is the malt that tossed the cat that lay in the maiden all forlorn that killed the house that Jack built.\n"
      assert_equal expected, ShuffleHouse.new(seed: 1).line(4)
    end

    def test_line_5
      expected = "This is the priest all shaven and shorn that belonged to the cow with the crumpled horn that married the malt that killed the cat that lay in the house that Jack built.\n"
      assert_equal expected, ShuffleHouse.new(seed: 2).line(5)
    end

    def test_line_6
      expected = "This is the dog that belonged to the horse and the hound and the horn that kept the priest all shaven and shorn that milked the cat that worried the malt that lay in the house that Jack built.\n"
      assert_equal expected, ShuffleHouse.new(seed: 3).line(6)
    end
  end

end
