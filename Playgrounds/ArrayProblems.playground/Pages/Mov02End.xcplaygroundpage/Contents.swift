/// `Problem` ``Move zeros to the End.``

func moveZerosToEnd(array: inout [Int]) {
    // This will track where to place the next non-zero element
    var nonZeroIndex = 0
    
    // Iterate through the array
    for i in 0..<array.count {
        if array[i] != 0 {
            // Move the non-zero element to the front
            array[nonZeroIndex] = array[i]
            
            if nonZeroIndex != i {
                array[i] = 0 // Set the current positioned as 0 if the value swapped
            }
            
            // Increase the non zero index
            nonZeroIndex += 1
        }
    }
}

var array: [Int] = [0, 1, 2, 0, 0, 0, 7, 9, 8, 0]
moveZerosToEnd(array: &array)
print(array)
