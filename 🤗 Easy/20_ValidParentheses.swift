/*
  https://leetcode.com/problems/valid-parentheses/description/

  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:
    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
    Every close bracket has a corresponding open bracket of the same type.
*/

func isValid(_ s: String) -> Bool {
    var result = [Bool]()
    
    let r = stride(from: 0, to: s.count - 1, by: 2).map { index in
        let firstCharIndex = s.index(s.startIndex, offsetBy: index)
        let secondCharIndex = s.index(after: firstCharIndex)
        return (s[firstCharIndex], s[secondCharIndex])
    }
    
    for pair in r {
        if pair.0 == "(" && pair.1 == ")" {
            result.append(true)
        } else if pair.0 == "{" && pair.1 == "}" {
            result.append(true)
        } else if pair.0 == "[" && pair.1 == "]" {
            result.append(true)
        }
    }
    
    if result.count == r.count {
        return true
    } else { return false }
    
}


print(isValid("()")) // true
print(isValid("()[]{}")) // true
print(isValid("([)]")) // false
print(isValid("(]")) // false
print(isValid("{[]}")) // true
