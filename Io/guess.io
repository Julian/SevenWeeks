#! /usr/bin/env io

prompt := "Guess a number between 1 and 100: "
number := Random value(101) floor

while((guess := File standardInput readLine(prompt) asNumber) != number,
    direction := if(guess < number, "low", "high")
    "#{guess} is too #{direction}" interpolate println
)

"Correct! #{guess} was the number!" interpolate println
