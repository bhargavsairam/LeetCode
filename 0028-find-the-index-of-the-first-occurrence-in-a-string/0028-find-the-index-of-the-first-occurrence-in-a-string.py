class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        len1 = len(needle)
        for i in range(len(haystack)-len1+1):
            if haystack[i:i+len1] == needle:
                return i
        return -1