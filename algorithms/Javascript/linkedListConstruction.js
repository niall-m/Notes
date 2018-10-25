class DoubleLinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
  }

  // O(1) Time | O(1) Space
  setHead(node) {
		if (this.head === null) {
			this.head = node;
			this.tail = node;
			return;
		}
		this.insertBefore(this.head, node);
  }

  // O(1) Time | O(1) Space
  setTail(node) {
		if (this.tail === null) {
			this.setHead(node);
			return;
		}
		this.insertAfter(this.tail, node);
  }

  // O(1) Time | O(1) Space
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

  // O(1) Time | O(1) Space
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

  // O(p) Time | O(1) Space
  // iterate up until position (p)
  insertAtPosition(position, nodeToInsert) {
		if (position === 1) {
			this.setHead(nodeToInsert);
			return;
		}
		let node = this.head;
		let currentPosition = 1;
		while (node !== null && currentPosition !== position) {
			node = node.next;
			currentPosition++;
		}
		if (node !== null) {
			this.insertBefore(node, nodeToInsert);
		} else {
			this.setTail(nodeToInsert);
		}
  }

  // O(n) Time | O(1) Space
  removeNodesWithValue(value) {
		let node = this.head;
		while (node !== null) {
			let targetNode = node;
			node = node.next;
			if (targetNode.value === value) this.remove(targetNode);
		}
  }

  // O(1) Time | O(1) Space
  remove(node) {
		if (node === this.head) this.head = this.head.next;
		if (node === this.tail) this.tail = this.tail.prev;
		this.updateNodePointers(node);
  }

  // O(n) Time | O(1) Space
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