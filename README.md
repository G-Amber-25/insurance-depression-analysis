# Insurance Status and Depressive Symptoms Among U.S. Adults

An analysis examining whether health insurance coverage is associated with depressive symptoms, using data from the 2022 National Health Interview Survey (NHIS).

---

## 📋 Project Overview

This study investigates whether U.S. adults without health insurance are more likely to report recent depressive symptoms compared to those with coverage, while accounting for age, sex, and race/ethnicity as confounding variables.

**Course:** ANH 604 – Clinical Research Analytics  
**Institution:** National University  
**Date:** August 2025

---

## 🔍 Research Question

> Are uninsured U.S. adults more likely to report depressive symptoms than insured adults, after adjusting for demographic factors?

---

## 📊 Dataset

- **Source:** [2022 National Health Interview Survey (NHIS)](https://doi.org/10.18128/D070.V7.4) via IPUMS Health Surveys
- **Population:** U.S. civilian, non-institutionalized adults aged 18 and older
- **Final Sample Size:** 26,008 adults (after excluding records with missing data)

---

## 🛠️ Methods

| Step | Method |
|---|---|
| Group comparisons | Chi-square tests of association |
| Main analysis | Logistic regression (adjusted odds ratios) |
| Software | SAS Studio |

**Variables:**
- **Outcome:** Self-reported depressive symptoms in the past two weeks (yes/no)
- **Primary predictor:** Health insurance status (insured / uninsured)
- **Control variables:** Sex, age group (18–30, 31–44, 45–64, 65+), race/ethnicity

---

## 📈 Key Findings

- **Insurance status:** Uninsured adults had slightly higher odds of reporting depressive symptoms, but this was **not statistically significant** after adjustment (OR = 1.132, 95% CI: 0.990–1.293)
- **Sex:** Females had **40.7% higher odds** of reporting depressive symptoms than males (OR = 1.407, p < .0001)
- **Age:** Younger adults (18–30) reported the highest rates of depression; odds decreased significantly with each older age group
- **Race/Ethnicity:** Asian adults had significantly *lower* odds of depression vs. White adults (OR = 0.707); adults identifying as Other/Multiple races had significantly *higher* odds (OR = 1.333)
- **Model fit:** The logistic regression model was statistically significant overall (χ² = 295.66, p < .0001), though predictive power was modest (concordance statistic = 0.576)

---

## 💡 Takeaways

While insurance status alone did not significantly predict depressive symptoms after controlling for demographics, the study highlights that **sex, age, and race are strong predictors of depression**. The findings suggest that addressing mental health disparities requires more than expanding insurance coverage — social determinants like income, stigma, and access to care must also be considered.

---

## 📁 Repository Contents

```
├── README.md               # Project overview 
├── analysis/               # SAS code used for the analysis
├── data/                   # Data source info (raw NHIS data not included due to size)
└── Report               # Final written report
```

> **Note:** Raw NHIS data is publicly available at [IPUMS Health Surveys](https://healthsurveys.ipums.org/)

---

## 🔗 References

- Blewett et al. (2024). IPUMS Health Surveys: NHIS, Version 7.4. https://doi.org/10.18128/D070.V7.4
- CDC NCHS (2025). Depression Prevalence and Medication Use in the U.S.
- Meiselbach et al. (2024). Unmet need for mental health care across insurance segments. *Health Affairs Scholar.* https://doi.org/10.1093/haschl/qxae032
- Remes et al. (2021). Biological, Psychological, and Social Determinants of Depression. *Brain Sciences.* https://doi.org/10.3390/brainsci11121633
