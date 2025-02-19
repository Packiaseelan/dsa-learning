/// `Problem` ``Find the second largest and second smallest elements.``

func secondMinMaxElements(array: [Int]) -> (secondMin: Int, secondMax: Int)? {
    // Check if the array has less than two elements
    if array.count < 2 {
        return nil // We can't find second largest or second smallest in an array with fewer than 2 elements
    }
    
    // Initialize variables to hold the largest, second largest, smallest, and second smallest
    var largest = array[0]
    var secondLargest: Int? = nil
    var smallest = array[0]
    var secondSmallest: Int? = nil
    
    // Loop through the array to find the second largest and second smallest elements
    for i in 1..<array.count {
        if array[i] > largest {
            secondLargest = largest
            largest = array[i]
        } else if array[i] > (secondLargest ?? Int.min) {
            secondLargest = array[i]
        }

        if array[i] < smallest {
            secondSmallest = smallest
            smallest = array[i]
        } else if array[i] < (secondSmallest ?? Int.max) {
            secondSmallest = array[i]
        }
    }

    // Return the second smallest and second largest elements
    return (secondSmallest!, secondLargest!)
}

let array: [Int] = [5, 3, 8, 1, 0, 7, 2]
let sndMinMax = secondMinMaxElements(array: array)
if let values = sndMinMax {
    print("Second largest element: \(values.secondMax)")
    print("Second smallest element: \(values.secondMin)")
} else {
    print("Array should have at-least 2 elements.")
}
