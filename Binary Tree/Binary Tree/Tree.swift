class Tree<T: Comparable & CustomStringConvertible>
{
    
    private var root: Node<T>?
    var brEl: Int = 0
    
    func insert(element: T)
    {
        let node = Node(data: element)
        if let rootNode = self.root {
            self.insert(rootNode, node)
        } else {
            self.root = node
        }
        
        
        
    }
    
    private func insert(_ rootNode: Node<T>,_ node: Node<T>)
    {
        if rootNode.data > node.data{
            if let leftNode = rootNode.leftNode {
                self.insert(leftNode, node)
            }
            else
            {
                rootNode.leftNode = node
            }
        }
        else
        {
            if let rightNode = rootNode.rightNode {
                self.insert(rightNode, node)
            }
            else
            {
                rootNode.rightNode = node
            }
        }
    }
    
    
}


extension Tree {
 
    func traversal() {
        print("\nPRE-ORDER TRAVERSE")
        self.preorder(self.root)
        print("\n\nIN-ORDER TRAVERSE")
        self.inorder(self.root)
        print("\n\nPOST-ORDER TRAVERSE")
        self.postorder(self.root)
        print("\n")
    }
    
    // NOTE : LEFT IS ALWAYS LEFT OF RIGHT
    // NLR : NODE(i.e. Root/Parent Node) LEFT RIGHT
    
    // LNR : LEFT NODE RIGHT
    private func inorder(_ node: Node<T>?) {
        guard let _ = node else { return }
        self.inorder(node?.leftNode)
        print("\(node!.data)", terminator: " ")
        self.inorder(node?.rightNode)
    }
    
    // NLR : NODE LEFT RIGHT
    private func preorder(_ node: Node<T>?) {
        guard let _ = node else { return }
        print("\(node!.data)", terminator: " ")
        self.preorder(node?.leftNode)
        self.preorder(node?.rightNode)
    }
    
    // LRN :  LEFT RIGHT NODE
    private func postorder(_ node: Node<T>?) {
        guard let _ = node else { return }
        self.postorder(node?.leftNode)
        self.postorder(node?.rightNode)
        print("\(node!.data)", terminator: " ")
    }
}
