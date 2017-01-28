# truth testing

puts """
true && true
expect true
> #{true && true}

false && true
expect false
> #{false && true}

1 == 1 && 2 == 1
expect false
> #{1 == 1 && 2 == 1}

\"test\" == \"test\"
expect true
> #{"test" == "test"}

1 == 1 || 2 != 1
expect true
> #{1 == 1 || 2 != 1}

true && 1 == 1
expect true
> #{true && 1 == 1}

false && 0 != 0
expect false
> #{false && 0 != 0}

true || 1 == 1
expect true
> #{true || 1 == 1}

\"test\" == \"testing\"
expect false
> #{"test" == "testing"}

1 != 0 && 2 == 1
expect false
>  #{1 != 0 && 2 == 1}

\"test\" != \"testing\"
expect true
> #{"test" != "testing"}

\"test\" == 1
expect false
> #{"test" == 1}

!(true && false)
expect true
> #{!(true && false)}

!(1 == 1 && 0 != 1)
expect false
> #{!(1 == 1 && 0 != 1)}

!(10 == 1 || 1000 == 1000)
expect false
> #{!(10 == 1 || 1000 == 1000)}

!(2 != 10 || 3 == 4)
expect false
> #{!(2 != 10 || 3 == 4)}

!(\"testing\" == \"testing\" && \"Zed\" == \"Cool Guy\")
expect true
> #{!("testing" == "testing" && "Zed" == "Cool Guy")}

1 == 1 && (!(\"testing\" == 1 || 1 == 0))
expect true
> #{1 == 1 && (!("testing" == 1 || 1 == 0))}

\"chunky\" == \"bacon\" && (!(3 == 4 || 3 == 3))
expect false
> #{"chunky" == "bacon" && (!(3 == 4 || 3 == 3))}

3 == 3 && (!(\"testing\" == \"testing\" || \"Ruby\" == \"Fun\"))
expect false
> #{3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))}
"""
