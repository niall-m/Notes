class DoublyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

    # O(1) Time | O(1) Space
    def setHead(self, node):
        if self.head is None: # empty list
            self.head = node
            self.tail = node
            return
        self.insertBefore(self.head, node)
    
    # O(1) Time | O(1) Space
    def setTail(self, node):
        if self.tail is None:
            self.setHead(node)
            return
        self.insertAfter(self.tail, node)
    
    # O(1) Time | O(1) Space
    def insertBefore(self, node, nodeToInsert):
        # if we're dealing with linkedlist that only has 1 node, then there's nothing to insert
        if nodeToInsert == self.head and nodeToInsert == self.tail:
            return # no op
        self.remove(nodeToInsert) # if node is in list, gotta remove it
        nodeToInsert.prev = node.prev
        nodeToInsert.next = node
        if node.prev is None: # if inserting before head
            self.head = nodeToInsert
        else:
            node.prev.next = nodeToInsert
        node.prev = nodeToInsert
    
    # O(1) Time | O(1) Space
    def insertAfter(self, node, nodeToInsert):
        if nodeToInsert == self.head and nodeToInsert == self.tail:
            return
        self.remove(nodeToInsert)
        nodeToInsert.next = node.next
        nodeToInsert.prev = node
        if node.next is None: # if inserting after tail
            self.tail = nodeToInsert
        else:
            node.next.prev = nodeToInsert
        node.next = nodeToInsert
    
    # O(p) Time | O(1) Space
    # p = position, iterate up until position
    def insertAtPosition(self, position, nodeToInsert):
        # first check if position is 1
        if position == 1: # dealing with head
            self.setHead(nodeToInsert)
            return
        # else, start traversing the list to the position
        node = self.head
        currentPosition = 1
        while node is not None and currentPosition != position:
            node = node.next
            currentPosition += 1
        # when exiting loop, either node is none (passed the tail) or currentPos = pos
        if node is not None: # not at tail, at pos
            self.insertBefore(node, nodeToInsert)
        else: # we're at tail
            self.setTail(nodeToInsert)

    # O(n) Time | O(1) Space 
    def removeNodesWithValue(self, value): # search and remove
        node = self.head
        while node is not None: # not at end of linked list
            targetNode = node # create temp variable in case node pointers are removed
            node = node.next
            if targetNode.value == value:
                self.remove(targetNode)

    # O(1) Time | O(1) Space
    def remove(self, node):
        if node == self.head: # are we dealing with head or tail?
            self.head = self.head.next
        if node == self.tail: # Null <== 1 ==> Null, must update next and prev
            self.tail = self.tail.prev
        self.updateNodePointers(node)

    # O(n) Time | O(1) Space
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