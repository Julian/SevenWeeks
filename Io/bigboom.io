Evil := Object clone do(
    blowUp := method(self blowUp)
)

evil := Evil clone
evil blowUp
