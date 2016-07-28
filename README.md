RUBY ALGORITHMS
===============

Linked List
-----------

1. Linked List Data Structure
Linked List is a sequence of links which contains items. Each link contains a connection to another link. Linked list the second most used data structure after array. Following are important terms to understand the concepts of Linked List. See explanation [here](http://www.tutorialspoint.com/data_structures_algorithms/linked_lists_algorithm.htm) and [here](http://wlowry88.github.io/blog/2014/08/20/linked-lists-in-ruby/).

Usage (in IRB):
- list = List.new
- list.insert(1)
- list.insert(2)
- node1 = list.head.next.next
- list.remove(node1)
- list

2. Reverse Linked List
There are 3 ways to reverser linked list:
- without using Ruby's parallel assignment
- user a, b = b, a Ruby assignment
- user recursive version

See explanation [here](http://www.codeproject.com/Articles/27742/How-To-Reverse-a-Linked-List-3-Different-Ways).