import Foundation

//in this file, i want to print out a spongebob and squidward

let path = Bundle.main.path(forResource: "squid.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
//print(str)

// same as a function
func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

print(load("squid.txt"))
print(load("Spongebob.txt"))

