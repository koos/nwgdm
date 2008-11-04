require 'rubygems'
require 'gruff'
require 'nwgdm'
require 'array'

c = NWGDM.new

################ First lecture: sampling a signal ################

# Parameter: Signal Frequence (Hz/s), Sample Frequenze (Hz/s), Duration (e.g. 5 seconds)
signal_frequence = 1.0
samples = 44200
duration = 1.0

signal_frequence_1 = 5.0
samples_1 = 44200
duration_1 = 1.0

signal_frequence_2 = 1.0
samples_2 = 44200
duration_2 = 5.0

puts "Sampling signal Signal frequence: #{signal_frequence}, Samples: #{samples}, Duration: #{duration}..."
signal = c.sample_sinus(signal_frequence, samples, duration)
puts 'Done'

puts "Sampling signal Signal frequence: #{signal_frequence_1}, Samples: #{samples_1}, Duration: #{duration_1}..."
signal_1 = c.sample_sinus(signal_frequence_1, samples_1, duration_1)
puts 'Done'

puts "Sampling signal Signal frequence: #{signal_frequence_2}, Samples: #{samples_2}, Duration: #{duration_2}..."
signal_2 = c.sample_sinus(signal_frequence_2, samples_2, duration_2)
puts 'Done'

# fh = FileHelper.new('sinus.csv')
# fh.write_to_file(signal)

puts 'Printing signal...'
puts 'Generate print...'
sig = Gruff::Line.new
sig.title = "Signal, #{Time.now}" 
puts 'Prepraing data...'
sig.data("Signal, Signal frequence: #{signal_frequence}, Samples: #{samples}, Duration: #{duration}", signal)
sig.data("Signal, Signal frequence: #{signal_frequence_1}, Samples: #{samples_1}, Duration: #{duration_1}", signal_1)
sig.data("Signal, Signal frequence: #{signal_frequence_2}, Samples: #{samples_2}, Duration: #{duration_2}", signal_2)

puts 'Preparing labels...'

# a = []
# for i in 0..1000 do
#   a << i
# end
# c = a.to_hash_keys {|v| a.index(v).to_s}

sig.labels = {0 => '0', 11000 => '11000', 44000 => '44000'}

puts 'Writing file...'
sig.write("sinus_comparsion.png")
puts 'Done'

################ Testing a signal with autocerrelation ################

# puts 'Calculating autocorrelation...'
# acfs = c.acf(signal, 10000)
# puts 'Done'
# 
# puts 'Printing autocorrelation...'
# acf = Gruff::Line.new
# acf.title = "Autokorrelation"
# acf.data("Autokorrelation", acfs)
# acf.write('autokorrelation.png')
# puts 'Done'

# fh = FileHelper.new('korrelation.csv')
# fh.write_to_file(acfs)
