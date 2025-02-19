/// `Problem`: ``Reverse An Array``

/// Reverses an array using the built-in `reversed()` method.
///
/// - Parameter array: The input array of integers.
/// - Returns: A new array with the elements in reverse order.
func reverseAnArray1(array: [Int]) -> [Int] {
    array.reversed()
}

// Reverses an array by inserting each element at the 0th position of a new array.
///
/// - Parameter array: The input array of integers.
/// - Returns: A new array with the elements in reverse order.
func reverseAnArray2(array: [Int]) -> [Int] {
    // Create an empty array to store reversed elements
    var reversedArray: [Int] = []
    
    for element in array {
        // Insert elements at the 0th position begining of the array
        reversedArray.insert(element, at: 0)
    }
    
    return reversedArray
}

/// Reverses the elements of an array in place by swapping elements at opposite ends.
///
/// - Parameter array: The input array of integers. This is passed as an inout parameter
///   to allow modification of the array.
func reverseAnArray3(array: inout [Int])  {
    var left = 0
    var right = array.count - 1
    
    while left < right {
        // Swap the elements at the left and right pointers
        let temp = array[left]
        array[left] = array[right]
        array[right] = temp
        
        // Move the pointers towards the center
        left += 1
        right -= 1
    }
}

var array = [1, 2, 3]
let defaultReversed = reverseAnArray1(array: array)
print("Array reversed using default func: \(defaultReversed)")

let insertAt0 = reverseAnArray2(array: array)
print("Array reversed using insert at 0: \(insertAt0)")

reverseAnArray3(array: &array)
print("Array after reversed by swapping opposite end: \(array)")
