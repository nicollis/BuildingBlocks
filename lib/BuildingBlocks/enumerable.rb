module Enumerable

  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    return self unless block_given?
    for i in (0...self.size)
      yield(self[i], i)
    end
  end

  def my_select
    return self unless block_given?
    results = []
    self.my_each do |i|
      if yield(i)
        results.push(i)
      end
    end
    results
  end

  def my_all?
    return self unless block_given?
    self.my_each do |i|
      if !yield(i)
        return false
      end
    end
    return true
  end

  def my_any?
    return self unless block_given?
    self.my_each do |i|
      if yield(i)
        return true
      end
    end
    return false
  end

  def my_none?
    return self unless block_given?
    self.my_each do |i|
      if yield(i)
        return false
      end
    end
    return true
  end

  def my_count
    self.length
  end

  def my_map
    return self unless block_given?
    results = []
    self.my_each do |i|
      results.push(yield(i))
    end
    results
  end

end
