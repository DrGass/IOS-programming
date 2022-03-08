import Foundation

var min,max : Int
min = 0
max = 0

print("First input")
if let input1 : Int = Int(readLine() ?? "0"){
    min = input1
}

print("Second input")
if let input2 : Int = Int(readLine() ?? "0"){
    max = input2 
}

if min > max{
    let temp = min
    min = max
    max = temp
}


// print (min,max)

var array = [Int]()

for i in (min...max){
    array.append(i)
}
    
// print(array)

enum Accepting{
    case Accept
    case Reject
}

var enumArray = [Accepting]()

for i in array{
    if i % 3 == 0{
        enumArray.append(Accepting.Accept)
    }
    else{
        enumArray.append(Accepting.Reject)
    }
}

for i in array{
    print(i,terminator:"|")
}
print("")
for i in enumArray{
    if i == Accepting.Accept{
    print("+",terminator:"|")
    }
    else if i == Accepting.Reject{
    print(".",terminator:"|")
    }
}
// var nowe : Accepting
// print (nowe)