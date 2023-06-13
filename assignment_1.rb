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

def fibs_rec(n, a = 0, b = 1, result = [])
  if n > 0
    result << a
    fib = a + b
    a = b
    b = fib
    fibs_rec(n - 1, a, b, result)
  end
  result
end

p fibs(8)
p fibs_rec(8)
