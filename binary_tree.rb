# Build a class Node. It should have a value that it stores and also links to its parent and children 
# (if they exist). Build getters and setters for it (e.g. parent node, child node(s)).

class Node
	attr_accessor :value, :parent_node, :children
  
  def initialize(value = nil, parent_node = nil, child_node = nil)
  	@value = value
  	@parent_node = parent_node
  	@child_node = child_node
  end

end
