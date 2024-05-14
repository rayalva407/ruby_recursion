class Fibonacci
def self.fib(n)
    return 0 if n == 0
    return 1 if n == 1
    fib(n-1) + fib(n-2)
  end
end

if __FILE__ == $0
  puts Fibonacci.fib(5)
end