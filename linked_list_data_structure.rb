class Node
  attr_accessor :elt, :next

  def initialize elt, next_node=nil
    @elt = elt
    @next = next_node
  end
end

# create List stores a reference to the first node (head)
class List
  attr_accessor :head

  def insert elt
    @head = Node.new elt, head
  end

  def remove node
    if head == node
      @head = head.next
    elsif node.next
      node.elt = node.next.elt
      node.next = node.next.next
    else
      cur = head
      while cur.next != node
        cur = cur.next
      end
      cur.next = nil
    end
  end
end