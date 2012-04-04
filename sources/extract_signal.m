for i=1:size( Pt_t, 2 ) 
  fprintf('.');
  signal = Pt_t{i};
	buffer = [];
  k = 0; 
  for j=1:size(signal, 1) 
  	if ( signal(j) ~= 0 ) 
  	  buffer = [ buffer signal(j) ]; %#ok<AGROW> 
    else 
      if ~isempty(buffer) && length(buffer) > 10 && length(buffer) < 200 
        % Store the buffer 
        data.Pt{ length(data.Pt)+1 } = buffer; 
        % Clear the buffer 
        if ( j - k > 50 && j - k < 200 ) 
          data.Pt2( length(data.Pt2)+1 ) = j - k; 
        end 
        k = j; % Start of stance 
        buffer = []; 
      else
        buffer = []; 
      end 
    end 
  end 
end
