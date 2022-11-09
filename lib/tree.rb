class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

    until nodes_to_visit.empty?
      current = nodes_to_visit.pop
      return current if current[:id] == id

      nodes_to_visit = nodes_to_visit + current[:children]
    end
    nil
  end

end

  # Initialize an empty output array
  # Initialize an array of nodes to visit and add the root node to it
  # While there are nodes in the nodes to visit array
    # Remove the first node from the nodes to visit array
    # Add its value to the output array
    # Add its children (if any) to the end of the nodes to visit array
  # Return the output array

def breadth_first_traversal(node)
  result = []
  nodes_to_visit = [node]

  while nodes_to_visit.length > 0
    # 1. Remove the first node from the 'nodes_to_visit' array
    node = nodes_to_visit.shift
    # 2. Add its value to the result array
    result.push(node[:value])
    # 3. Add its children (if any) to the END of the 'nodes_to_visit' array
    nodes_to_visit = nodes_to_visit + node[:children]
  end
  
  result
end

# Initialize an empty output array
# Initialize an array of nodes to visit and add the root node to it
# While there are nodes in the array of nodes to visit
  # Remove the first node from the array of nodes to visit
  # Add its value to the output array
  # Add its children (if any) to the BEGGINNING of the array of nodes to visit
# Return the output array

def depth_first_traversal(node)
  result = []
  nodes_to_visit = [node]

  while nodes_to_visit.length > 0
    # 1. Remove the first node from the 'nodes_to_visit' array
    node = nodes_to_visit.shift
    # 2. Add its value to the result array
    result.push(node[:value])
    # 3. Add its children (if any) to the BEGINNING of the 'nodes_to_visit' array
    nodes_to_visit = node[:children] + nodes_to_visit
  end

  result
end

def depth_first_traversal_recursive(node, result = [])
  # visit each node (add it to the list of results)
  result.push(node[:value])

  node[:children].each do |child|
    # visit each child node
    depth_first_traversal_recursive(child, result)
  end

  result
end