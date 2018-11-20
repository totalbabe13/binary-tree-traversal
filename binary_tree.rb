# Write a method build_tree which takes an array of data 
# (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) 
# and turns it into a binary tree full of Node objects appropriately
#  placed. Start by assuming the array you get is sorted.


#sample data set --> [47, 3, 32, 43, 19, 6, 18, 36, 13, 0]

# x = 10.times.map{ rand(0...30) } 
# p x

class Node 
  attr_accessor :value, :parent_node,:left_node, :right_node 
  def initialize(value = nil, parent_node = nil, left_node = nil, right_node = nil)
  	  @value = value
  	  @parent_node = parent_node
  	  @left_node   = left_node
  	  @right_node  = right_node
    end

    def node_placement(next_value,parent_node)
      current_node = parent_node
      if next_value < current_node.value
        if current_node.left_node == nil
          current_node.left_node = next_value
        else 
          node_placement(next_value,current_node)
        end 

      elsif next_value >= current_node.value
        if current_node.right_node == nil
          current_node.right_node = next_value
        else 
          node_placement(next_value,current_node)
        end 

      end
    end

end

#[47, 3, 52, 43, 19, 6, 18, 36, 13, 0]
new_tree_root = Node.new(47,nil) 
new_tree_root.node_placement(3,new_tree_root)
new_tree_root.node_placement(52,new_tree_root)


puts ' - - - - - -'
p new_tree_root


#<Node: @value = 47, 
#@parent_node  = nil, 
#@left_node    = Node:@value=3, 
                   #@parent_node = 47, 
                   #@left_node   = nil, 
                   #@right_node  = Node @value=32, 
                                    # @parent_node = 3, 
                                    # @left_node   = nil, 
                                    # @right_node  = nil>>, 
#@right_node = nil>