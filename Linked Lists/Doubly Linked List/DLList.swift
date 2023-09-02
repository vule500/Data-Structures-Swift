class DLList<T: Equatable>
{
    
    var head = DLNode<T>()
    var brEl: Int = 0
    
    func addToHead(info: T)
    {
        if(brEl==0)
        {
            self.head.info = info
            brEl+=1
        }
        else
        {
            let newNode = DLNode<T>()
            newNode.info = info
            brEl+=1
            
            newNode.next = head
            head.prev = newNode
            head = newNode
        }
    }
    
    func traversal()
    {
        if brEl == 0
        {return}
        
        var tmp: DLNode! = self.head
        var output = "------\n"
        while tmp != nil && tmp.info != nil {
            output += "\(tmp.info!)->"
            tmp=tmp.next
        }
        
        print(output+"nil")
    }
    
}
