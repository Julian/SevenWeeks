Counter := Map clone
Counter countWords := method(string,
    string split foreach(word, 
        current := self atIfAbsentPut(word, 0)
        self atPut(word, current + 1)
    )
)

counter := Counter clone
counter countWords("foo bar baz foo quux")
counter foreach(key, value, writeln(key, " = ", value))
