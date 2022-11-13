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
  return 0
}
let rahulPosition = position(of: "rahul", in: items)
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

