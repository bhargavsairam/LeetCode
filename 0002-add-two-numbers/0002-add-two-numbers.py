# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        num1, num2 = '',''
        node1,  node2 = l1, l2
        while node1 is not None:
            num1 = str(node1.val) + num1
            node1 = node1.next
        while node2 is not None:
            num2 = str(node2.val) + num2
            node2 = node2.next
        num1 = int(num1)
        num2 = int(num2)
        add = num1 + num2
        add = str(add)
        
        nodeList = list(add)

        for idx, val in enumerate(add):
            if idx == 0:
                nodeList[idx] = ListNode(val = val, next = None)
            else:
                nodeList[idx] = ListNode(val = val, next = nodeList[idx-1])


        return (nodeList[len(nodeList)-1])
        
