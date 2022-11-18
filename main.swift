// -> return String Type Value
func getLikes() -> String {
  return "Something"
}
print(getLikes())


// guard let is used to Handle nil
func getStatus(name: String?) {
  guard let fName = name else {
    print("name is Empty")
    return
  }
  print(fName)
}
getStatus(name: "Sujit")


// if else
func getHatersStatus(weather: String) -> String? {
  if weather == "Sunny" {
    return nil
  }else {
    return "Hate"
  }
}
func takeHatersStatus(status: String) {
 if status == "Hate"{
    print("All are Hating")
  }
}
if let haterStatus = getHatersStatus(weather:"Rainy") {
  takeHatersStatus (status: haterStatus)
}


var items = ["sujit","hemant","rahul","raj"]
func position (of string: String, in array:[String]) -> Int {
  for i in 0..<array.count{
    if array[i] == string {
      return i
    }
  }
  return -1
}
let rahulPosition = position(of: "raj", in: items)
print(rahulPosition)




class Person{
  var firstName: String?
  var lastName: String?
  var city: String?

  init(firstName: String?, lastName: String?, city: String?){
    self.firstName = firstName
    self.lastName = lastName
    self.city = city
  }
}
let person = Person(firstName:"sujit", lastName: nil, city: "Barshi")

// nil coalescing
// default value
print(person.lastName ?? "Bokade")

// guard let
func getPersonData(){
  guard let lastName = person.lastName else {
    print("Last Name is Empty")
    return
  }
  print(lastName)
}
getPersonData()


extension String{
  func printName(){
    print(self)
  }
}
var name: String = "ABCD"
name.printName()


var result: Any = "sujit"
result = 10
print(result)



var a: Int = 12
var b: Any = "sujit"
b = 14

let val = b as! Int
print(a + val)


var arr:[AnyObject] = ["Sujit" as AnyObject,1 as AnyObject,true as AnyObject]
print(arr)

                                     // Tuple Type 
func minMaxValues(array:[Int]) -> (minValue:Int, maxValue: Int){
  var currentMinValue = array[0]
  var currentMaxValue = array[0]
  for value in array[1..<array.count]{
    if value < currentMinValue {
      currentMinValue = value
    }else if value > currentMaxValue{
      currentMaxValue = value
    }
  }
  return(currentMinValue, currentMaxValue)
}
print(minMaxValues(array: [10,54,2,8,6,25]))



func statements(){
  print("1st Statement")
  defer {
    print("3rd Statement")
  }
  print("2nd Statement")
}
statements()

print("---------------")
func displayFiles(){
  print("1st file ")
  do {
   defer { 
          print("2nd File")
  } 
  print("3rd File")
  }
  print("4th File")
}
displayFiles()

print("---------------")

func displayDefer(){
  defer {print("1st Defer")}
  defer {print("2nd Defer")}
  do {print("3rd Defer")}
}
displayDefer()

print("------------")

let interval = 2
for i in stride(from: 1, through: 10, by: interval) {
  print(i)
}
print("-----------------")

let array1:[String] = ["sujit", "mahesh", "raj", "manish"]
for(i,value) in array1.enumerated(){
  print(i, value)
}

print("-----------------")

var number: Int = 1
repeat {
  print(number)
  number += 1
} while number <= 10

print("--------------")

// closures
var addTwoNumbers3 = {
  (number0: Int, number1: Int) -> Int in 
  return number0 + number1
}
var result3 = addTwoNumbers3(4, 4)
print("Addition of two numbers = \(result3)")


var addTwoNumbers:(Int, Int) -> Int = {
  (number1, number2) in return number1 + number2
}
var result1 = addTwoNumbers(2, 4)
print("Addition of two numbers = \(result1)")


var addTwoNumbers1:(Int, Int) -> Int = {
  return $0 + $1
}
var result2 = addTwoNumbers1(8, 4)
print("Addition of two numbers = \(result2)")

print("---------------------")

// Closures as Function Parameter
// define a function and pass closure
func myInfo(search: ()->()) {
  print("My name is Sujit")

  // closure call
  search()
}

// pass closure as a parameter
myInfo(search: {
   print("Good Afternoon!")
})


// define a function with automatic closure
// must use the @autoclosure keyword
func printMessage(message: @autoclosure () -> ()) {
 message()
}

// pass closure without {}
printMessage(message: print("Have a Nice Day"))