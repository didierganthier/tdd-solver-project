class Solver
  def factorial(num)
    if num.negative?
      raise 'factorial is not defined for negative integers'
    elsif num.zero?
      1
    else
      (1..num).reduce(:*)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(name)
    if (name % 3).zero? && (name % 5).zero?
      'fizzbuzz'
    elsif (name % 3).zero?
      'fizz'
    elsif (name % 5).zero?
      'buzz'
    else
      name.to_s
    end
  end
end
