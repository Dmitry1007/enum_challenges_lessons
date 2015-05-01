class Reducer
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def reduce
    object.reduce(Hash.new(0)) do |memo, number|
      memo[number] += 1
      memo
    end
  end

  def sent_reverse
    object.chars.reduce("") do |memo, letter|
      memo.insert(0,letter)
    end
    # or
    # final_string = ""
    # object.chars.reduce("") do |memo, letter|
    #   final_string = letter + final_string
    # end
  end

  def word_reverse
    array = object.split(" ")
    (1..array.length).inject([]) do |result, index|
      result << array[-1 * index]
    end.join(" ")
  end
end
