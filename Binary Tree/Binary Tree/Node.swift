
class Node<T> {
    
    var data: T
    var leftNode: Node?
    var rightNode: Node?
    
    init(data: T,
         leftNode: Node? = nil,
         rightNode: Node? = nil) {
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}

