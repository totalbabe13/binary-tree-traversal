# Write a method build_tree which takes an array of data 
# (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) 
# and turns it into a binary tree full of Node objects appropriately
#  placed. Start by assuming the array you get is sorted.


#sample data set --> [47, 3, 32, 43, 19, 6, 18, 36, 13, 0]

class Node 
  attr_accessor :value, :parent_node,:left_node, :right_node 
  def initialize(value = nil, parent_node = nil, left_node = nil, right_node = nil)
  	  @value = value
  	  @parent_node = parent_node
  	  @left_node   = left_node
  	  @right_node  = right_node
    end

    def node_placement(next_value,parent_node)
      if next_value > parent_node.value
        parent_node.right_node = Node.new(next_value)
      elsif next_value < parent_node.value
        parent_node.left_node = Node.new(next_value)  
      end
    end

end

#[47, 3, 32, 43, 19, 6, 18, 36, 13, 0]
new_tree_root = Node.new(47,nil) 
new_tree_root.node_placement(3,new_tree_root)

p new_tree_root