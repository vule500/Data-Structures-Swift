func main()
{
    
    let list = SLList<Int>()
    
    list.addToHead(value: 5)
    list.addToTail(value: 6)
    list.addToHead(value: 4)
    list.addToTail(value: 4)
    list.addToTail(value: 7)
    list.traversal()
    
//    list.deleteFromHead()
    
//    var node: SLNode! = list.find(value: 6)
//    list.deleteFirstAppearing(value: 5)
    list.deleteAllAppearing(value: 4)
    
    
    list.traversal()
    
}

main()
