# Counting Duplicates (6 KYU)

Solving [this](https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby) codewars challenge.

## Description

Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

## Examples

"abcde" -> 0 `# no characters repeats more than once` </br>
"aabbcde" -> 2 `# 'a' and 'b'` </br>
"aabBcde" -> 2 `# 'a' occurs twice and 'b' twice (`b` and `B`)` </br>
"indivisibility" -> 1 `# 'i' occurs six times` </br>
"Indivisibilities" -> 2 `# 'i' occurs seven times and 's' occurs twice` </br>
"aA11" -> 2 `# 'a' and '1'` </br>
"ABBA" -> 2 `# 'A' and 'B' each occur twice` </br>

## Tests

Following the red, green, refactor TDD principle to test drive towards the solution.

```
it('should return 0') do
  expect(duplicates.count('')).to eq 0
  expect(duplicates.count('a')).to eq 0
end

it('should return 1') do
  expect(duplicates.count('Aa')).to eq 1
  expect(duplicates.count('aa')).to eq 1
  expect(duplicates.count('aaa')).to eq 1
  expect(duplicates.count('bb')).to eq 1
  expect(duplicates.count('bazcvbb')).to eq 1
end

it('should return 2') do
  expect(duplicates.count('abba')).to eq 2
end
```
