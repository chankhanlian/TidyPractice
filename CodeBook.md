# Overview 

The **_Human Activity Data (tidy).txt_** is a tidy data set based on data collected from the accelerometers from the Samsung Galaxy S smartphone.  The tidy data set contains average variable values for each subject and activity.  There are 180 rows/observations and 68 columns/variables in the tidy data set.

The original data is from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The tidy data set was created from the original data using the following steps:  
1. The *X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt, subject_test.txt* files were combined into a single data set.  

2. Only the 'Subject', 'Activity' and the mean and standard deviation (mean(), std()) variables were retained.  

3. The observations were grouped by Subject and Activity and the average variable value calculated.  

# Data Dictionary

1. "Subject"
	- ID number of human subject.  
	- Integer 1-30.

2. "Activity"
	- Activity during measurement.  One of six activities:
		- WALKING
		- WALKING_UPSTAIRS
		- WALKING_DOWNSTAIRS
		- LAYING
		- SITTING
		- STANDING

3. "timeBodyAcceleration-mean()-X"
	- Mean body acceleration in the time domain along the X-axis.

4. "timeBodyAcceleration-mean()-Y"
	- Mean body acceleration in the time domain along the Y-axis.

5. "timeBodyAcceleration-mean()-Z"
	- Mean body acceleration in the time domain along the Z-axis.

6. "timeBodyAcceleration-stdDev()-X"
	- Standard deviation of body acceleration in the time domain along the X-axis.

7. "timeBodyAcceleration-stdDev()-Y"
	- Standard deviation of body acceleration in the time domain along the Y-axis.

8. "timeBodyAcceleration-stdDev()-Z"
	- Standard deviation of body acceleration in the time domain along the Z-axis.

9. "timeGravityAcceleration-mean()-X"
	- Mean gravity acceleration in the time domain along the X-axis.

10. "timeGravityAcceleration-mean()-Y"
	- Mean gravity acceleration in the time domain along the Y-axis.

11. "timeGravityAcceleration-mean()-Z"
	- Mean gravity acceleration in the time domain along the Z-axis.

12. "timeGravityAcceleration-stdDev()-X"
	- Standard deviation of gravity acceleration in the time domain along the X-axis.

13. "timeGravityAcceleration-stdDev()-Y"
	- Standard deviation of gravity acceleration in the time domain along the Y-axis.

14. "timeGravityAcceleration-stdDev()-Z"
	- Standard deviation of gravity acceleration in the time domain along the Z-axis.

15. "timeBodyAccelerationJerk-mean()-X"
	- Mean body jerk acceleration in the time domain along the X-axis.

16. "timeBodyAccelerationJerk-mean()-Y"
	- Mean body jerk acceleration in the time domain along the Y-axis.

17. "timeBodyAccelerationJerk-mean()-Z"
	- Mean body jerk acceleration in the time domain along the -axis.

18. "timeBodyAccelerationJerk-stdDev()-X"
	- Standard deviation of body jerk acceleration in the time domain along the X-axis.

19. "timeBodyAccelerationJerk-stdDev()-Y"
	- Standard deviation of body jerk acceleration in the time domain along the Y-axis.

20. "timeBodyAccelerationJerk-stdDev()-Z"
	- Standard deviation of body jerk acceleration in the time domain along the Z-axis.

21. "timeBodyGyroscope-mean()-X"
	- Mean body gyration in the time domain along the X-axis.

22. "timeBodyGyroscope-mean()-Y"
	- Mean body gyration in the time domain along the Y-axis.

23. "timeBodyGyroscope-mean()-Z"
	- Mean body gyration in the time domain along the Z-axis.

24. "timeBodyGyroscope-stdDev()-X"
	- Standard deviation of body gyration in the time domain along the X-axis.

25. "timeBodyGyroscope-stdDev()-Y"
	- Standard deviation of body gyration in the time domain along the Y-axis.

26. "timeBodyGyroscope-stdDev()-Z"
	- Standard deviation of body gyration in the time domain along the Z-axis.

27. "timeBodyGyroscopeJerk-mean()-X"
	- Mean of body jerk gyration in the time domain along the X-axis.

28. "timeBodyGyroscopeJerk-mean()-Y"
	- Mean of body jerk gyration in the time domain along the Y-axis.

29. "timeBodyGyroscopeJerk-mean()-Z"
	- Mean of body jerk gyration in the time domain along the Z-axis.

30. "timeBodyGyroscopeJerk-stdDev()-X"
	- Standard deviation of body jerk gyration in the time domain along the X-axis.

31. "timeBodyGyroscopeJerk-stdDev()-Y"
	- Standard deviation of body jerk gyration in the time domain along the Y-axis.

32. "timeBodyGyroscopeJerk-stdDev()-Z"
	- Standard deviation of body jerk gyration in the time domain along the Z-axis.

33. "timeBodyAccelerationMagnitude-mean()"
	- Mean magnitude of the body acceleration signal in the time domain.

