/// Array implementation of a Queue
public class ArrayQueue<T> {
	
	/// list containing all the values of the Queue
	private var list = [T]()
	
	/// Number of elements in the current queue
	var count : Int { return list.count }
	
	/// Verify if the queue is empty
	var isEmpty : Bool { return list.isEmpty }
	
	/**
        Add a value to the tail of the Queue

        - Parameter value: The value of the Node to enqueu
    */
	func enqueue(value: T){		
		list.append(value)
	}
	
	/**
        Retrieve and remove the Head of the queue

        - returns: The value of the node in the Head of the Queue
    */
	func dequeue() -> T?{		
		if (list.isEmpty){
			return nil
		}		
		return list.removeAtIndex(0)
	}
	
}