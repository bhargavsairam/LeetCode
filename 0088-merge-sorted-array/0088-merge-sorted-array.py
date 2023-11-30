class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        i=j=cnt=0
        new = []
        for k in nums1:
            new.append(k)
        while m>i and n>j:
            if new[i] > nums2[j]:
                nums1[cnt] = nums2[j]
                j = j+ 1
                cnt += 1
            else:
                nums1[cnt] = new[i]
                cnt += 1
                i = i+1
        while j != n:
            nums1[cnt] = nums2[j]
            j = j+1
            cnt += 1
        while i != m:
            nums1[cnt] = new[i]
            i += 1
            cnt += 1