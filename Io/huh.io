Car := Object clone do(
    drive := method("vroom" println)
    go := method("went" println)
)

go_drive := Car getSlot("drive")

car := Car clone
car go_drive

"???" println

go := Car getSlot("drive")
car go

"!!!" println


Car accelerate := method(
    drive
    go
)

drive := method("wreak havoc" println)
message(accelerate) doInContext(car, Lobby)
