
class SLList<T: Equatable> {
    var head = SLNode<T>()
    
    var brEl : Int = 0
    
    func addToTail(value: T)
    {
        if self.head.value == nil {
            self.head.value = value
            brEl+=1
        }
        else {
            var tmp = self.head
            while tmp.next != nil {
                tmp = tmp.next!
            }
            
            let newNode = SLNode<T>()
            newNode.value = value
            tmp.next = newNode
            brEl+=1
        }
    }
    
    func addToHead(value: T)
    {
        if self.head.value == nil {
            self.head.value = value
            brEl+=1
        }
        else
        {
            let newNode = SLNode<T>()
            newNode.value = value
            
            newNode.next = head
            head = newNode
            brEl+=1
            
        }
    }
    
    func traversal()
    {
        if brEl == 0
        {return}
        
        var tmp: SLNode! = self.head
        var output = "------\n"
        while tmp != nil && tmp.value != nil {
            output += "\(tmp.value!)->"
            tmp=tmp.next
        }
        
        print(output+"nil")
    }
    
    func deleteFromHead()
    {
        if(brEl==0)
        {
            return
        }
        if(brEl==1)
        {
            self.head.value = nil
            self.head.next = nil
            brEl-=1
            return
        }
        let tmp: SLNode! = self.head
        head = head.next!
        brEl-=1
        tmp.next = nil 
    }
    
    func find(value: T) -> SLNode<T>?
    {
        if(brEl==0)
        {
            return nil
        }
        
        var tmp: SLNode! = self.head
        while tmp.value != value && tmp != nil
        {
            tmp=tmp.next
        }
        if(tmp == nil)
        {
            return nil
        }
        else
        {
            return tmp
        }
    }
    
    func deleteFirstAppearing(value: T)
    {
        if(self.head.value == value)
        {
            deleteFromHead()
        }
        
        var tmp: SLNode! = head
        while tmp.next != nil && tmp.next?.value != value
        {
            tmp=tmp.next
        }
        if(tmp.next == nil)
        {
            return
        }
        
        var tmp2: SLNode! = tmp.next
        tmp.next = tmp2.next
        tmp2 = nil
        brEl-=1
        
    }
    
    func deleteAllAppearing(value: T)
    {
        if(brEl==0)
        {
            return
        }
//        while head.value == value {
//            if(head.next == nil)
//            {
//                return
//            }
//            head = head.next!
//                if head == nil {
//                    break
//                }
//            }
        while head.value == value{
            deleteFromHead()
        }
        
        var tmp: SLNode! = self.head
        var node: SLNode<T>? = nil
        
        while tmp != nil
        {
            if(tmp.value == value)
            {
                if(node == nil)
                {
                    tmp=tmp.next
                    deleteFromHead()
                }
                else{
                    node?.next = tmp.next
                }
//
//                var pom: SLNode! = tmp
//                pom = nil
//                brEl-=1
            }
            else
            {
                node = tmp
            }
            tmp=tmp.next
        }
        
    }
    
}
