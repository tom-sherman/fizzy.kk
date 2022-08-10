# Fizzy

A hyper experimental property testing library for [Koka](https://github.com/koka-lang/koka).

## Example

```kk
assert(
  g=tuple2(int(), int()),
  run=fn ((a, b)) a + b == b + a,
  show=fn((a, b)) "(" ++ a.show ++ ", " ++ b.show ++ ")"
)
```

## Todo

Way unfinished, not even POC yet.

- Support printing of the current seed for reproduction purposes. Probably requires our own `random` effect
- Shrinking (yes, this property testing lib is so WIP it doesn't have shrinking yet)
- Better API
- Better way to support showing of generated values

## Etymology

Coca (like Koka)-Cola is fizzy. It's also a fuzz testing pun.
