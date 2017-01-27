variable = "stringy string"

puts "\nvariable = \"" + variable + "\""

puts """
I am using \"\"\"triple DOUBLE quotes\"\"\" to print this.
This is how a double backslash prints: \\
This is how an empty pair of single quote prints: ''
This is how a string interpolation is printed: #{variable}
This is how a string interpolation of an inline string is printed: #{'this is inline'}
Interpolation worked on the above line. Escaping the single quotes on the inline string was not necessary.
"""

puts puts '''
I am using \'\'\'triple SINGLE quotes\'\'\' to print this.
This is how a double backslash prints: \\
This is how an empty pair of single quote prints: ''
This is how a string interpolation is printed: #{variable}
This is how a string interpolation of an inline string is printed: #{\'this is inline\'}
Interpolation did not work on the above line. Escaping the single quotes on the inline string is necessary to compile.
'''

puts "A list of escape sequences"
puts """
\\\\	Backslash ()
\\\'	Single-quote (\')
\\\"	Double-quote (\")
\\a	ASCII bell (BEL)
\\b	ASCII backspace (BS)
\\f	ASCII formfeed (FF)
\\n	ASCII linefeed (LF)
\\r	ASCII Carriage Return (CR)
\\t	ASCII Horizontal Tab (TAB)
\\uxxxx	Character with 16-bit hex value xxxx (Unicode only)
\\v	ASCII vertical tab (VT)
\\ooo	Character with octal value ooo
\\xhh	Character with hex value hh
"""
