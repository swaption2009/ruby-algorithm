require 'pp'

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
    prev # not in book
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

  # The Middle Node of a List
  def find_middle(node)
    fast = slow = node
    while fast
      fast = fast.next
      if fast
        fast = fast.next
        slow = slow.next
      end
    end
    pp(slow)
    slow
  end
end

list = List.new
node1 = list.insert(1)
node2 = list.insert(2)
node3 = list.insert(3)
node4 =list.insert(4)
pp(list)
list.find_middle(node4)