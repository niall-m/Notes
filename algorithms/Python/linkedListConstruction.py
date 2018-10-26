class DoublyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

    def setHead(self, node):
        pass

    def setTail(self, node):
        pass

    def insertBefore(self, node, nodeToInsert):
        pass

    def insertAfter(self, node, nodeToInsert):
        pass    

    def insertAtPosition(self, position, nodeToInsert):
        pass

    def removeNodesWithValue(self, value):
        pass

    def remove(self, node):
        pass

    def containsNodeWithValue(self, value):
        node = self.head
        while node is not None and node.value != value: # not an empty list, haven't passed tail
            node = node.next
        return node is not None
