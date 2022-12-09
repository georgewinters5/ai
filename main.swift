// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [38, 27, 43, 3, 9, 82, 10]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:


func mergeSort(array: [Int]) -> [Int] {
    let copy = unsortedIntegers
    print("Array: \(array)")
    if array.count <= 1 {
        return array
    } else {
        var middle = array.count/2
        let isOddOrEven = array.count % 2
        if isOddOrEven == 1 {
            middle += 1
        }
        let leftSide = mergeSort(array: Array(array[0 ..< middle ]))
        let rightSide = mergeSort(array: Array(array[middle ..< array.count]))
        let merged = merge(a: leftSide, b: rightSide)
        if copy.sorted() != merged {
            print("Array: \(merged)")
        } else {
        }
        return merged
    }
}

func merge(a: [Int], b: [Int]) -> [Int]{
    var leftEnd = a
    var rightEnd = b
    var newArray = [Int]()

    while leftEnd.count > 0 && rightEnd.count > 0 {
        if leftEnd.first! > rightEnd.first! {
            newArray.append(rightEnd.first!)
            rightEnd.removeFirst()
        } else {
            newArray.append(leftEnd.first!)
            leftEnd.removeFirst()
        }
    }
    while leftEnd.count > 0 {
        newArray.append(leftEnd.first!)
        leftEnd.removeFirst()
    }
    while rightEnd.count > 0 {
        newArray.append(rightEnd.first!)
        rightEnd.removeFirst()
    }
    return newArray
}
let finalResult = mergeSort(array:unsortedIntegers)
print("Array: \(finalResult)")
