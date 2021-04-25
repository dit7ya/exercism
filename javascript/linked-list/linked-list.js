export class LinkedList {
  constructor() {
    this.first = null
    this.last = null
  }

  push(el) {
    // create new node with val
    const newNode = new Node(el)
    // make prev of newNode as the current last
    newNode.prev = this.last

    // change the last's next to new Node
    if (this.last) {
      this.last.next = newNode
    }

    // move the last to the new one
    this.last = newNode
    // if no previous then it is also the first el
    if (!this.last.prev) {
      this.first = this.last
    }
  }

  pop() {
    if (this.last) {
      const lastVal = this.last.val
      if (this.last.prev) {
        this.last = this.last.prev
        this.last.next = null
      } else {
        this.last = null
      }

      if (!this.last) {
        // delete the first node as well TODO this is too hacky
        this.first = null
      }
      return lastVal
    } else {
      return null
    }
  }

  shift() {
    if (this.first) {
      const firstVal = this.first.val
      if (this.first.next) {
        this.first = this.first.next
        this.first.prev = null
      } else {
        this.first = null
      }

      if (!this.first) {
        // delete the last node as well TODO this is too hacky
        this.last = null
      }
      return firstVal
    } else {
      return null
    }
  }

  unshift(el) {
    // this.first = new Node(el, this.first, null);
    // create new node with val
    const newNode = new Node(el)
    // make next of newNode as the current first
    newNode.next = this.first

    // change the first's prev to new Node
    if (this.first) {
      this.first.prev = newNode
    }

    // move the first to the new one
    this.first = newNode
    // if no next then it is also the last el
    if (!this.first.next) {
      this.last = this.first
    }
  }

  delete(el) {
    // delete the first occurence of the el
    let curr = this.first
    if (curr) {
      // if the first element itself is the value
      if (curr.val == el) {
        if (curr.next) {
          // set the prev of next node to null
          curr.next.prev = null
          this.first = curr.next
        } else {
          // set the list to empty
          this.first = null
          this.last = null
        }
      }

      while (curr) {
        if (curr.val == el) {
          break
        } else {
          curr = curr.next
        }
      }


      if (curr) {
        if (curr.prev) {
          // set the next of prev node to next node
          curr.prev.next = curr.next
        }

        if (curr.next) {
          // set the prev of next node to prev node
          curr.next.prev = curr.prev
        } else {
          this.last = curr.prev
        }
      }

    }
  }

  count() {
    if (!this.first) {
      return 0
    }

    let curr = this.first
    let cnt = 0
    while (curr) {
      cnt = cnt + 1
      curr = curr.next
    }
    return cnt
  }
}

class Node {
  constructor(val = null, next = null, prev = null) {
    this.val = val
    this.next = next
    this.prev = prev
  }
}
