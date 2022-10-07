import Foundation
import Swift

var unsortedStrings = [String]()
while let line = readLine() {
    unsortedStrings.append(line.lowercased())
}
/*print("Reverse order ======")
for i in unsortedStrings.reversed() {
    print(i)
}*/


func insertionSort(_ unsortedStrings: [String]) -> [String] {
    var unsorted = unsortedStrings

   var pass = 0

   var totalSwapCount = 0
   
//   print("Pass: \(pass), Swaps: 0/0, Array: \(unsorted)")
   print(unsortedStrings)
    
    
    for i in 1 ..< unsorted.count {
        var j = i
        var swap = 0
        
        while j > 0 && unsorted[j] < unsorted[j - 1] {
            (unsorted[j - 1], unsorted[j]) = (unsorted[j], unsorted[j - 1])
            j -= 1
            swap += 1
            totalSwapCount += 1
            
        }
        pass += 1
  //      print("Pass: \(pass), Swaps: \(swap)/\(totalSwapCount), Array: \(unsorted)")
    }
    return unsorted
}

var sorted = insertionSort(unsortedStrings)
print(sorted)



 
    


//

//

// Add your code below:

