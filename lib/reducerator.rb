class Reducer

  def initialize(array)
    @array = array
  end

  def reduce
    @array.reduce(Hash.new(0)) do |memo, element| 
      memo[element] += 1 
      memo
    end
  end
end