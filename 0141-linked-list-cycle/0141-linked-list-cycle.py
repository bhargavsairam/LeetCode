# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        visited_node = set()
        curr_node = head
        while curr_node:
            if curr_node in visited_node:
                return True
            visited_node.add(curr_node)
            curr_node = curr_node.next
        return False