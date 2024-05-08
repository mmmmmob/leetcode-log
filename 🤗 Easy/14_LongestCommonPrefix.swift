/*
  https://leetcode.com/problems/longest-common-prefix/
  
  Write a function to find the longest common prefix string amongst an array of strings.
  If there is no common prefix, return an empty string "".

  Example 1:
    Input: strs = ["flower","flow","flight"]
    Output: "fl"

  Example 2:
    Input: strs = ["dog","racecar","car"]
    Output: ""
*/

func longestCommonPrefix(_ strs: [String]) -> String {
    guard let firstStr = strs.first else { return "" }
    
    var commonPrefix = ""

    for (i, char) in firstStr.enumerated() {
        for str in strs.dropFirst() {
            if i >= str.count || str[str.index(str.startIndex, offsetBy: i)] != char {
                return commonPrefix
            }
        }
        commonPrefix.append(char)
    }
    
    return commonPrefix
}

print(longestCommonPrefix(["flower","flow","flight"])) // "fl"
print(longestCommonPrefix(["dog","dracecar","dcar"])) // ""