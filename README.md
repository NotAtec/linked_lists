# Linked List
An implementation of the [Linked List](https://en.wikipedia.org/wiki/Linked_list) Datastructure in Ruby. 

Implemented to a [spec](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/linked-lists#assignment) assigned by [The Odin Project](https://www.theodinproject.com/)

Features OOP Based list creation, with support for many ways to update the list and nodes within it. Nodes within a list can be any other object. 

## Included Methods
- #append(value) -> Adds `value` to the end of the list
- #prepend(value) -> Adds `value` to the start of the list
- #size -> Returns total amounts of nodes in the list
- #head -> Returns head (0 index node) of the list
- #tail -> Returns tail (last index node) of the list
- #at(index) -> Returns the node located at `index`
- #pop -> Removes tail from list, returns it's value
- #contains?(value) -> Returns boolean to indicate if `value` is a value of any node in the list.
- #find(value) -> Returns index of node with the given `value`. Returns `nil` if no matches are found.
- #to_s -> Creates string containing all values of nodes in the linked list, for print purposes.
- #insert_at(value, index) -> Creates a node `value` and places it at `index` in the list. Raises exception if `index` is unreachable (`index` is past the end of the list)
- #remove_at(index) -> Removes the node at `index` from the list, and returns it's value. Returns `nil` if `index` is outside of the list.
