// https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT 
    Node.N, 
    (
        CASE 
            WHEN 
                EXISTS (
                    SELECT * FROM BST WHERE BST.N = Node.P
                ) AND 
                EXISTS (
                    SELECT * FROM BST WHERE BST.P = Node.N
                )
            THEN 'Inner'
            WHEN 
                NOT EXISTS (
                    SELECT * FROM BST WHERE BST.N = Node.P
                )
            THEN 'Root'
            ELSE 'Leaf'
        END
    ) AS Type
FROM BST AS Node
ORDER BY Node.N ASC