/// `Problem` ``Find the Maximum and Minimum Elements in an Array``

func minMaxElements(array: [Int]) -> (min: Int, max: Int)? {
    // Check if the array is empty
    if array.isEmpty {
        // Return nil if the array is empty
        return nil
    }
    
    // Initialize max and min with the first element
    var max = array[0]
    var min = array[0]
    
    // Loop through the array starting from second element
    for i in 1..<array.count {
        // Update max if a larger element is found
        if array[i] > max {
            max = array[i]
        }
        
        // Update min if a smaller element is found
        if array[i] < min {
            min = array[i]
        }
    }
    
    // Return the min and max values
    return (min, max)
}

//let array: [Int] = [] // An empty array
let array: [Int] = [1, 2, 4, 6, 7, 3, 9, 3]
let minMax = minMaxElements(array: array)

if let values = minMax {
    print("Minimum element is \(values.min)")
    print("Maximum element is \(values.max)")
} else {
    print("Array is Empty")
}
