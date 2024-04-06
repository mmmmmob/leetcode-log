/*
• The function should add the values of the two [Int] arrays in such a way the the first element of the first array is added to the first element of the second array, the second element of the first array is added to the second element of the second array, and so on.
• If the lengths of the arrays are different then the function should add the corresponding values and leave the others as they are.
• Before performing the additions, all values in each array should be changed to their absolute values. 

Examples:

• [1, 2, 3] + [1, 2, 3] == [2, 4, 6] (same number of elements) 
• [1, 2] + [1, 2, 3, 4] == [2, 4, 3, 4] (different number of elements) 
• [1, 2, 3, 4] + [1, 2] == [2, 4, 3, 4] (different number of elements) 
• [-1, 2] + [1, 2, 3, 4] == [2, 4, 3, 4] (absolute values) 

*/

struct Add {
  public static func addArray(arr1: [Int], arr2: [Int]) -> [Int] {
    var result = [Int]()

    var newArr1 = arr1
    var newArr2 = arr2

    let arr1Length = newArr1.count
    let arr2Length = newArr2.count

    if arr1Length < arr2Length {
        for _ in arr1Length...arr2Length-1 {
        newArr1.append(0)
      }
    } else if arr1Length > arr2Length {
      for _ in arr2Length...arr1Length-1 {
        newArr2.append(0)
      }
    }

    for i in 0..<newArr1.count {
        var sum = 0
        sum = abs(newArr1[i]) + abs(newArr2[i])
        result.append(sum)
      }

    return result
  }
}

print(Add.addArray(arr1: [1,2,3,4], arr2: [1,2]))
