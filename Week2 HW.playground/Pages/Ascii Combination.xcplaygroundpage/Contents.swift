import Foundation

func load(_ file :String) -> String {
  let path = Bundle.main.path(forResource: file, ofType: nil)
  let str = try? String(contentsOfFile: path!, encoding: .utf8)
  return str!
}

let part1 = load("newsponge.txt")
let part2 = load("newsquid.txt")

print(part1 + part2)

let part1Split = part1.split(separator: "\r").map { String($0) }
let part2Split = part2.split(separator: "\r").map { String($0) }

//print(part1Split)
//print(part2Split)

//create function for two strings and setting margins
//_margin: Int
func combine(_ part1:[String], _ part2:[String], _ margin: Int) -> [String] {
    //count the edges
  let bmax = part1.map { $0.count }.max()!
  let edge = bmax + margin
  var arr:[String] = []
  for index in 0..<part1.count {
    var line1 = part1[index]
    line1 += String(repeating: " ", count: edge - line1.count)
    var line2 = ""
    if index < part2.count {
      line2 = String(part2[index])
    }
    arr.append(line1 + line2)
  }
  return arr;
}


//if there's one more ascii behind, add one extra line that includes combo and the new combo.
// add new strings

let combo=combine(part1Split, part2Split, 3)
let str = combo.joined(separator: "\r")
print(str)
