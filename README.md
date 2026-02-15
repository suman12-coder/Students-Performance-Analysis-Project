

# 🎓 Student Performance Analysis & Grade Prediction

---

## 📌 Overview

This project aims to analyze student academic and behavioral data to predict overall performance grades using Machine Learning techniques.

The model evaluates factors such as GPA, study time, absences, parental support, and extracurricular involvement to classify students into grade categories:

* **A (0) – Highest Performance**
* **B (1) – Very Good Performance**
* **C (2) – Average Performance**
* **D (3) – Below Average Performance**
* **E (4) – Lowest Performance**

Multiple steps including data preprocessing, exploratory data analysis (EDA), feature engineering, and model training were performed.
The final model was deployed as an interactive **Streamlit web application** for real-time grade prediction.

---

## 🌐 Live App

[Click here to open the deployed Streamlit App](https://students-performance-analysis-project-fjmzxyhh5zhkmfcezfjsy2.streamlit.app/)

---

## 🎯 Objectives

* Analyze academic and behavioral patterns affecting student performance
* Perform data preprocessing and validation
* Conduct exploratory data analysis (EDA)
* Train and evaluate classification models
* Compare model performance using accuracy and confusion matrix
* Deploy an end-to-end student grade prediction web application

---

## 📊 Dataset Features

* Age
* Gender
* Ethnicity
* Parental Education Level
* Study Time Weekly
* Absences
* Tutoring Support
* Parental Support Level
* Extracurricular Participation
* Sports Participation
* Music Participation
* Volunteering Activity
* GPA


---

## ⚙️ Machine Learning Models

Multiple classification models were trained and evaluated:

* **Logistic Regression**
* **Random Forest Classifier**

### 📌 Final Selected Model:

**Random Forest Classifier**
(Selected based on better performance and robustness)

### 🧠 Problem Type:

Multi-class Classification

### 🎯 Target Variable:

`GradeClass`

### 📊 Evaluation Metrics:

* Accuracy Score
* Confusion Matrix
* Precision
* Recall
* F1-Score

---

## ⚙️ Machine Learning Models & Selection

Two classification models were developed and compared:

1. **Logistic Regression**
2. **Random Forest Classifier**

After performance comparison, **Random Forest Classifier** was selected as the final model due to:

* Higher classification accuracy
* Better handling of non-linear relationships
* Improved class-wise prediction balance

The final model was serialized and deployed using Streamlit for real-time inference.

### 📊 Evaluation Metrics

* Accuracy Score
* Confusion Matrix, Classification Report
* Precision, Recall & F1-Score

---

## 📈 Project Workflow

```text
Raw Data 
   → Data Cleaning 
   → Exploratory Data Analysis (EDA) 
   → Feature Selection 
   → Model Training (Logistic Regression) 
   → Model Evaluation 
   → Model Serialization (.pkl) 
   → Streamlit Deployment
```

---

## 🛠 Tech Stack

* Python
* Pandas
* NumPy
* Scikit-learn
* Streamlit
* Joblib

---

## 💡 Key Insights

* GPA and Study Time are strong predictors of high academic performance
* Higher absences are associated with lower grade categories
* Parental support positively influences student outcomes
* Extracurricular involvement shows moderate correlation with performance

---


## 🧠 What This Project Demonstrates

* Applied Machine Learning in real-world educational data
* Multi-class classification problem solving
* End-to-end ML project lifecycle
* Model deployment using Streamlit
* Professional documentation and reproducibility

---


