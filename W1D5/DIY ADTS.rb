class Stack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    p self.stack.dup
  end
end

# stack = Stack.new
# stack.add(4)
# stack.show
# stack.add(5)
# stack.show
# stack.remove
# stack.show

class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def add(el)
    @queue.unshift(el)
  end

  def remove
    @queue.pop
  end

  def show
    p self.queue.dup
  end
end

#
# queue = Queue.new
# queue.add(4)
# queue.show
# queue.add(5)
# queue.show
# queue.remove
# queue.show

class Map
  attr_reader :m_map

  def initialize
    @m_map = []
  end

  def assign(key,value)
    pair = [key,value]
    @m_map << pair unless @m_map.include?(pair)

  end

  def lookup(key)
    val = nil
    @m_map.each do |pair|
      val = pair[1] if pair[0] == key
    end
     val
  end

  def remove(key)
    @m_map.each_with_index do |el, ind|
      @m_map.delete(@m_map[ind]) if el[0] == key
    end
  end

  def show
    p self.m_map
  end
end
#
# m = Map.new
# m.assign(1,2)
# m.show
# m.assign(3,4)
# m.show
# p m.lookup(3)
# m.remove(3)
# m.show
