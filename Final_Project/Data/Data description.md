## Data description

### Wisconsin Diagnostic Breast Cancer (WDBC)

* number of instances: 569

* number of attributes: 32

  1. Id number
  2. Diagnosis: malignant(212); benign(357)

  3-32: ten real-valued features are computed for each cell nucleus

  1. radius
  2. texture (standard deviation of gray-scale values)
  3. perimeter
  4. area
  5. smoothness
  6. compactness
  7. concavity
  8. concave points
  9. symmetry
  10. fractal dimension

* The mean, standard error, and "worst" or largest (mean of the three
  largest values) of these features were computed for each image,
  resulting in 30 features.  For instance, field 4 is Mean Radius, field
  14 is Radius SE, field 24 is Worst Radius.

  

### Wisconsin Prognostic Breast Cancer (WPBC)

Number of instances: 198

Number of attributes: 34

1. ID number
2. Outcome (R = recur, N = nonrecur)
3. Time (Recurrence time if field 2 = R, disease free time if field 2 = N)

4 - 33: ten real-valued features are computed for each cell nucleus

a. radius: mean of distances from center to points on the perimeter

b. texture: standard deviation of gray-scale values

c. perimeter, 

d. area, 

e. smoothness: local variation in radius lengths

f. compactness: perimeter^2/area - 1.0

g. concavity: severity of concave portions of the contour

h. concave points: number of concave portions of the contour

i. symmetry, 

j. fractal dimension ("coastline approximation" - 1)

these ten features along with their mean, standard error, and largest

34. Tumor size: diameter of the excised tumor in centimeters.

35. Lymph node status: number of positive axillary lymph nodes





## Exploatory data analysis



## Develop three questions

### Q1.  Investigate which features have correlation with each other so that we could just keep one of them for classification.

Lets interpret one more thing about plot above, variable of concavity_worst and concave point_worst looks like similar but how can we decide whether they are correlated with each other or not. (Not always true but, basically if the features are correlated with each other we can drop one of them)

In order to compare two features deeper, lets use joint plot. Look at this in joint plot below, it is really correlated. Pearsonr value is correlation value and 1 is the highest. Therefore, 0.86 is looks enough to say that they are correlated. Do not forget, we are not choosing features yet, we are just looking to have an idea about them.



### Q2. Find out which features have little attributes towards classification and which ones have strong attributes. 



### Q3. Merge the WDBC and WPBC dataset and find out if there is a relationship between diagnosis outcome and recurrence.



### Q2 Which features strongly attribute the breast cancer diagnosis? Is there any attributes have a relationship with breast cacer diagnosis? If the answer is yes, which of those sttributes have a stronger relationship with breast cancer diagnosis?

Using PCA to choose the most significant features

Using k means to category all the instances into 2 groups to see whether they have  relationship with breast cancer diagnosis.

### Q3 Is there a relationship between breast cancer diagnosis with recurrence?

Merge the two dataset by id













