# Blocks Vs Procs Vs Lambdas

# Blocks
# Blocks in can be defined as ruby can be define as a bunch of lines of code enclose within braces `{}` or `do...end` keyword.
# Blocks can not be stored in variable nor passed as an argument but can be implicitly or explicitly invoked in a method.
# We can also pass arguments inside the block.

def block_method()
  yield
end

block_method { puts "I am a block!" }

# Another relevant example is with each method
[1, 2, 3].each do |x| # Here we have `do...end` instead of `{}`
  puts x
end

# Procs
# Proc is a special type object that stores a block. They are reusable as the can be stored in variables as well as passed as a parameter to a method.
# Like blocks we can also pass as me arguments we want.

def proc_method(&blk)
  blk.call
end

new_proc = Proc.new { puts "I am a proc!" }
proc_method(&new_proc)
new_proc.call

# Lambda
# Lambda are simple to procs but are mostly understood as anonymous functions.
# Like procs we can perform all the operation on lambdas. Such passing as an argument, storing in a variable etc.
# Unlike procs lambdas are strick with the number of arguments passed. It will throw an error if we pass more that the required number of arguments to a lambda.
# There is another major difference between Procs and Lambda is how the return. A lambda will return normally, like a regular method. But a proc will try to return from the current context. Demonstrated in the below example

def proc_vs_lambda
  a_proc = Proc.new { return "I will terminate the method!" }
  a_lambda = -> { return "I will just terminate myself!" }
  puts "The Fight Begins!!!"
  puts a_lambda.call
  a_proc.call
  puts "The Winner is..." # Did not got executed
end

puts proc_vs_lambda
