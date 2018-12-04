
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
  queue.push(root) 
  
  while queue.empty? == false
    if root.left != nil
      queue.push(root.left)
    end
    
    if root.right != nil
      queue.push(root.right)
    end

    root = queue.shift
    if root.value == target
      return root
    end    
  end 
  nil
end

# - - - - - - - - - - - - - - - - -
def depth_first_search(tree,target)
root = tree
stack = []
stack.push(root)

 until stack.size == 0
      return root if root.value == target
      stack.push(root.left) if root.left
      stack.push(root.right) if root.right
      root = stack.pop
    end
end

# - - - - - - - - - - - - - - - - -
def dfs_rec(tree,target)
#test-expression ? if-true-expression : if-false-expression
root = tree
 return if root.nil?
    return root if root.value == target
    dfs_rec(root.left,target) || dfs_rec(root.right, target)
end

# - - - - - - - - - - - - - - - - -
# - R - U - N - N - E - R 
# - - - - - - - - - - - - - - - - -
x = [5, 9, 2, 7, 1, 3, 6, 8, 4 ]
test_tree = build_tree(x)
#breadth_first_search(test_tree,9)
#depth_first_search(test_tree,7)
dfs_rec(test_tree,9)



