def fib(n)
  arr = []
  (0...n).each do |i|
    if i < 2
      arr.push(i)
    else
      arr.push(arr[i - 1] + arr[i - 2])
    end
  end
  arr
end

def fib_rec(n)
  return [] if n.zero?
  return [0] if n == 1
  return [0, 1] if n == 2

  arr = fib_rec(n - 1)
  arr << (arr[-1] + arr[-2])
  arr
end

p fib(8)
p fib_rec(8)
