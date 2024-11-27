class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    arr = str.split(/(\W+)/)

    result = arr.map do |word|
      if word.length > 4 && word.match?(/^[A-Za-z]+$/)
        word[0] == word[0].upcase ? 'Marklar' : 'marklar'
      else
        word
      end
    end

    return result.join
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fib = [1, 1]
    sum = 0

    (2..nth - 1).each do |i|
      fib.push(fib[i - 1] + fib[i - 2])
    end

    fib.each do |num|
      sum += num if num.even?
    end

    return sum
  end

end
