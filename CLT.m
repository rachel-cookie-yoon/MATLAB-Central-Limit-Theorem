% Rolling a 6-sided die to illustrate the Central Limit Theorem (CLT)

populationSize = 6; % utilizing a 6-sided die
sampleCount = 100; % number of samples collected for the CLT 
sampleSize = 30; % number of rolls per sample
                   % note that in order for CLT to hold, the sample size
                   % must be sufficiently large (n >= 30)


% Original population (all dice rolls)
    % Generate values from 1 to 6 at random, in a 3000 x 1 matrix, 
    % representing 3000 dice rolls in the original population
populationData = randi([1, populationSize], sampleSize * sampleCount, 1);


% For comparison purposes, calculate the mean and standard deviation of the
% original population data
originalMean = mean(populationData(:));
originalSD = std(populationData(:));


% Prepare the original population data for implementation of the CLT
    % Reshape the original population data into a 30 x 100 matrix,
    % representing 30 dice rolls in each of the 100 samples
populationData = reshape(populationData, [sampleSize sampleCount]);


% Generate sample means
    % Prepare a 1 x 100 vector to store the mean for all 100 samples
sampleMeans = zeros(1, sampleCount);
for i = 1:sampleCount
    % Extract the sample from its column in the reshaped populationData
    sample = populationData(:,i);
    % Calculate the sample mean
    sampleMean = mean(sample);
    % Store the sampleMean in sampleMeans
    sampleMeans(1,i) = sampleMean;
end


% Calculate mean and standard deviation of the sample means 
meanSampleMeans = mean(sampleMeans(:));
sdSampleMeans = std(sampleMeans(:));


% Print results for direct comparison to verify CLT
disp('Results of the Central Limit Theorem:');
fprintf('The population mean is %.3f\n', originalMean);
fprintf('The sample mean is %.3f\n', meanSampleMeans);
fprintf('The population standard deviation is %.3f\n', originalSD);
fprintf('The sample standard deviation is %.3f\n', sdSampleMeans);


% Create figures to illustrate CLT
    % Histogram for the original population data
figure;
histogram(populationData(:), 'Normalization', 'probability');
title('Distribution of Original Population Data');
xlabel('Result of Dice Roll');
ylabel('Probability');

    % Histogram for the sampling distribution of sample means
figure;
histogram(sampleMeans, 'Normalization', 'probability');
title('Sampling Distribution of Sample Means');
xlabel('Sample Mean');
ylabel('Probability');





  
   


