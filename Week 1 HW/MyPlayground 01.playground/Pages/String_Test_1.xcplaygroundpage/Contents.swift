/*import UIKit

//var str = "Hello, playground"
//print(str)
//str = "some data"
//print(str)
let img1 = UIImage(systemName: "multiply.circle.fill")
let wiseWords="\"Imagination is more important than knowledge\" - Einstein"

//using unicode to call out special characters
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"



//write a function to display a range of emoji
import Foundation
var str = ""*/


//


// Explore jstr character range

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
let letters:Array = ["a","b","c","d","e","f","g"]

let input = "df"
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
