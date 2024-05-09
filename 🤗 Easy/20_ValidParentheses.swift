/*
  https://leetcode.com/problems/valid-parentheses/description/

  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:
    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
    Every close bracket has a corresponding open bracket of the same type.
*/

func isValid(_ s: String) -> Bool {
    var result: Bool = false
    var r: String = s
    
    for char in s {
        if char == "(" {
            if let index = r.firstIndex(of: ")") {
                r.remove(at: index)
            }
        }
        else if char == "[" {
            if let index = r.firstIndex(of: "]") {
                r.remove(at: index)
            }
        }
        else if char == "{" {
            if let index = r.firstIndex(of: "}") {
                r.remove(at: index)
            }
        }
    }
    
    if r.count == s.count / 2 {
        result = true
    }
    
    return result
}

print(isValid("()")) // true
print(isValid("([)]")) // false
print(isValid("(]")) // false