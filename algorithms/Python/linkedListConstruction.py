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
        if node == self.head: # are we dealing with head or tail?
            self.head = self.head.next
        if node == self.tail: # Null <== 1 ==> Null, must update next and prev
            self.tail = self.tail.prev
        self.updateNodePointers(node)

    def containsNodeWithValue(self, value):
        node = self.head
        while node is not None and node.value != value: # not an empty list, haven't passed tail
            node = node.next
        return node is not None

    def updateNodePointers(self, node):
        # update pointers of surrounding nodes, then remove pointers of given node
        if node.prev is not None:
            node.prev.next = node.next
        if node.next is not None:
            node.next.prev = node.prev
        node.prev = None
        node.next = None