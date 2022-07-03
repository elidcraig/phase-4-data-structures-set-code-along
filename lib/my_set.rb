class MySet
  def initialize value=[]
    @hash = {}
    value.each {|item| @hash[item] = true}
  end

  def include? value
    @hash[value] ? true : false
  end

  def add value
    @hash[value] = true
    return self
  end

  def delete value
    @hash.delete value
    return self
  end

  def size
    @hash.length
  end

  def clear
    @hash = {}
    return self
  end

  def inspect
    nums = @hash.keys
    "#<MySet: #{...nums}>"
  end

  # def each
  #   @hash.each
  #   return self
  # end
end