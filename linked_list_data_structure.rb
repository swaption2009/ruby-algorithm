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

  # reverse linked list with 3 methods
  # method 1
  def reverse node
    prev = nil
    while node
      tmp = node.next
      node.next = prev
      prev = node
      node = tmp
    end
  end

  # method 2: use Ruby assigment a,b = b,a
  def reverse_1 node
    prev = nil
    while node
      node.next, prev, node = prev, node, node.next
    end
    prev
  end

  # method 3: use recursive version
  def reverse_rec node, prev=nil
    return prev unless node
    tmp = node.next
    node.next = prev
    reverse_rec tmp, node
  end
end