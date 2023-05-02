% Specify the directory containing the DETRAC-Test-Annotations-MAT 
directory = '/home/munir/Downloads/DETRAC-Test-Annotations-MAT';

% Loop over all .mat files in the directory
for file = dir(fullfile(directory, '*.mat'))'
    % Load the .mat file using the load function
    mat_data = load(fullfile(directory, file.name));
    mat_data = mat_data.gtInfo;
    
    % Get the X, Y, H, and W data from the struct
    x_data = mat_data.X;
    y_data = mat_data.Y;
    h_data = mat_data.H;
    w_data = mat_data.W;
    
    % Get the number of frames and objects
    [num_frames, num_objects] = size(x_data);
    
    % Create a folder with the same name as the .mat file
    folder_name = strrep(file.name, '.mat', '');
    mkdir(folder_name);
    
    % Loop over the data and save a .txt file for each frame with the (j X Y W H) data if X, Y, H, and W are non-zero
    for i = 1:num_frames
        data = [];
        for j = 1:num_objects
            if x_data(i,j) ~= 0 && y_data(i,j) ~= 0 && h_data(i,j) ~= 0 && w_data(i,j) ~= 0
                data = [data; j, x_data(i,j), y_data(i,j), w_data(i,j), h_data(i,j)]; %#ok<AGROW>
            end
        end
        
        % Save the data to a .txt file with leading zeros in the file name
        file_name = sprintf('img%05d.txt', i);
        file_path = fullfile(folder_name, file_name);
        dlmwrite(file_path, data, ' ');
    end
end
