

# **Project Report – Student Performance Analysis**

---

## **Project Overview**

This project focuses on predicting student academic performance categories using machine learning classification techniques. By analyzing academic, behavioral, and demographic features, the model classifies students into different grade classes.

The goal is to support data-driven academic decision-making and early identification of students who may require intervention.

---

## **Objectives**

* Analyze student performance patterns using exploratory data analysis (EDA)
* Identify key factors influencing academic outcomes
* Build and compare multiple classification models
* Evaluate models using multiclass performance metrics
* Select the best-performing model for practical implementation

---

## **Methodology**

1. Data Loading and Understanding
2. Exploratory Data Analysis (EDA)
3. Data Preprocessing
4. Model Building and Training
5. Model Evaluation
6. Model Comparison and Final Selection

---

## **Data Preparation**

The dataset contains academic and behavioral features such as:

* Study time
* Absences
* Academic scores
* Demographic indicators

**Target Variable:**

GradeClass → Multiclass classification
Values: {0, 1, 2, 3, 4}

Each value represents a performance category.

---

### Preprocessing Steps:

* Verified no major missing values
* Checked duplicates
* Converted target variable to integer format
* Split dataset into training and testing sets
* Applied feature scaling for Logistic Regression
* Evaluated class distribution

---

## **Exploratory Data Analysis (EDA)**

Key insights:

* Higher study time correlates positively with better grade class
* Absences negatively impact performance
* The dataset shows a clear class imbalance, with 50.63% of students categorized as Grade E (lowest performance). Mid-level grades (C and D) account for approximately 33%, while high-performing students (Grade A) represent only 4.47% of the data.
* No severe multicollinearity issues detected

EDA revealed structured relationships between academic behavior and performance levels.

---

## **Model Building and Training**

Two classification models were implemented and compared:

---

### **1. Logistic Regression**

* Multinomial logistic regression
* Applied feature scaling
* Used weighted metrics for multiclass evaluation

**Performance:**

* Struggled with nonlinear relationships
* Misclassified middle-grade categories
* Strong performance on majority class

Logistic Regression served as a baseline model.

---

### **2. Random Forest Classifier**

* Ensemble-based model
* Captures nonlinear interactions
* Less sensitive to feature scaling

**Final Performance:**

* Accuracy (Train): 98.6%
* Accuracy (Test): 92.1%
* F1-Score (Test): 91.5%
* Balanced precision and recall

The model showed strong generalization with mild overfitting (~6–7% gap).

---

## **Model Evaluation**

Evaluation metrics used:

* Accuracy
* Precision (Weighted)
* Recall (Weighted)
* F1-score (Weighted)
* Confusion Matrix

### Confusion Matrix Insights:

* Strong diagonal dominance
* Most errors occur between adjacent grade categories
* Minority class performance improved after tuning
* No extreme random misclassification

This indicates structured and meaningful prediction behavior.

---

## **Model Comparison**

| Aspect                | Logistic Regression | Random Forest |
| --------------------- | ------------------- | ------------- |
| Handles Nonlinearity  | Limited             | Strong        |
| Multiclass Separation | Moderate            | Excellent     |
| Overall Accuracy      | Lower               | Higher (~92%) |
| Generalization        | Good                | Very Good     |

Random Forest outperformed Logistic Regression in all major metrics.

---

## **Results & Conclusion**

Machine learning techniques effectively classify student performance categories with high predictive accuracy.

The Random Forest model achieved approximately **92% test accuracy**, demonstrating strong generalization and robust multiclass prediction capability.

Most classification errors occur between adjacent grade categories, which is logically consistent in academic performance modeling.

The model can support:

* Early academic risk detection
* Targeted intervention strategies
* Institutional performance monitoring
* Data-driven academic planning

Overall, this project demonstrates a complete end-to-end machine learning workflow, from data analysis to model evaluation and interpretation.

---

