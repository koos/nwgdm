class NWGDM 
  
  # Sampling a signal
  def sample_sinus(f_signal, f_sample, duration)
    # f(t) = A*sin(wt+phi) = A*sin(2pi*f*t+phi) = A*sin(2pi*(1/T)*t+phi)
    result = []
    for i in 0...f_sample*duration do #*duration do
      result[i] = Math.sin(f_signal*i*(2*Math::PI/(f_sample*duration)))
      # result[i] = Math.sin(f_signal*(2*Math::PI/f_sample*duration)*i)        
     end
     result
  end
  
  
  # float_vec_t LPCAnalysis::autoCorrelation(const float_vec_t &x)
  # {
  #     short order=x.size();
  # 
  #     float_vec_t R(order);
  #     float sum;
  #     int i,j;
  # 
  #     for (i=0;i<order;i++) {
  #         sum=0;
  #         for (j=0;j<order-i;j++) {
  #             sum+=x[j]*x[j+i];
  #         }
  #         R[i]=sum;
  #     }
  #     return R;
  # }
  
  
  # Calculating the Autocorrelation for a given signal
  def acf(signal, windowlength)
    n = signal.size
    denominator = 0.0
    acf = []
    for i in 0..(n-windowlength-1) do
      acf[i] = 0
      denominator = 0.0
      for k in 0..windowlength do
        acf[i] += signal[k] * signal[k+i]
        denominator += signal[k+i]*signal[k+i]
      end
      acf[i] = acf[i]/denominator
    end
    return acf
  end
  
end