# p035inherit.rb
class GF
  def initialize
    puts 'In GF class'
  end
  def gfmethod
    puts 'GF method call'
  end
end

# class F sub-class of GF
class F < GF
  def initialize
    puts 'In F class'
  end
end

# class S sub-class F
class S < F
  def initialize
    puts 'In S class'
  end
end
son = S.new
son.gfmethod