34. "timeBodyAccelerationMagnitude-stdDev()"
	- Standard deviation of the magnitude of the body acceleration signal in the time 	domain.

35. "timeGravityAccelerationMagnitude-mean()"
	- Mean magnitude of the gravity acceleration signal in the time domain.

36. "timeGravityAccelerationMagnitude-stdDev()"
	- Standard deviation of the magnitude of the gravity acceleration signal in the time domain.

37. "timeBodyAccelerationJerkMagnitude-mean()"
	- Mean magnitude of the body acceleration jerk signal in the time domain.

38. "timeBodyAccelerationJerkMagnitude-stdDev()"
	- Standard deviation of the magnitude of the body acceleration jerk signal in the time domain.

39. "timeBodyGyroscopeMagnitude-mean()"
	- Mean magnitude of the body gyration signal in the time domain.

40. "timeBodyGyroscopeMagnitude-stdDev()"
	- Standard deviation of the body gyration signal in the time domain.

41. "timeBodyGyroscopeJerkMagnitude-mean()"
	- Mean magnitude of the body jerk gyration signal in the time domain.

42. "timeBodyGyroscopeJerkMagnitude-stdDev()"
	- Standard deviation of the body jerk gyration signal in the time domain.

43. "frequencyBodyAcceleration-mean()-X"
	- Mean body acceleration in the frequency domain along the X-axis.

44. "frequencyBodyAcceleration-mean()-Y"
	- Mean body acceleration in the frequency domain along the Y-axis.

45. "frequencyBodyAcceleration-mean()-Z"
	- Mean body acceleration in the frequency domain along the Z-axis.

46. "frequencyBodyAcceleration-stdDev()-X"
	- Standard deviation of body acceleration in the frequency domain along the X-axis.

47. "frequencyBodyAcceleration-stdDev()-Y"
- Standard deviation of body acceleration in the frequency domain along the Y-axis.

48. "frequencyBodyAcceleration-stdDev()-Z"
	- Standard deviation of body acceleration in the frequency domain along the Z-axis.


49. "frequencyBodyAccelerationJerk-mean()-X"
	- Mean body jerk acceleration in the frequency domain along the X-axis.

50. "frequencyBodyAccelerationJerk-mean()-Y"
	- Mean body jerk acceleration in the frequency domain along the Y-axis.

51. "frequencyBodyAccelerationJerk-mean()-Z"
	- Mean body jerk acceleration in the frequency domain along the -axis.

52. "frequencyBodyAccelerationJerk-stdDev()-X"
	- Standard deviation of body jerk acceleration in the frequency domain along the X-
	axis.

53. "frequencyBodyAccelerationJerk-stdDev()-Y"
	- Standard deviation of body jerk acceleration in the frequency domain along the Y-
	axis.

54. "frequencyBodyAccelerationJerk-stdDev()-Z"
	- Standard deviation of body jerk acceleration in the frequency domain along the Z-
	axis.

55. "frequencyBodyGyroscope-mean()-X"
	- Mean body gyration in the frequency domain along the X-axis.

56. "frequencyBodyGyroscope-mean()-Y"
	- Mean body gyration in the frequency domain along the Y-axis.

57. "frequencyBodyGyroscope-mean()-Z"
	- Mean body gyration in the frequency domain along the Z-axis.

58. "frequencyBodyGyroscope-stdDev()-X"
	- Standard deviation of body gyration in the frequency domain along the X-axis.

59. "frequencyBodyGyroscope-stdDev()-Y"
	- Standard deviation of body gyration in the frequency domain along the Y-axis.

60. "frequencyBodyGyroscope-stdDev()-Z"
	- Standard deviation of body gyration in the frequency domain along the Z-axis.

61. "frequencyBodyAccelerationMagnitude-mean()"
	- Mean magnitude of the body acceleration signal in the frequency domain.

62. "frequencyBodyAccelerationMagnitude-stdDev()"
	- Standard deviation of the magnitude of the body acceleration signal in the 
	frequency domain.

63. "frequencyBodyAccelerationJerkMagnitude-mean()"
	- Mean magnitude of the body acceleration jerk signal in the frequency domain.

64. "frequencyBodyAccelerationJerkMagnitude-stdDev()"
	- Standard deviation of the magnitude of the body acceleration jerk signal in the 
	frequency domain.

65. "frequencyBodyGyroscopeMagnitude-mean()"
	- Mean magnitude of the body gyration signal in the frequency domain.

66. "frequencyBodyGyroscopeMagnitude-stdDev()"
	- Standard deviation of the body gyration signal in the frequency domain.

67. "frequencyBodyGyroscopeJerkMagnitude-mean()"
	- Mean magnitude of the body jerk gyration signal in the frequency domain.

68. "frequencyBodyGyroscopeJerkMagnitude-stdDev()"
	- Standard deviation of the body jerk gyration signal in the frequency domain.


