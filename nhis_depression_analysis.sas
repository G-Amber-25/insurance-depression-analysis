libname IPUMS "/home/u64002587/my_courses/ANH604";
filename ASCIIDAT "/home/u64002587/my_courses/ANH604/nhis_00001.dat";

proc contents data=IPUMS.nhis_00001; run;
proc print data=IPUMS.nhis_00001 (obs=10); run;
proc format cntlout = IPUMS.nhis_00001_f;

value REGION_f
  01 = "Northeast"
  02 = "North Central/Midwest"
  03 = "South"
  04 = "West"
  08 = "NO DATA IN ROUND"
  09 = "Unknown"
;

value URBRRL_f
  1 = "Large central metro"
  2 = "Large fringe metro"
  3 = "Medium and small metro"
  4 = "Nonmetropolitan"
;

value ASTATFLG_f
  0 = "NIU"
  1 = "Sample adult, has record"
  2 = "Sample adult, no record"
  3 = "Not selected as sample adult"
  4 = "No one selected as sample adult"
  5 = "Armed forces member"
  6 = "AF member, selected as sample adult"
;

value CSTATFLG_f
  0 = "NIU"
  1 = "Sample child-has record"
  2 = "Sample child-no record"
  3 = "Not selected as sample child"
  4 = "No one selected as sample child"
  5 = "Emancipated minor"
;

value SEX_f
  1 = "Male"
  2 = "Female"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value RACENEW_f
  100 = "White only"
  200 = "Black/African American only"
  300 = "American Indian/Alaska Native only"
  400 = "Asian only"
  500 = "Other Race and Multiple Race"
  510 = "Other Race and Multiple Race (2019-forward: Excluding American Indian/Alaska Native)"
  520 = "Other Race"
  530 = "Race Group Not Releasable"
  540 = "Multiple Race"
  541 = "Multiple Race (1999-2018: Including American Indian/Alaska Native)"
  542 = "American Indian/Alaska Native and Any Other Race"
  997 = "Unknown-Refused"
  998 = "Unknown-Not ascertained"
  999 = "Unknown-Don't Know"
;

value HISPETH_f
  10 = "Not Hispanic/Spanish origin"
  20 = "Mexican"
  21 = "Mexican-Mexicano"
  22 = "Mexicano"
  23 = "Mexican-American"
  24 = "Chicano"
  30 = "Puerto Rican"
  40 = "Cuban/Cuban American"
  50 = "Dominican (Republic)"
  60 = "Other Hispanic"
  61 = "Central or South American"
  62 = "Other Latin American, type not specified"
  63 = "Other Spanish"
  64 = "Hispanic/Latino/Spanish, non-specific type"
  65 = "Hispanic/Latino/Spanish, type refused"
  66 = "Hispanic/Latino/Spanish, type not ascertained"
  67 = "Hispanic/Spanish, type don't know"
  70 = "Multiple Hispanic"
  90 = "Unknown"
  91 = "Unknown if Hispanic/Spanish origin"
  92 = "Two origins, unknown which is the main"
  93 = "Origin unknown, refused or not reported"
  99 = "NIU"
;

value EDUC_f
  000 = "NIU"
  100 = "Grade 12 or less, no high school diploma or equivalent"
  101 = "Grade 8 or less (no further detail)"
  102 = "Never attended/kindergarten only"
  103 = "Grades 1-11 (no further detail)"
  104 = "Grade 1"
  105 = "Grade 2"
  106 = "Grade 3"
  107 = "Grade 4"
  108 = "Grade 5"
  109 = "Grade 6"
  110 = "Grade 7"
  111 = "Grade 8"
  112 = "Grade 9-12, no diploma (no further detail)"
  113 = "Grade 9"
  114 = "Grade 10"
  115 = "Grade 11"
  116 = "12th grade, no diploma"
  200 = "High school diploma or GED"
  201 = "High school graduate"
  202 = "GED or equivalent"
  300 = "Some college, no 4yr degree"
  301 = "Some college, no degree"
  302 = "AA degree: technical/vocational/occupational"
  303 = "AA degree: academic program"
  400 = "Bachelor's degree (BA,AB,BS,BBA)"
  500 = "Master's, Professional, or Doctoral Degree"
  510 = "Master's degree (MA,MS,Med,MBA)"
  520 = "Professional School or Doctoral degree, topcoded (MD, DDS, DVM, JD, PhD, EdD)"
  521 = "Professional (MD,DDS,DVM,JD)"
  522 = "Doctoral degree (PhD, EdD)"
  530 = "Other degree"
  996 = "No degree, years of education unknown"
  997 = "Unknown--refused"
  998 = "Unknown--not ascertained"
  999 = "Unknown--don't know"
