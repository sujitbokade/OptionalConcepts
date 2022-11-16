let employeePresentFullTime: Int = 1
let employeePresentPartTime: Int = 2
let wagePerHr: Int = 20
let fullDayHr: Int = 8
let partTimeHr: Int = 4
let totalWorkingDays: Int = 20
let totalWorkingHrs: Int = 100
var dailyWage: Int = 0
var day: Int = 1
var totalWage: Int = 0
var workingHr: Int = 0

while day <= totalWorkingDays && workingHr < totalWorkingHrs {
  let check = Int.random(in: 1..<4)
  
  // if check == employeePresentFullTime {
  //    print("Employee is Present Full Time")
  //    dailyWage = fullDayHr * wagePerHr
  //    workingHr += fullDayHr
  // } else if check == employeePresentPartTime {
  //   print("Employee is Present Part Time")
  //   dailyWage = partTimeHr * wagePerHr
  //   workingHr += partTimeHr
  // } else {
  //   print("Employee is Absent")
  // }
  print("Daily wage for day \(day) is \(dailyWage)/- Rupees")
  totalWage += dailyWage
  day += 1
}
print("--------------------------")
print("Total Working Hrs \(workingHr)")
print("TotalWage is \(totalWage)")
