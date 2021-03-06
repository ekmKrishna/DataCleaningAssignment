##  CDE BOOK of GettingandCleaningData Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.You will be required to submit:

a tidy data set as described below
a link to a Github repository with your script for performing the analysis
codeBook.md that describes the variables, the data, and any work that you performed to clean up the data
README.md that explains how all of the scripts work and how they are connected.
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

### Code explanations
## Trainset data
 All activity names will be loaded to the Variable  "activitylabels"
 All Variable names of Train/test sets were stored in the variable "features"
 Complete trainset data stored in to the data frame "trainset"
 Train labels data stored in the data frame trainlabelset
 All Subject stored in the data frame "Subjecttrain"
 Subject and trainlabels were stored in the data frame "SUBTRAIN"
 Activity Names were joined with the trainlabels and stored in the data frame SUBTRAIN_ACCT
 complete data  set of Train/labels/subjet was  merged and stored in the data frame "final_trainset"
 
 ## Test set data
 
  Complete testset data stored in to the data frame "testset"
  Test labels data stored in the data frame testlabelset
  All Subject stored in the data frame "Subjecttest"
  Subject and testlabels were stored in the data frame "SUBTEST"
  Activity Names were joined with the testlabels and stored in the data frame SUBTEST_ACCT
  complete data  set of Test/labels/subjet was  merged and stored in the data frame "final_testset"
 
 ## Binding of  Train and Test sets
 All rows of Train and Test set was  bounded in to the data frame "final_train_test_set"
 Required fields of Mean and STD only collected in to the data frame "FinalDataSet"
 
Data was grouped by ActivtyName and Subject ID and calculated the mean(), which makes tidy set and stored in the data frame "TidyDataSet"

 ## Output fields of data set and its variables as follows...

 
