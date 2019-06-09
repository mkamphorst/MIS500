/********************************************************/
/*  Author: Margaret Kamphorst                          */
/*  Date: 06/08/19                                      */
/*  Title: CT4.sas                                      */
/*  Mod 4 - CT Option                                   */
/*  TestScores before and after tutoring                */
/********************************************************/

/********************************************************/
/* Test scores before and after tutoring               */
/* This is creating a data set putting the             */
/* test score before and test score after              */
/*******************************************************/
data TestScores;
         input TScore_before TScore_after @@;
         datalines;
   123 133   135 136   129 135   117 137
   120 142   138 135   140 121   145 147
   136 168   140 152   146 129   137 145
   ;
   run;
   
/*******************************************************/
/* Print the data in TestScores                        */
/******************************************************/

   proc print data=TestScores;

run;

 
/*******************************************************/
/* Turn on the ODS Graphics                            */
/*******************************************************/
 ods graphics on;
/************************************************************/
/* Run the ttest procedure to see if there is statistically */
/* significant difference int test scores after taking the  */ 
/* tutoring.                                                */
/************************************************************/

 proc ttest;
/* set the TScore_before and TScore_after as the variables to compare*/
 paired TScore_before*TScore_after;

 run;

 ods graphics off;