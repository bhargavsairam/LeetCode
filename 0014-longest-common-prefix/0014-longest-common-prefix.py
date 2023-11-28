class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        len1 = min(len(a) for a in strs)
        com = ""
        for i in range(len1):
            new = strs[0][i]
            for b in strs:
                if b[i] != new:
                    return com
            com += new
        return com