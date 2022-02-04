
import Foundation

let str = "🌻🌷🌼🌺🌸"

func charAt(_ str:String, _ offset:Int) -> String {
    //variable, starting index and offset
    //offset means which character we want to extract
  let index = str.index(str.startIndex, offsetBy: offset)
  let char = str[index]
  return String(char)
}

//get random number from the string
let randomInt = Int.random(in: 0..<str.count)

var serial = 0

func generateLine (_ n:Int) {
    var nstr = ""
    for _ in 0..<n {
        
        //question for offset time
      let offset = (serial % str.count)
      serial += 1
      nstr += charAt(str, offset)
    }
    print(nstr)
}

//
func generateBlock(_ n: Int) {
  for _ in 0..<n {
    generateLine(n)
  }
}

generateBlock(3)
print("")
generateBlock(2)
print("")
generateBlock(1)

