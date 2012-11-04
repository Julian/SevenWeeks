LookupError := Exception clone do(
    raise := method(key,
        super(raise("'#{key}' not found" interpolate))
    )
)

List has := method(index, index < self size)
Map has := method(key, self hasKey(key))
Sequence has := method(index, index < self size)

Indexable := Object clone do(
    squareBrackets := method(
        index := call evalArgAt(0)
        if(self has(index), self at(index), LookupError raise(index))
    )
)

Map prependProto(Indexable)
List prependProto(Indexable)
Sequence prependProto(Indexable)

foo := Map clone do(
    atPut("foo", 1)
    atPut("bar", 2)
    atPut("baz", 3)
)

"\nfoo[\"foo\"] is: #{foo[\"foo\"]}" interpolate println
"\nfoo[\"quux\"] is: " interpolate println
foo["quux"] println
