class Signalbox
  
  def initialize(f_signal, samples, duration)
    @f_signal = f_signal
    @samples = samples
    @duration = duration
  end
  
  def sine
    result = Array.new
    for i in 0...@samples*@duration do
      result[i] = Math.sin(@f_signal*i*(2*Math::PI*@duration/(@samples*@duration)))
    end
    result
  end
  
  def cosine
    result = Array.new
    for i in 0...@f_sample*@duration do
      result[i] = Math.cos(@f_signal*i*(2*Math::PI*@duration/(@f_sample*@duration)))
    end
    result    
  end
  
  def rechtecksimpuls
    #...
  end
  
  def dreiecksimpuls
    [1, -1]*(@f_sample*@duration)
  end
  
end