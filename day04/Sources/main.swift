import Algorithms
import Collections
import Foundation

func part1(input: String) -> Int {
  input.split(separator: "\n").reduce(
    0,
    { (counter, line) -> Int in
      let words = line.split(separator: " ")
      let uniqueWords = Set(words)
      return uniqueWords.count == words.count ? counter + 1 : counter
    })
}

func part2(input: String) -> Int {
  input.split(separator: "\n").reduce(
    0,
    { (counter, line) -> Int in
      let words = line.split(separator: " ").map({$0.sorted()});
      let uniqueWords = Set(words)
      return uniqueWords.count == words.count ? counter + 1 : counter
    })
}

print("Part1:", part1(input: INPUT));
print("Part2:", part2(input: INPUT));