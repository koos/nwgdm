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

## File writer
# 
# fh = FileHelper.new('sinus.csv')
# fh.write_to_file(signal)
# fh = FileHelper.new('korrelation.csv')
# fh.write_to_file(acfs)


## Hash to array
# require 'array'
# a = []
# for i in 0..1000 do
#   a << i
# end
# c = a.to_hash_keys {|v| a.index(v).to_s}

## Sampling a signal
# http://paste.frubar.net/8451/txt
#
# //Sinus Abtasten
#   sinus = new double[abtastwerte];
#   if (sinus == NULL) {
#     fprintf(stderr, "new double[abtastwerte] failed.\n");
#     return (-1);  
#   } 
#   double step = (2*PI) / abtastwerte;
#   for (int i = 0; i < abtastwerte; i++) {
#     sinus[i] = sin(frequenz*i*step);
#   }
#   plot("sinus", sinus, abtastwerte, 0, (2*PI), "lines", "Sinus", "x", "y");

