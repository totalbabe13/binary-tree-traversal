
# - - - - - - - - - - - - - - - - -
class Node
 attr_accessor :value, :left, :right
  def initialize(value)
    @left = nil
    @right = nil
    @value = value
  end  
end

# - - - - - - - - - - - - - - - - -
def build_tree(data)
 root = Node.new(data[0])
 data.shift
  while data.length != 0
   x = Node.new(data[0])
   insert(x,root)  
   data.shift
  end
  root
end

# - - - - - - - - - - - - - - - - -
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
# - - - - - - - - - - - - - - - - -
def breadth_first_search(tree,target)
  root = tree
  queue = [] 
  visited_nodes = []
  
  queue.push(root) 
  visited_nodes.push(queue[0].value)
  
  while queue.empty? == false
    if root.left != nil
      queue.push(root.left)
      visited_nodes.push(root.left.value)
    end
    
    if root.right != nil
      queue.push(root.right)
      visited_nodes.push(root.right.value)
    end
    root = queue.shift
    
    if root.value == target
      return root
    end    
  end 
  nil
end

# - - - - - - - - - - - - - - - - -
# - R - U - N - N - E - R 
# - - - - - - - - - - - - - - - - -
x = [5, 9, 2, 7, 1, 3, 6, 8, 4 ]
test_tree = build_tree(x)
breadth_first_search(test_tree,7)



