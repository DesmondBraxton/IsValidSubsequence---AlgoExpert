import UIKit

// Traversing both arrays until there is a match.
// If the sequence matches the array we return true
// If the pointer is equal to the count of the sequence its a valid subsequence
// We set the index thats being traversed to be compared to the pointer index of the sequence
// Effectively making this the two pointer technique
// we use

var array = [5,1,22,25,6,-1,8,10]
var sequence = [1,6,-1,10]


class Program {
  static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
       var isValid = false
       var pointer = 0
      
      for i in 0..<array.count {
          if array[i] == sequence[pointer] {
              pointer += 1
          }
          if pointer == sequence.count{
              isValid = true
              break
          }
          
      }
      return isValid
  }
}

let result = Program.isValidSubsequence(array, sequence)

print(result)
