class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        l = ['','','abc','def','ghi','jkl','mno','pqrs','tuv','wxyz']
        output = []
        for a in digits:
            a = int(a)
            if len(output) == 0:
                for b in l[a]:
                    output.append(b)
            else:
                new_output = []
                for c in output:
                    for b in l[a]:
                        new_output.append(f'{c}{b}')
                output = []
                for a in new_output:
                    output.append(a)
                    
        return(output)