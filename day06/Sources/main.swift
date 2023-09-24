import Algorithms
import Collections
import Foundation

let INPUT = [0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11]

func part1(banks: [Int]) -> Int {
  var banks = banks
  var cache = Set<String>()
  repeat {
    let (new, _) = cache.insert(banks.map({ String($0) }).joined());
    if (!new) {
      return cache.count;
    }
    let (index, max) = banks.enumerated().max(by: {$0.element < $1.element})!;
    print(max);
    return 0;
  } while true
}

part1(banks: INPUT);
