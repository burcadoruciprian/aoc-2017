import Algorithms
import Collections
import Foundation

func parse_input(input: String) -> [[Int]] {
  return input.split(separator: "\n").map({ $0.split(separator: " ").map({ Int($0)! }) })
}

func part1(input: [[Int]]) -> Int {
  return input.reduce(0) {
    let (x, y) = $1.minAndMax(by: <)!
    return $0 + y - x
  }
}

func part2(input: [[Int]]) -> Int {
  return input.reduce(
    0,
    { (t, val) -> Int in
      let f = val.sorted().combinations(ofCount: 2).first(where: { (x) -> Bool in
        return x[1] % x[0] == 0
      })!
      return t + f[1] / f[0]
    })
}

let parsed_input = parse_input(input: INPUT)
print("Part1: \(part1(input: parsed_input))")
print("Part2: \(part2(input: parsed_input))")
