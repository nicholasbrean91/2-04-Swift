// Created by: Julie Nguyen
// Created on: Dec 2018
// Created for: ICS4U
// MrCoxallStack program stack file
import Darwin

class MrCoxallStack {
    private final var stackArray: [Int] = []
    
    func printArray() {
        var output = ""
        print("Stack:")
        if stackArray.count == 0 {
            print("Nothing here.")
        }
        else { 
            for element in stackArray {
                output += "\(element)    "
            }
            print(output)
        }
    }
    func push(value: Int) -> String {
        stackArray.append(value)
        let update = "Value was added."
        return update
    }
    
    func pop() -> String {
        var top = stackArray.count - 1
        stackArray.remove(at: top)
        
        let update = "Value was removed."
        return update
    }
    
    func clear() -> String {
        var update: String
        if stackArray.count <= 0 {
            update = "Nothing here."
            return update
        }
        else {
            stackArray.removeAll()
            update = "Stack was cleared."
            return update
        }
    }
    
    func peek() -> String {
        var top = stackArray[stackArray.count - 1]
        var update: String
        
        if stackArray.count <= 0 {
            update = "Nothing here."
            return update
        }
        else {
            update = "Top of array: \(top)"
            return update
        }
    }
}
// code for isNumeric from Rosetta Code
// https://rosettacode.org/wiki/Determine_if_a_string_is_numeric#Swift
func isNumeric(str: String) -> Bool {
    return Int(str) != nil
}

var userStack = MrCoxallStack()

repeat {
    print("Enter a positive integer to add (-1 to exit, -2 to remove number, -3 to clear stack, -4 to peek):")
    
    var userNum = readLine()
    if isNumeric(str: userNum!) {
        let inputVal = Int(userNum!)
        if inputVal == -1 {
            print("Goodbye.")
            break
        }
        else if inputVal! == -2 {
            print(userStack.pop())
            userStack.printArray()
        } 
        else if inputVal! == -3 {
            print(userStack.clear())
            userStack.printArray()
        } 
        else if inputVal! == -4 {
            print(userStack.peek())
            userStack.printArray()
        }
        else if inputVal! > -4 {
            print(userStack.push(value: inputVal!))
            userStack.printArray()
        }
        else {
            print("Invalid")
        }
    }
    else {
        print("Error: Illegal Input")
        break
    }
} while true
