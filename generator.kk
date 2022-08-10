module generator

import std/num/random
import std/core
import std/num/decimal

// TODO: Enhance random effect with one that allows retrieving the current state
pub alias generator<a> = () -> random a

pub fun int(min = -2^31, max = 2^31) : generator<int>
  fn()
    val range = max - min + 1
    val offset = random-int() % range
    min + offset

pub fun boolean() : generator<bool>
  random-bool

pub fun char() : generator<char>
  fn()
    (int(min=0, max=25)() + 97).char

pub fun tuple2(g1 : generator<a>, g2 : generator<b>) : generator<(a, b)>
  fn()
    (g1(), g2())

pub fun list(g : generator<a>, min : int = 0, max : int = min + 10) : generator<list<a>>
  fn()
    val size = int(min, max)()
    list(0, size - 1, fn(_) { g() })

pub fun string(min : int = 0, max : int = min + 10) : generator<string>
  fn()
    list({ char()().string }, min, max)().join("")
