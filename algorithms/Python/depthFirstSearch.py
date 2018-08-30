class Node:
    def __init__(self, name):
        self.children = []
        self.name = name

    def addChild(self, name):
        self.children.append(Node(name))

    # O(v + e) Time | O(v) Space
    def depthFirstSearch(self, array):
        array.append(self.name) # append to our array the nodes name
        for child in self.children:
            child.depthFirstSearch(array)
        return array # useful only for first call of dfs on recursive stack
