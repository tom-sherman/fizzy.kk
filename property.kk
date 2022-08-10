module property

import std/num/random
import generator

alias property<a> = (generator<a>, a -> bool)

pub fun assert(
  g : generator<a>,
  run : a -> bool,
  show : a -> string, iterations = 10
) : <pure,random> ()
  var i := 0
  while { i < iterations }
    val value = g()
    if !value.run then throw("Property test failed  with: " ++ value.show)
    i := i + 1
