class Reducer
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def reduce
    object.reduce(Hash.new(0)) do |memo, element| 
      memo[element] += 1 
      memo
    end
  end

  def sent_reverse
    object.chars.reduce("") do |memo, letter|
      memo.insert(0,letter)
    end
  end
end