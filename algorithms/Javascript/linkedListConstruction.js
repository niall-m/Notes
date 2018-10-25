class DoubleLinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
  }

  setHead(node) {
		
	}

  setTail(node) {

  }

  insertBefore(node, nodeToInsert) {

  }

  insertAfter(node, nodeToInsert) {

  }

  insertAtPosition(position, nodeToInsert) {
		
  }

  removeNodesWithValue(value) {

	}
	
  remove(node) {
		if (node === this.head) this.head = this.head.next;
		if (node === this.tail) this.tail = this.tail.prev;
		this.updateNodePointers(node);
  }
	
  containsNodeWithValue(value) {
    let node = this.head;
	  while (node !== null && node.value !== value) node = node.next;
	  return node !== null;
	}
	
	updateNodePointers(node) {
		if (node.prev !== null) node.prev.next = node.next;
		if (node.next !== null) node.next.prev = node.prev;
		node.prev = null;
		node.next = null;
	}
}