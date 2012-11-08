2DList := List clone do(
    get := method(x, y, self at(x) at(y))
    set := method(x, y, value, self at(x) atPut(y, value))
)

dim := method(x, y,
    lst := 2DList clone
    for(i, 1, x, lst append(List clone setSize(y)))
)

lst := dim(3, 4)

lst set(0, 0, "foo")
lst set(2, 3, 12)
lst set(1, 3, 100)

lst println
