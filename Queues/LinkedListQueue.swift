/// LinkedList implementation of a Queue
public class LinkedListQueue<T> {
	
	/// Tail node
	private var tail : Node<T>?
	
	/// Head node
	private var head : Node<T>?
	
	/// Number of elements in the current queue
	private(set) var count : Int = 0
	
	/// Verify if the queue is empty
	var isEmpty : Bool { return count == 0 }
	
	
	/**
        Add a node to the tail of the Queue

        - Parameter value: The value of the Node to enqueu.
    */
	func enqueue(value: T){
		
		let newNode = Node(value: value)
		
		if let unwrappedTail = tail {			
			unwrappedTail.next = newNode
			tail = newNode			
		}else{			
			head = newNode
			tail = newNode
		}
		
		tail = newNode
		count+=1
	}
	
	/**
        Retrieve and remove the Head of the queue

        - returns: The value of the node in the Head of the Queue
    */
	func dequeue() -> T?{
		
		if let unwrappedHead = head{
			head = unwrappedHead.next
			count -= 1
			return unwrappedHead.value
		}
		
		return nil
	}	
	
}


/// Class to represent a node in the Queue
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