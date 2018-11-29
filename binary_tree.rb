class Node
 attr_accessor :value, :left, :right
  def initialize(value)
    @left = nil
    @right = nil
    @value = value
  end  
end

def build_tree(data)
 root = Node.new(data[0])
 data.shift
  while data.length != 0
   x = Node.new(data[0])
   insert(x,root)  
   data.shift
  end
  # p root.value                  #5
  # p root.left.value             #2
  # p root.left.left.value        #1
  # p root.left.right.value       #3
  # p root.left.right.right.value #4 
  # p root.right.value            #9
  # p root.right.left.value       #7
  # p root.right.left.left.value  #6
  # p root.right.left.right.value #8

  root
end#end of build_tree

def insert(new_node,root)
  if new_node.value < root.value
    if root.left == nil
      root.left = new_node
    else 
      insert(new_node,root.left)
    end 
    
  elsif new_node.value > root.value
    if root.right == nil
      root.right = new_node
    else    
      insert(new_node,root.right)
   end 
  end  
end


x = [5, 9, 2, 7, 1, 3, 6, 8, 4 ]
tree = build_tree(x)
pp tree


