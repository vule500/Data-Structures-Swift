class SLNode<T: Equatable> {
  var value: T? = nil
  var next: SLNode? = nil
    
    init(){}
    
}

protocol OptinalValue {
    var isNil: Bool {get}
}

extension Optional: OptinalValue
{
    var isNil: Bool {
        return self==nil
    }
}
