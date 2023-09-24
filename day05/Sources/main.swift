import Algorithms
import Collections
import Foundation

func parse(input: String) -> [Int: Int] {
  return Dictionary(
    uniqueKeysWithValues: input.split(separator: "\n").enumerated().map({ ($0, Int($1)!) }))
}

func part1(instructions: Dictionary<Int, Int>) -> Int {
  var instructions = instructions;
  var index = 0;
  var step = 0;
  repeat {
    if (!instructions.keys.contains(index)) {
      return step;
    }
    step += 1;
    let prev = index;
    index += instructions[index]!;
    instructions[prev]! += 1;
  } while true;
}

func part2(instructions: Dictionary<Int, Int>) -> Int {
  var instructions = instructions;
  var index = 0;
  var step = 0;
  repeat {
    if (!instructions.keys.contains(index)) {
      return step;
    }
    step += 1;
    let prev = index;
    let jump = instructions[index]!;
    index += jump;
    instructions[prev]! += jump >= 3 ? -1 : 1;
  } while true;
}

let inst = parse(input:INPUT);

//print("Part1: \(part1(instructions: inst))");
print("Part2: \(part2(instructions: inst))");