class Solution:
    def isPalindrome(self, x: int) -> bool:
        list1 = list(a for a in str(x))
        if list1 == list1[::-1]:
            return True
        else:
            False