class LRUCache
  def initialize(n)
    @size = n
    @cache = []
  end

  def count
    cache.count
  end

  def add(el)
    if count >= n
      count.shift
      count << el
    elsif cache.include?(el)
      cache.delete(el)
      cache << el
    else
      cache << el
    end

  end

  def show
    p cache
    nil
  end

  private

  attr_accessor :cache

end
