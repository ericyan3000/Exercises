=begin
 input: odd integer (n)
 output: array of strings composed by " " and "*"
 rule: line n has "*" on position for line m 
        3 -> [[1,1],[0,2],[1,1]]
        5 -> [[2,2],[1,3],[0,4], [1,3], [2,2]]
        n,m -> [[(n/2 +1) - m -1, (n/2 +1) + m - 1]] for first_half
               second_half = first_half.delete_at(-1).reverse

data structure: string -> array of strings

algorithm: 1. (n/2+1).times create n strings with m
           2. create required array like ["  *  "]
            a. first create string with " " * n
            b. substitue " " at position [[(n/2 +1) - m -1, (n/2 +1) + m - 1]] with "*"
           3. complete = first_half + first_half.delete_at(-1).reverse

=end