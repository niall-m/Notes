class DoubleLinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
  }

  setHead(node) {
		if (this.head === null) {
			this.head = node;
			this.tail = node;
			return;
		}
		this.insertBefore(this.head, node);
  }

  setTail(node) {
		if (this.tail === null) {
			this.setHead(node);
			return;
		}
		this.insertAfter(this.tail, node);
  }

  insertBefore(node, nodeToInsert) {
		if (nodeToInsert === this.head && nodeToInsert === this.tail) return;
		this.remove(nodeToInsert);
		nodeToInsert.prev = node.prev;
		nodeToInsert.next = node;
		if (node.prev === null) {
			this.head = nodeToInsert;
		} else {
			node.prev.next = nodeToInsert;
		}
		node.prev = nodeToInsert;
  }

  insertAfter(node, nodeToInsert) {
		if (nodeToInsert === this.head && nodeToInsert === this.tail) return;
		this.remove(nodeToInsert);
		nodeToInsert.next = node.next;
		nodeToInsert.prev = node;
		if (node.next === null) {
			this.tail = nodeToInsert;
		} else {
			node.next.prev = nodeToInsert;
		}
		node.next = nodeToInsert;
  }

  insertAtPosition(position, nodeToInsert) {
		
  }

  removeNodesWithValue(value) {
		let node = this.head;
		while (node !== null) {
			let targetNode = node;
			node = node.next;
			if (targetNode.value === value) this.remove(targetNode);
		}
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