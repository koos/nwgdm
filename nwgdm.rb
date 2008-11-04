class NWGDM
  
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
  
  
  def sample_sinus(f_signal, f_sample, duration)
    # f(t) = A*sin(wt+phi) = A*sin(2pi*f*t+phi) = A*sin(2pi*(1/T)*t+phi)
    result = []
    for i in 0...f_sample*duration do #*duration do
      result[i] = Math.sin(f_signal*i*(2*Math::PI/f_sample))
      # result[i] = Math.sin(f_signal*(2*Math::PI/f_sample*duration)*i)        
     end
     result
  end
  
  def acf(signal, windowlength)
    n = signal.size
    denominator = 0.0
    acf = []
    for i in 0..(n-1-windowlength) do
      acf[i] = 0
      denominator = 0.0
      
      for k in 0..windowlength do
        acf[i] = acf[i] + signal[k] * signal[k+i]
        denominator = denominator+signal[k+i]*signal[k+i]
      end
      
      acf[i] = acf[i]/denominator
    end
    
    return acf
  end
  
end