frequencies = {}

my_array = [1, 2, 3, 2, 5, 6, 9, 6, 5, 3, 2, 2, 1, 8, 10, 10, 7]

my_array.each do |ele|
  if frequencies.has_key?(ele)
    frequencies[ele] += 1
  else
    frequencies[ele] = 1
  end
end

p frequencies
