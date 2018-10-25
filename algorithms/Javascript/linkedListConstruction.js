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

	}
	
  containsNodeWithValue(value) {
    let node = this.head;
	  while (node !== null && node.value !== value) node = node.next;
	  return node !== null;
  }
}