
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
end#end of build_tree
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
#NOTE figure out what to with nil v
  root = tree
  l = root.left
  r = root.right
  queue = [] 
  all_values = []
  
  if verify_leaf_node(root) == false
    que.push(root.value)
    que.push(root.left.value)
    que.push(root.right.value)
  end
  
  if verify_leaf_node(l) == false
    if l.left != nil
      que.push(l.left.value)
    end  
    if l.right != nil
      que.push(l.right.value)
    end 
  end 

  if verify_leaf_node(r) == false
    if r.left != nil
      que.push(r.left.value)
    end  
    if r.right != nil
      que.push(r.right.value)
    end 
  end 


  
  p que
  # UNTIL right node is a leaf??
  # BOTH left AND right links are both NIL on a right node???
  
end
# - - - - - - - - - - - - - - - - -
def verify_leaf_node(node)
  if node.left.value == nil && node.right.value == nil
     true
  else
     false
  end     
end
# - - - - - - - - - - - - - - - - -
x = [5, 9, 2, 7, 1, 3, 6, 8, 4 ]
test_tree = build_tree(x)
puts '- - - -'
breadth_first_search(test_tree,9)





  # p root.value                  #5
  # p root.left.value             #2
  # p root.left.left.value        #1
  # p root.left.right.value       #3
  # p root.left.right.right.value #4 
  # p root.right.value            #9
  # p root.right.left.value       #7
  # p root.right.left.left.value  #6
  # p root.right.left.right.value #8