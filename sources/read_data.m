function data = read_data( file_name )
%READ_DATA Function reads the data from file
%
%   Input:
%       - file_name the name of the file
%
%   Output:
%       - data the Left foot data

database_directory = '../database/';

% Check if file exists
if ~exist( [ database_directory file_name ], 'file' )
    % Problem arrise
    error( [ 'File ' file_name ' does not exist' ] );
end

data_raw = dlmread( [ database_directory file_name ] );

% We'r interested only in left foot data
data = data_raw(:,19);


end