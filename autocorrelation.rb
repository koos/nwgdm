class Autocorrelation
  
  def initialize(signal, windowlength)
    @signal = signal
    @windowlength = windowlength
  end  
  
  # Calculating the Autocorrelation for a given signal
  def calculate_acf
    denominator = 0.0
    acf = Array.new
    for i in 0..@signal.size-@windowlength-1 do
      acf[i] = 0
      denominator = 0.0
      for k in 0..@windowlength do
        acf[i] += @signal[k] * @signal[k+i]
        denominator += @signal[k+i]*@signal[k+i]
      end
      acf[i] = acf[i]/denominator
    end
    return acf
  end
  
  ###########################
  ## Some other algorithms ##
  ###########################
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
  #
  ###########################
  ###########################
  # for (int i=0; i<myFFT.spectrum.length; i++) {
  #      sum=0;
  #      for (int j=0; j<myFFT.spectrum.length-i; j++) {
  #        sum += myFFT.spectrum[j] * myFFT.spectrum[j+i];
  #      }
  #      R[i]=sum;
  #    }
  
end