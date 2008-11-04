# a program to calculate 'e' using ruby.
# 'e' is the limit of this series:
# 1 + 1/1! + 1/2! + 1/3! ...

# determine the factorial value of a given number
def factorial(num)
  total=1
  for i in (1..num)
    total = total * i
  end
  total
end

e = 1.0
for den in (1..20)
  e = e + 1.0/factorial(den)
end

puts "e = #{e}"