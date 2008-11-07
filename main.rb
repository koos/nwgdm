require 'rubygems'
require 'gruff'
require 'signalbox'
require 'autocorrelation'

signal_frequence = 10.0
samples = 1000
duration = 10
windowlenght = 100

## Creating and ploting a sinus
puts "Setting up a signal..."
signal = Signalbox.new(signal_frequence, samples, duration)
puts "Defining a sinus..."
sinus = signal.sine
puts "Preparing for printing..."
signalplot = Gruff::Line.new(2000)
puts "Print Signal..."
signalplot.title = "Signal, #{Time.now}" 
signalplot.data("Signal, fs=#{signal_frequence}, samples= #{samples}, T= #{duration}", sinus)
puts "Write file..."
signalplot.write("images/sinus_sampling.png")
puts "Done."

# Calculating and ploting the autocorrelation for the sinus
puts "Preparing for autocorrelation"
acf = Autocorrelation.new(sinus, windowlenght)
autocorrelation = acf.calculate_acf
puts "Preparing for printing..."
acfplot = Gruff::Line.new(2000)
puts "Print Autocorrelation..."
acfplot.title = "Autocorrelation, #{Time.now}" 
acfplot.data("Autocorrelation, fs=#{signal_frequence}, samples= #{samples}, T= #{duration}", autocorrelation)
puts "Write file..."
acfplot.write("images/autocorrelation.png")
puts "Done."
