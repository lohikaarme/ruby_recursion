def fibs(n, result = [])
  first = 0
  second = 1
  until n.zero?
    result << first
    fib = first + second
    first = second
    second = fib
    n -= 1
  end
  result
end