"column.names","class","range","mean" 
"1","activityName","factor","LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS","Not available"
"2","PersonID","integer","1,30","Not available"
"3","tBodyAccmeanX","numeric","0.236594877542373,0.298082893684211","0.274340465268024"
"4","tBodyAccmeanY","numeric","-0.0330176857050847,0.00542023822770833","-0.0176800556277648"
"5","tBodyAccmeanZ","numeric","-0.132934217641509,-0.0852509109333333","-0.108937416500115"
"6","tBodyAccstdX","numeric","-0.992028584464286,-0.0794783732076923","-0.606548094610989"
"7","tBodyAccstdY","numeric","-0.977643498035714,0.114461336747368","-0.509167651394456"
"8","tBodyAccstdZ","numeric","-0.986117240714286,-0.217625368022727","-0.611559600700959"
"9","tGravityAccmeanX","numeric","-0.344737755285714,0.946468659782609","0.670877613340283"
"10","tGravityAccmeanY","numeric","-0.34102748147617,0.732661247714286","0.00236098601650482"
"11","tGravityAccmeanZ","numeric","-0.246492057704545,0.681459210714286","0.0864708838547383"
"12","tGravityAccstdX","numeric","-0.985390898571429,-0.892297231320755","-0.96515848980729"
"13","tGravityAccstdY","numeric","-0.988930714857143,-0.797097306981132","-0.954220898390432"
"14","tGravityAccstdZ","numeric","-0.984310833035714,-0.848387170754717","-0.938828530543858"
"15","tBodyAccJerkmeanX","numeric","0.0344318401055556,0.123962347538298","0.0790925205252993"
"16","tBodyAccJerkmeanY","numeric","-0.0422660681605263,0.107204158071875","0.0075449117261704"
"17","tBodyAccJerkmeanZ","numeric","-0.070294731236,0.0550594965891304","-0.00457604225373534"
"18","tBodyAccJerkstdX","numeric","-0.992542891964286,-0.113615602435789","-0.638813925036753"
"19","tBodyAccJerkstdY","numeric","-0.987406899107143,0.0670025007684211","-0.607388677431262"
"20","tBodyAccJerkstdZ","numeric","-0.99277738375,-0.418465466866667","-0.762564365815468"
"21","tBodyGyromeanX","numeric","-0.11609524611,0.0543122644232143","-0.0309403232482744"
"22","tBodyGyromeanY","numeric","-0.136499033270213,-0.0135607391114062","-0.0746283924102689"
"23","tBodyGyromeanZ","numeric","0.008408446389375,0.147930096508475","0.0879187096925972"
"24","tBodyGyrostdX","numeric","-0.991804455,-0.356306673461538","-0.720891175962536"
"25","tBodyGyrostdY","numeric","-0.991303593392857,-0.0546077686594737","-0.683035152453104"
"26","tBodyGyrostdZ","numeric","-0.972001002678571,-0.329884264159091","-0.652211528742824"
"27","tBodyGyroJerkmeanX","numeric","-0.14931517756875,-0.0373870038","-0.0965279344140062"
"28","tBodyGyroJerkmeanY","numeric","-0.0965606346577778,0.00335613747636363","-0.0424117386747847"
"29","tBodyGyroJerkmeanZ","numeric","-0.0904792395,-0.01681941124","-0.0546975219689549"
"30","tBodyGyroJerkstdX","numeric","-0.996390743571429,-0.207421854757895","-0.732745596121292"
"31","tBodyGyroJerkstdY","numeric","-0.995582385535714,-0.304468510631579","-0.787307308245129"
"32","tBodyGyroJerkstdZ","numeric","-0.995094053035714,-0.404255452631579","-0.739127463251473"
"33","tBodyAccMagmean","numeric","-0.98733324,-0.0474495716288462","-0.546890615229967"
"34","tBodyAccMagstd","numeric","-0.983359515178571,-0.0776501658076923","-0.589469073120421"
"35","tGravityAccMagmean","numeric","-0.98733324,-0.0474495716288462","-0.546890615229967"
"36","tGravityAccMagstd","numeric","-0.983359515178571,-0.0776501658076923","-0.589469073120421"
"37","tBodyAccJerkMagmean","numeric","-0.992650260535714,-0.141428809031579","-0.648685439581538"
"38","tBodyAccJerkMagstd","numeric","-0.992453345,-0.0744717500625263","-0.626695241899507"
"39","tBodyGyroMagmean","numeric","-0.968249277857143,-0.160979552536842","-0.604593872809074"
"40","tBodyGyroMagstd","numeric","-0.973825308035714,-0.186978364526316","-0.662694315788527"
"41","tBodyGyroJerkMagmean","numeric","-0.996695039821429,-0.298703679084211","-0.763068414502986"
"42","tBodyGyroJerkMagstd","numeric","-0.996015549285714,-0.325324878894737","-0.779125778518456"
"43","fBodyAccmeanX","numeric","-0.991909722142857,-0.100887982826923","-0.621759345040794"
"44","fBodyAccmeanY","numeric","-0.979677955535714,0.0897127264021053","-0.536590524470044"
"45","fBodyAccmeanZ","numeric","-0.988969460892857,-0.284960487566667","-0.66402792253886"
"46","fBodyAccstdX","numeric","-0.992117714821429,-0.0727627912115385","-0.602026061943615"
"47","fBodyAccstdY","numeric","-0.977239328392857,0.056040006846","-0.527411059680201"
"48","fBodyAccstdZ","numeric","-0.985060213214286,-0.192007323011364","-0.616229417562331"
"49","fBodyAccmeanFreqX","numeric","-0.46120401925,0.0144992886","-0.221418278843951"
"50","fBodyAccmeanFreqY","numeric","-0.216992315791667,0.231152646969643","0.0145601342169211"
"51","fBodyAccmeanFreqZ","numeric","-0.331925172430556,0.331675594214286","0.0459562818141696"
"52","fBodyAccJerkmeanX","numeric","-0.992640936071429,-0.170546964549579","-0.655884954583194"
"53","fBodyAccJerkmeanY","numeric","-0.987727425714286,-0.0352255241130632","-0.6282626406223"
"54","fBodyAccJerkmeanZ","numeric","-0.991263442857143,-0.383129195466667","-0.74310534889001"
"55","fBodyAccJerkstdX","numeric","-0.993110516785714,-0.133586606326316","-0.653954602385901"
"56","fBodyAccJerkstdY","numeric","-0.987932689285714,0.106739857136","-0.611831574824214"
"57","fBodyAccJerkstdZ","numeric","-0.99286884125,-0.4518776753","-0.780916910921238"
"58","fBodyAccJerkmeanFreqX","numeric","-0.3742153159,0.271285041532767","-0.0487637844582446"
"59","fBodyAccJerkmeanFreqY","numeric","-0.471354810180435,0.122489821501786","-0.213490136646711"
"60","fBodyAccJerkmeanFreqZ","numeric","-0.435067048458333,0.186916248671429","-0.124561646084751"
"61","fBodyGyromeanX","numeric","-0.991040904642857,-0.269896170440385","-0.672119388541935"
"62","fBodyGyromeanY","numeric","-0.992328708928571,-0.103059416434737","-0.706973893697678"
"63","fBodyGyromeanZ","numeric","-0.97443890125,-0.255940940315789","-0.642830464804686"
"64","fBodyGyrostdX","numeric","-0.9920569575,-0.390449206230192","-0.738201589998761"
"65","fBodyGyrostdY","numeric","-0.990752009285714,-0.0335081597884211","-0.674413327400276"
"66","fBodyGyrostdZ","numeric","-0.973678445357143,-0.371645902090909","-0.689135149357282"
"67","fBodyGyromeanFreqX","numeric","-0.353934072191667,0.156416313916667","-0.102723110969657"
"68","fBodyGyromeanFreqY","numeric","-0.507768644666667,0.0686400136792453","-0.173175908160387"
"69","fBodyGyromeanFreqZ","numeric","-0.347372952625,0.202128129433962","-0.0521883522406707"
"70","fBodyAccMagmean","numeric","-0.985630043214286,-0.0784992269846154","-0.584358223712188"
"71","fBodyAccMagstd","numeric","-0.9841041,-0.221725878276923","-0.657945004414607"
"72","fBodyAccMagmeanFreq","numeric","-0.198476353027778,0.404849646357143","0.0762367847092701"
"73","fBodyBodyAccJerkMagmean","numeric","-0.992374476964286,-0.0571194000343158","-0.619649873151696"
"74","fBodyBodyAccJerkMagstd","numeric","-0.991235850357143,-0.103492403002105","-0.639126843764648"
"75","fBodyBodyAccJerkMagmeanFreq","numeric","-0.0196955625173611,0.405161176035714","0.172516601724531"
"76","fBodyBodyGyroMagmean","numeric","-0.982563001607143,-0.199252568986316","-0.697815608446778"
"77","fBodyBodyGyroMagstd","numeric","-0.97294682125,-0.31128225635","-0.699901759175527"
"78","fBodyBodyGyroMagmeanFreq","numeric","-0.381309501305556,0.308198379152542","-0.0429711544500315"
"79","fBodyBodyGyroJerkMagmean","numeric","-0.996186976428571,-0.319308593778947","-0.780721425385084"
"80","fBodyBodyGyroJerkMagstd","numeric","-0.995765159642857,-0.381601911789474","-0.793475348537594"
"81","fBodyBodyGyroJerkMagmeanFreq","numeric","-0.0541845957254237,0.338202244160714","0.126375969798046"
"82","angle(tBodyAccMean,gravity)","numeric","-0.0971576235130435,0.122050307746809","0.00824339018942721"
"83","angle(tBodyAccJerkMean),gravityMean)","numeric","-0.161112528721277,0.118980461494915","0.00202168315472518"
"84","angle(tBodyGyroMean,gravityMean)","numeric","-0.255310207833333,0.271615650731884","0.0172092753549308"
"85","angle(tBodyGyroJerkMean,gravityMean)","numeric","-0.274767137950909,0.195556079622642","-0.00903992112897943"
"86","angle(X,gravityMean)","numeric","-0.825205308194444,0.499848737857143","-0.497906928403486"
"87","angle(Y,gravityMean)","numeric","-0.492287025857143,0.317616292983051","0.0642075500616794"
"88","angle(Z,gravityMean)","numeric","-0.507019938285714,0.195819429863636","-0.0502607356895717"
</tr>
</table>