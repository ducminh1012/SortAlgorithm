import UIKit

var array = [3, 5, 8, 1, 4, 6, 2]

func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array}
    // 1
    let middleIndex = array.count / 2
    // 2
    let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
    let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
    return merge(left: leftArray, right: rightArray)
}

func merge(left: [Int], right: [Int]) -> [Int] {
    // 1
    var leftIndex = 0
    var rightIndex = 0

    // 2
    var orderedArray: [Int] = []

    // merging logic goes here!
    while leftIndex < left.count && rightIndex < right.count {
        // 1
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]

        if leftElement < rightElement { // 2
            orderedArray.append(leftElement)
            leftIndex += 1
        }
        else if leftElement > rightElement { // 3
            orderedArray.append(rightElement)
            rightIndex += 1
        }
        else { // 4
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }

    // 2
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }

    return orderedArray
}

mergeSort(array: array)
