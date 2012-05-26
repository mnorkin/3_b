for i=1:size(signal_window, 2) 
  buffer = [ buffer signal_window(i) ]; %#ok<AGROW> 
  if length(buffer) > 2 
    delta = buffer(i) - buffer(i-1); 
    if delta < d_pr
      % Falls 
      buffer(i) = buffer(i-1); 
    end 
    
    if buffer(i) == buffer(i-1) && right_index == 0 
    	&& right_max == 0 && buffer(i) > min_value 
      right_index = i-1; 
      % Return the maximum in the buffer 
      right_max = max(buffer); 
    end 
  end 
end
