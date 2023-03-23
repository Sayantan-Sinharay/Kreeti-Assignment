# Here we have an example how a proc is passed as an argument.
def func_with_proc(&new_proc) # We have used `&` to accept any block as an parameter
  new_proc.call # Calling our proc explicitly inside the function
end

# Creating a new proc
a_proc = Proc.new { puts "This is a proc!" }

func_with_proc(&a_proc) # Here we are passing our proc to the `func_with_proc`. And use `&` to pass the proc.
