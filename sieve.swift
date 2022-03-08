import Foundation

var arrayBound : Int = 0

print("First input")
if let input1 : Int = Int(readLine() ?? "0"){
arrayBound = input1
}

var primeArray = [Bool](repeating: true, count: arrayBound)

for i in 2...arrayBound - 1{
    // print(primeArray[i])
    if primeArray[i] == true{
        for j in stride(from: (i*i), to: arrayBound, by: i) {
            primeArray[j] = false
        }
    }
}

for i in 1...arrayBound - 1{
    if primeArray[i] == true{
    print(i)
    print(primeArray[i])
    }
}


