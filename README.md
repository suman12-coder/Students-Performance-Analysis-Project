

# 🎓 Student Performance Analytics & Grade Prediction

## 📌 Project Overview

This project began as a Machine Learning initiative to predict student grade categories.
During model development, deeper performance pattern exploration became necessary — leading to advanced SQL-based data modeling and risk segmentation.

The final project evolved into a complete end-to-end analytics solution combining:

* Machine Learning Classification
* SQL-Based Performance Analysis
* Database Normalization
* Risk Segmentation
* Business Insight Generation
* Streamlit Deployment

The goal is not only to predict student grades but also to understand the key factors influencing academic performance.

---

# 🤖 Phase 1: Machine Learning – Grade Prediction

## 🧠 Problem Statement

Predict student performance grades (A–E) using academic and behavioral factors.

## 🎯 Target Variable

GradeClass
(A – Highest Performance
E – Lowest Performance)

## 📊 Features Used

* Age
* Gender
* Ethnicity
* Parental Education
* Study Time Weekly
* Absences
* Tutoring
* Parental Support
* Extracurricular Participation
* Sports
* Music
* Volunteering
* GPA

---

## ⚙️ Models Developed

* Logistic Regression
* Random Forest Classifier

### ✅ Final Selected Model:

Random Forest Classifier

**Reason for Selection:**

* Higher accuracy
* Better handling of non-linear relationships
* Improved class-wise balance
* Greater robustness

---

## 📊 Evaluation Metrics

* Accuracy Score
* Confusion Matrix
* Precision
* Recall
* F1-Score

---

## 🌐 Deployment

The final model was serialized and deployed using Streamlit, enabling real-time student grade prediction.

---
## 🌐 Live App

[Click here to open the deployed Streamlit App](https://students-performance-analysis-project-fjmzxyhh5zhkmfcezfjsy2.streamlit.app/)

---
# 🗄 Phase 2: SQL-Based Data Modeling & Deep Performance Analysis

After building the ML model, further investigation was conducted using SQL to:

* Validate model insights
* Identify dominant performance drivers
* Segment academic risk groups
* Provide institutional recommendations

---

## 🔄 Database Restructuring

The original flat dataset was normalized into a relational schema:

###  Tables Created

### 1️⃣ Students (Demographic Dimension)

* StudentID (Primary Key)
* Age
* Gender
* Ethnicity
* ParentalEducation

### 2️⃣ Academic_Performance (Fact Table)

* StudentID (Foreign Key)
* StudyTimeWeekly
* Absences
* GPA
* GradeClass

### 3️⃣ Activities_Support (Behavioral & Support Factors)

* StudentID (Foreign Key)
* Tutoring
* ParentalSupport
* Extracurricular
* Sports
* Music
* Volunteering

This improved:

* Data integrity
* Analytical scalability
* Multi-dimensional querying

---

# 📊 Key SQL Insights

## 🔴 Academic Risk

* 53.26% students classified as **At Risk (GPA < 2.0)**
* Average GPA across dataset: **1.91**
* Only 3.22% categorized as High Performers

The academic ecosystem is heavily risk-dominated.

---

## 📉 Absenteeism — Strongest Performance Driver

* 43.52% students fall under High Absence category
* High performers average ~5 absences
* At-risk students average ~21 absences
* Performance gap ≈ 15 absence days

Absenteeism is the dominant academic decline factor.

---

##  Study Time Impact

* Grade A: 11.85 hrs/week
* Grade E: 9.18 hrs/week
* Difference: 2.67 hours weekly

Small study time variations significantly impact GPA.

---

##  Support & Engagement Effects

| Factor                          | GPA Impact |
| ------------------------------- | ---------- |
| Parental Support (Level 4 vs 0) | +0.65      |
| Tutoring                        | +0.29      |
| Extracurricular Participation   | +0.18      |

Behavioral engagement variables show stronger influence than demographic attributes.

---

##  Demographic Observations

* Minimal gender-based GPA difference (0.03)
* Weak correlation with parental education

Performance is behavior-driven rather than demographic-driven.

---

#  Combined Analytical Insight

The SQL analysis validated the Machine Learning findings and revealed that:

* Absences
* Study Time
* Parental Support
* Tutoring

are primary predictors of academic performance.

This strengthened model interpretability and provided actionable institutional recommendations.

---

# 🛠 Tech Stack

* SQL (MySQL)
* Python
* Pandas
* NumPy
* Scikit-learn
* Streamlit
* Joblib

---

#  Skills Demonstrated

* End-to-End ML Development
* Multi-Class Classification
* Relational Database Design
* Data Normalization
* Advanced SQL (CTE, Aggregations, CASE Segmentation)
* Risk Segmentation
* Business Insight Interpretation
* Model Deployment
* Analytical Storytelling

---

# 🧠 What This Project Represents

This project evolved from a predictive ML model into a comprehensive analytics solution integrating:

Machine Learning + SQL Analytics + Business Intelligence Thinking + Deployment

It reflects a real-world analytical workflow where model building leads to deeper data investigation and strategic insight generation.

---


