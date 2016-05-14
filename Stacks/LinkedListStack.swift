/// LinkedList implementation of a Stack
public class LinkedListStack<T> {
	
	/// Tail node
	private var tail : Node<T>?
	
	/// Number of elements in the current Stack
	private(set) var count : Int = 0
	
	/// Verify if the Stack is empty
	var isEmpty : Bool { return count == 0 }
	
	/**
        Push a value to the Stack

        - Parameter value: The value to push to the Stack
    */
	func push(value: T){
		
		let newNode = Node(value: value)
		if let unwrappedTail = tail{
			newNode.next = unwrappedTail;			
		}
		
		tail = newNode
		count += 1
	}
	
	/**
        Returns and remove the latest value added to the Stack

        - Parameter value: The value of the last element in the Stack
    */
	func pop() -> T?{
		
		guard let unwrappedTail = tail else {
			return nil
		}
		
		tail = unwrappedTail.next
		count -= 1
		return unwrappedTail.value		
	}
	
	/**
        Returns and keeps the latest value added to the Stack

        - Parameter value: The value of the last element in the Stack
    */
	func peek() -> T?{
		
		if let unwrappedTail = tail{
			return unwrappedTail.value
		}
		
		return nil
	}
	
	
}


/// Class to represent a node in the Stack
class Node<T> {
	
	/// Current value of the node
	private(set) var value : T
	
	/// Get the next node if it has one
	var next : Node?
	
	/**
        Initializes a new Node

        - Parameter value: the value of the Node 
    */
	init(value: T){
		self.value = value
	}	
}
