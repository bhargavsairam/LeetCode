class Solution:
    def shortestDistance(self, wordsDict: List[str], word1: str, word2: str) -> int:
        idx1, idx2 =-1,-1 
        minDistance = len(wordsDict)
        for i in range(len(wordsDict)):
            if word1 == wordsDict[i]:
                idx1 = i
            elif word2 == wordsDict[i]:
                idx2 = i
            if (idx1 !=-1 and idx2 !=-1):
                minDistance = min(minDistance,abs(idx1-idx2))
        return minDistance