;

value EMPSTAT_f
  000 = "NIU"
  100 = "Employed"
  110 = "Working"
  111 = "Working for pay at job/business"
  112 = "Working, w/out pay, at job/business"
  120 = "With job, but not at work"
  121 = "With job, not at work: not laid-off, not looking"
  122 = "With job, not at work: looking"
  200 = "Not employed"
  210 = "Unemployed"
  211 = "Unemployed: On layoff"
  212 = "Unemployed: On layoff and looking"
  213 = "Unemployed: Unk if looking or laid off"
  214 = "Unemployed: Looking or on layoff"
  215 = "Unemployed: Have job to return to"
  216 = "Unemployed: Had job during the round"
  217 = "Unemployed: No job during reference period"
  220 = "Not in labor force"
  900 = "Unknown-all causes"
  997 = "Unknown-refused"
  998 = "Unknown-not ascertained"
  999 = "Unknown-don't know"
;

value IMPINCFAM_f
  0 = "Income reported"
  1 = "Income imputed; no other information"
  2 = "Income imputed; reported in income brackets"
;

value HEALTH_f
  1 = "Excellent"
  2 = "Very Good"
  3 = "Good"
  4 = "Fair"
  5 = "Poor"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value BMICAT_f
  0 = "NIU"
  1 = "Underweight (BMI < 18.5)"
  2 = "Normal weight (BMI >= 18.5 & BMI < 25)"
  3 = "Overweight (BMI >= 25  & BMI < 30)"
  4 = "Obese (BMI 30+)"
  9 = "Unknown"
;

value USUALPL_f
  0 = "NIU"
  1 = "There is no place or No"
  2 = "Yes, has a usual place or Yes"
  3 = "There is more than one place"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value DELAYCOST_f
  0 = "NIU"
  1 = "No"
  2 = "Yes"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know (1993-96: DK or refused)"
;

value HINOTCOVE_f
  0 = "NIU"
  1 = "No, has coverage"
  2 = "Yes, has no coverage"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HIPRIVATEE_f
  1 = "No"
  2 = "Yes, information"
  3 = "Yes, but no information"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HIOTHGOVE_f
  10 = "No"
  20 = "Yes"
  21 = "Yes, information"
  22 = "Yes, but no information"
  97 = "Unknown-refused"
  98 = "Unknown-not ascertained"
  99 = "Unknown-don't know"
;

value HINOTCOV_f
  00 = "NIU"
  01 = "No, has coverage"
  02 = "Yes, has no coverage"
  09 = "Unknown/refused"
;

value HIMCAID_f
  0 = "NIU"
  1 = "Not mentioned"
  2 = "Mentioned"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value HIMCARE_f
  0 = "NIU"
  1 = "Not mentioned or No"
  2 = "Mentioned or Yes"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value DEPFREQ_f
  0 = "NIU"
  1 = "Daily"
  2 = "Weekly"
  3 = "Monthly"
  4 = "A few times a year"
  5 = "Never"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value DEPFEELEVL_f
  0 = "NIU"
  1 = "A little"
  2 = "A lot"
  3 = "Somewhere between little and lot"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value PHQINTR_f
  0 = "Not at all"
  1 = "Several days"
  2 = "More than half the days"
  3 = "Nearly every day"
  6 = "NIU"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

value PHQDEP_f
  0 = "Not at all"
  1 = "Several days"
  2 = "More than half the days"
  3 = "Nearly every day"
  6 = "NIU"
  7 = "Unknown-refused"
  8 = "Unknown-not ascertained"
  9 = "Unknown-don't know"
