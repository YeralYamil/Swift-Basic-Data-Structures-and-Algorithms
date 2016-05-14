//Array implementation of a Stack in swift
class ArrayStack<T> {
	
	/// list containing all the values of the Stack
	private var list = [T]()
	
	/// Number of elements in the current Stack
	var count : Int { return list.count }
	
	/// Verify if the Stack is empty
	var isEmpty : Bool { return list.isEmpty }
	
	/**
        Push a value to the Stack

        - Parameter value: The value to push to the Stack
    */
	func push(value: T){		
		list.append(value)
	}
	
	/**
        Returns and remove the latest value added to the Stack

        - Parameter value: The value of the last element in the Stack
    */
	func pop() -> T?{		
		if (isEmpty){
			return nil
		}
		
		return list.removeLast()
	}
	
	/**
        Returns and keeps the latest value added to the Stack

        - Parameter value: The value of the last element in the Stack
    */
	func peek() -> T?{		
		if (isEmpty){
			return nil
		}
		
		return list.last
	}
}