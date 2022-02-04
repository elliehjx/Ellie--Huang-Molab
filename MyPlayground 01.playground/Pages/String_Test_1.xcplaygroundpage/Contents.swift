

// Each letter stands for one animal emoji; put the letter into input and the animals would come out

import Foundation

var str = ""
let n = 26 // 79 100
for uni in 0...n {
    // U+1F41X ()
    //
  let codepoint = 0x1f410 + uni
  let codepointString = String(format: "0x%02X", codepoint)
  let emoji = String(Character(UnicodeScalar(codepoint)!))
//  print("\(uni) \(codepointString) \(emoji)")
  str += emoji
}
//print(str)
let letters:Array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let input = "dyq"
print(input[input.index(input.startIndex, offsetBy: 1)])
var result = ""
for i in 0..<input.count {
    let char = input[input.index(input.startIndex, offsetBy: i)]
    let idx = letters.index(of: String(char))!
    let codepoint = 0x1f410 + idx
    let codepointString = String(format: "0x%02X", codepoint)
    let emoji = String(Character(UnicodeScalar(codepoint)!))

    result += emoji
    print("\(idx) \(codepointString) \(emoji)")

}
print(result)
print(str)