;

run;

data IPUMS.nhis_00001;
infile ASCIIDAT pad missover lrecl=108;

input
  YEAR         1-4
  SERIAL       5-10
  STRATA       11-14
  PSU          15-17
  NHISHID    $ 18-31
  REGION       32-33
  URBRRL       34-34
  PERNUM       35-36
  NHISPID    $ 37-52
  HHX        $ 53-59
  SAMPWEIGHT   60-71 .3
  ASTATFLG     72-72
  CSTATFLG     73-73
  AGE          74-76
  SEX          77-77
  RACENEW      78-80
  HISPETH      81-82
  EDUC         83-85
  EMPSTAT      86-88
  IMPINCFAM    89-89
  HEALTH       90-90
  WEIGHT       91-93
  BMICAT       94-94
  USUALPL      95-95
  DELAYCOST    96-96
  HINOTCOVE    97-97
  HIPRIVATEE   98-98
  HIOTHGOVE    99-100
  HINOTCOV     101-102
  HIMCAID      103-103
  HIMCARE      104-104
  DEPFREQ      105-105
  DEPFEELEVL   106-106
  PHQINTR      107-107
  PHQDEP       108-108
;

label
  YEAR       = "Survey year"
  SERIAL     = "Sequential Serial Number, Household Record"
  STRATA     = "Stratum for variance estimation"
  PSU        = "Primary sampling unit (PSU) for variance estimation"
  NHISHID    = "NHIS Unique identifier, household"
  REGION     = "Region of residence"
  URBRRL     = "Urban-Rural county classification"
  PERNUM     = "Person number within family/household (from reformatting)"
  NHISPID    = "NHIS Unique Identifier, person"
  HHX        = "Household number (from NHIS)"
  SAMPWEIGHT = "Sample Person Weight"
  ASTATFLG   = "Sample adult flag"
  CSTATFLG   = "Sample child flag"
  AGE        = "Age"
  SEX        = "Sex"
  RACENEW    = "Self-reported Race (Post-1997 OMB standards)"
  HISPETH    = "Hispanic ethnicity"
  EDUC       = "Educational attainment"
  EMPSTAT    = "Employment status in past 1 to 2 weeks"
  IMPINCFAM  = "Family income imputation flag"
  HEALTH     = "Health status"
  WEIGHT     = "Weight in pounds without shoes"
  BMICAT     = "Categorical body mass index"
  USUALPL    = "Has usual place for medical care"
  DELAYCOST  = "Medical care delayed due to cost, past 12 months"
  HINOTCOVE  = "Health Insurance coverage status"
  HIPRIVATEE = "Covered by private health insurance: Recode"
  HIOTHGOVE  = "Covered by other government program: Recode"
  HINOTCOV   = "Has no health insurance (excluding single service plans)"
  HIMCAID    = "Has Medicaid insurance"
  HIMCARE    = "Has Medicare insurance"
  DEPFREQ    = "How often feel depressed"
  DEPFEELEVL = "Level of depression, last time depressed"
  PHQINTR    = "Little interest in doing things: past two weeks"
  PHQDEP     = "Feeling down, depressed, or hopeless: past two weeks"
;

format
  REGION      REGION_f.
  URBRRL      URBRRL_f.
  ASTATFLG    ASTATFLG_f.
  CSTATFLG    CSTATFLG_f.
  SEX         SEX_f.
  RACENEW     RACENEW_f.
  HISPETH     HISPETH_f.
  EDUC        EDUC_f.
  EMPSTAT     EMPSTAT_f.
  IMPINCFAM   IMPINCFAM_f.
  HEALTH      HEALTH_f.
  BMICAT      BMICAT_f.
  USUALPL     USUALPL_f.
  DELAYCOST   DELAYCOST_f.
  HINOTCOVE   HINOTCOVE_f.
  HIPRIVATEE  HIPRIVATEE_f.
  HIOTHGOVE   HIOTHGOVE_f.
  HINOTCOV    HINOTCOV_f.
  HIMCAID     HIMCAID_f.
  HIMCARE     HIMCARE_f.
  DEPFREQ     DEPFREQ_f.
  DEPFEELEVL  DEPFEELEVL_f.
  PHQINTR     PHQINTR_f.
  PHQDEP      PHQDEP_f.
