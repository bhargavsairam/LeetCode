class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        new = 1
        for i in range(1,len(nums)):
            if nums[i-1] != nums[i]:
                nums[new] = nums[i]
                new = new+1
        return new