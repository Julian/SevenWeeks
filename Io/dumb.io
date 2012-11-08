(2 / 3) println
(2 / 0) println

Number divide := Number getSlot("/")
Number / = method(denom,
    if(denom == 0, 0, divide(denom))
)

(2 / 3) println
(2 / 0) println