;

format
  SAMPWEIGHT  13.3
;

run;

data IPUMS.sample;
    set IPUMS.nhis_00001;

    /* Keep adults only */
    if ASTATFLG = 1;

    /* Remove missing/unknowns from key variables */
    if HINOTCOV in (1, 2) and
       PHQDEP in (0, 1, 2, 3) and
       PHQINTR in (0, 1, 2, 3) and
       AGE ne . and
       SEX in (1, 2) and
       EDUC in (100:599) and
       EMPSTAT in (100:220) and
       HEALTH in (1:5) and
       BMICAT in (1:4) and
       REGION in (1:4);
run;

data IPUMS.sample_clean;
    set IPUMS.sample;

    /* Create age category */
    if 18 <= AGE < 30 then AGE_CAT = 1;
    else if 30 <= AGE < 45 then AGE_CAT = 2;
    else if 45 <= AGE < 65 then AGE_CAT = 3;
    else if AGE >= 65 then AGE_CAT = 4;

    label AGE_CAT = "Age Group (18–29, 30–44, 45–64, 65+)";
    
    /*Create Education category*/
   if 'Grades 1-11 (no further detail),12th grade, no diploma, High school graduate,  ' then edu_cat = 'HS'
   
   
run;


proc freq data=IPUMS.sample_clean;
    tables HINOTCOV*(SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT) / chisq norow nocol nopercent;
run;

proc freq data=IPUMS.sample_clean;
    tables PHQDEP*(HINOTCOV SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT) / chisq norow nocol nopercent;
run;


data IPUMS.sample_clean;
    set IPUMS.sample_clean;

    if PHQDEP in (2, 3) then PHQDEP_BIN = 1;
    else if PHQDEP in (0, 1) then PHQDEP_BIN = 0;
    else PHQDEP_BIN = .;

    label PHQDEP_BIN = "Depression (Binary: 1 = Frequent, 0 = Infrequent)";
run;

proc freq data=IPUMS.sample;
    tables HINOTCOV*(SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT HEALTH) / chisq;
run;
proc logistic data=IPUMS.sample_clean descending;
    class HINOTCOV (ref='No, has coverage') SEX (ref='male') RACENEW (ref='White only') 
          HISPETH (ref='Not Hispanic/Spanish origin') EDUC (ref='Grades 1-11 (no further detail)') EMPSTAT (ref='100') 
          REGION (ref='01') BMICAT (ref='2') AGE_CAT (ref='1') / param=ref;

    model PHQDEP_BIN = HINOTCOV SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT;
run;

proc ttest data=IPUMS.sample;
    class HINOTCOV;
    var AGE WEIGHT;
run;

proc freq data=IPUMS.sample;
    tables PHQDEP*(SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT HEALTH HINOTCOV) / chisq;
run;

proc anova data=IPUMS.sample;
    class PHQDEP;
    model AGE = PHQDEP;
    means PHQDEP / tukey;
run;


ods html file='/home/u64002587/my_courses/ANH604/table1_chisq.html';
proc freq data=IPUMS.sample_clean;
    tables HINOTCOV*(SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT) / chisq;
run;
ods html close;

ods html file='/home/u64002587/my_courses/ANH604/table2_chisq.html';
proc freq data=IPUMS.sample_clean;
    tables PHQDEP*(HINOTCOV SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT) / chisq;
run;
ods html close;

ods html file='/home/u64002587/my_courses/ANH604/logistic_table3.html';
proc logistic data=IPUMS.sample_clean descending;
    class HINOTCOV (ref='01') SEX (ref='1') RACENEW (ref='100') 
          HISPETH (ref='10') EDUC (ref='200') EMPSTAT (ref='100') 
          REGION (ref='01') BMICAT (ref='2') AGE_CAT (ref='1') / param=ref;
    model PHQDEP_BIN = HINOTCOV SEX RACENEW HISPETH EDUC EMPSTAT REGION BMICAT AGE_CAT;
run;
ods html close;
