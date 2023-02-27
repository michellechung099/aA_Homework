class Stack
  def initialize
    @stacks = []
  end

  def push(el)
    @stacks.push(el)
  end

  def pop
    @stacks.pop
  end

  def peek
    @stacks.last
  end
end

class Queue
  def initialize
    @line = []
  end

  def enqueue(el)
    @line.push(el)
  end

  def dequeue
    @line.shift
  end

  def peek
    @line.first
  end
end

class Map
  def initialize
    @mapped = []
  end

  def set(key, value)
    index = @mapped.index { |map| map[0] == key }
    if index.nil?
      @mapped << [key,value]
    else
      @mapped[index][1] = value
    end
  end

  def get(key)
    @mapped.each do |map|
      if map[0] == key
        return map
      end
    end
  end

  def delete(key)
    @mapped.each do |map|
      if map[0] == key
        @mapped.delete(map)
      end
    end
  end

  def show
    @mapped
  end
end

p my_map = Map.new
p my_map.set("k1", "v1")
p my_map.set("k2", "v2")
p my_map.set("k3", "v3")
p my_map.get("k3")
p my_map.get("k2")
p my_map.delete("k2")
