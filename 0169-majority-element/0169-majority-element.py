class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        a = len(nums)
        b = defaultdict(int)
        
        for i in nums:
            b[i] += 1
        
        a = a/2
        
        for key, value in b.items():
            if value > a:
                return key