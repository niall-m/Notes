class Node:
    def __init__(self, name):
        self.children = []
        self.name = name
    
    def addChild(self, name):
        self.children.append(Node(name))

    # O(v + e) Time | O(v) Space
    def breadthFirstSearch(self, array):
        queue = [self] # initialize queue holding root node
        while len(queue) > 0: # while queue isn't empty
            currentNode = queue.pop(0) # FiFo node
            array.append(currentNode.name) # add to array
            for child in currentNode.children: # for each child
                queue.append(child) # add to end of queue
        return array