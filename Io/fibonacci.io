fibCache := Map clone
fib := method(n,
    return fibCache atIfAbsentPut(
        n asString,
        if(n <= 1, n, fib(n - 1) + fib(n - 2))
    )
)

for(i, 0, 30, fib(i) println)
