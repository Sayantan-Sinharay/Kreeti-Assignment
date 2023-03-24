def divide(a, b)
  if b == 0
    raise ZeroDivisionError, "Error: Cannot divide by zero"
  else
    return a / b
  end
end

begin
  puts divide(10, 2) # 5
  puts divide(10, 0) # ZeroDivisionError: Error: Cannot divide by zero
rescue ZeroDivisionError => e
  puts e.message
end
