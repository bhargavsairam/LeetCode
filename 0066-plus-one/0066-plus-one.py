class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        return ([int(a) for a in (str(int(''.join(map(str,digits)))+1))])