require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    return nil if @root.nil?

    curr = @root

    while curr
      return curr if curr.value == value
      if value < curr.value
        curr = curr.left
      else
        curr = curr.right
      end
      nil
    end
  end

  def insert(value)
    new_node = Node.new(value)
    if @root.nil?
      @root = new_node
      return @root
    end

    curr = @root

    while curr
      return nil if curr.value == value
      if value < curr.value
        if curr.left.nil?
          curr.left = new_node
          return new_node
        end
        curr = curr.left
      elsif curr.right.nil?
          curr.right = new_node
          return new_node
      end
         curr = curr.right
    end 
  end

end 
