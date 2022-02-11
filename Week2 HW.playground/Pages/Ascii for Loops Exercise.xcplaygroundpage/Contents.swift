import Foundation


let path = Bundle.main.path(forResource: "Spongebob.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print("str.count",str.count)
//print(str)

//question: why my squuidsplit count only for one?
let squidSplit = str.split(separator: "\n", omittingEmptySubsequences: false)
print("squidSplit.count \(squidSplit.count)")


for index in 0...1 {
  let it = squidSplit[index]
  print(it, it.count, index)
}
