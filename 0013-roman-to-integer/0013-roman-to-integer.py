class Solution:
    def romanToInt(self, s: str) -> int:
        a = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
        add = 0
        prev = 0
        for i in s:
            if prev<a[i]:
                add = add-2*prev
            add = add+ a[i]
            prev = a[i]
        return add