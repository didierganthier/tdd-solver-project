class Solver
    def factorial(n)
        if n < 0
            raise "factorial is not defined for negative integers"
        elsif n == 0
            1
        else
            (1..n).reduce(:*)
        end
    end

    def reverse(word)
        word.reverse
    end
end