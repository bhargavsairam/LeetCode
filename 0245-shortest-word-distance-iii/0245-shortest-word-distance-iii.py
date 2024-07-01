from collections import defaultdict
class Solution:
    def shortestWordDistance(self, wordsDict: List[str], word1: str, word2: str) -> int:
        # if word1 == word2:
        #     minDistance = len(wordsDict)
        #     i,j = 0, len(wordsDict)-1
        #     while word1 != wordsDict[i]:
        #         i += 1
        #     while word2 != wordsDict[j]:
        #         j -= 1
        #     return abs(i-j)
        # else:
        #     l1 = -1
        #     l2 = -1
        #     minDist = len(wordsDict)
        #     for i in range(len(wordsDict)):
        #         if word1 == wordsDict[i]:
        #             l1 = i
        #         elif word2 == wordsDict[i]:
        #             l2 = i
        #         if l1 != - 1 and l2 != -1:
        #             minDist = min(minDist, abs(l1-l2))
        #     return minDist     
        

        n = len(wordsDict)
        minimum = n
        w1 = -1
        w2 = -1
        for i in range(n):
            if wordsDict[i] == word1:
                w1 = i
                if w2 != -1:
                    minimum = min(w1-w2,minimum)
            if wordsDict[i] == word2:
                w2 = i
                if w1 != -1 and w1 != w2:
                    minimum = min(w2-w1,minimum)
        return minimum
                    