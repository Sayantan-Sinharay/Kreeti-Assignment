# In Ruby we can pass a block of code to any function or method.

# Implicit Block
def implicit_block()
  yield # This `yield` is special keyword in ruby that implicitly add the block inside the function
  yield # We can use it as many times we want. They can also accept parameters.
  yield
end

implicit_block() { puts "This is implicit block" }

# Explicit Block
def explicit_block(&block)
  yield # This works as it is
  block.call # We can use this `call()` method to call the block explicitly. Hence the name explicit block
end

explicit_block() { puts "This is explicit block" }
