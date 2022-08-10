import property
import generator

fun main()
  assert(
    g=tuple2(int(), int()),
    run=fn ((a, b)) a + b == b + a,
    show=fn((a, b)) "(" ++ a.show ++ ", " ++ b.show ++ ")"
  )
  println("OK")
