import UIKit

var array = [3, 5, 8, 1, 4, 6, 2]


func bubbleSort(arr: inout [Int]) {

    for i in 1...arr.count - 1 {
        for j in (i...arr.count - 1).reversed() {
            print("outer \(i), inner \(j)")
//            print("compare \(arr[j]) with \(arr[j-1])")
            if (array[j] < array[j-1]) {
                let temp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = temp
            }
        }
    }
    
}


bubbleSort(arr: &array)
array
