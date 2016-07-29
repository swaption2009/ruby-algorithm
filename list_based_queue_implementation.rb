require_relative 'linked_list_data_structure'

class ListQueue
  attr_accessor :head, :tail

  def is_empty?
    !head
  end

  def enqueue(elt)
    node = Node.new(elt)
    if is_empty?
      @head = node
    else
      tail.next = node
    end
    @tail = node
  end

  def dequeue
    puts head
    raise RuntimeError.new('EMPTY') if is_empty?
    elt = head.elt
    @head = head.next
    @tail = nil if is_empty?
    elt
  end
end