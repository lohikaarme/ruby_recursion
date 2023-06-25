def fib(n, prevValue = [])
  if (prevValue[n] != nil)
    return prevValue[n]
  end

  result = 0
  if n <= 2
    result = 1
  else
    result = fib(n - 1, prevValue) + fib(n - 2, prevValue)
  end

  prevValue[n] = result
  return result
end

p fib(25)
