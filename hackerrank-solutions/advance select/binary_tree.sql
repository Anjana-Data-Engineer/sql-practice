-- Problem:
-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.

SELECT N,
    CASE 
        WHEN P IS NULL then 'Root'
        WHEN EXISTS (SELECT * FROM BST t where t.p = b.n) then 'Inner'
        ELSE 'Leaf'
        END
    AS node_type 
from BST b
order by b.N

-- Explanation:
-- P IS NULL → node has no parent → Root.
-- EXISTS (SELECT 1 FROM BST t WHERE t.P = b.N) → node is parent of at least one row → Inner.
-- Otherwise → Leaf.
-- This returns one row per node with the required labels, ordered by node value.
