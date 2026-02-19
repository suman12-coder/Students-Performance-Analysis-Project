
# **Project Report – Student Performance Analysis**

## **Project Overview**

This project focuses on predicting student academic performance categories using machine learning classification techniques. By analyzing academic, behavioral, and demographic factors, the model classifies students into performance grades.

The objective is to enable data-driven academic decisions and support early identification of students who may require intervention.

---

## **Objectives**

* Analyze student performance patterns using exploratory data analysis (EDA)
* Identify key factors influencing academic outcomes
* Build and compare multiple classification models
* Evaluate models using multiclass performance metrics
* Select the best-performing model for practical use

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

The dataset includes academic and behavioral features such as:

* Study time
* Absences
* Academic scores
* Parental support
* Tutoring
* Extracurricular participation

**Target Variable:**
GradeClass (Multiclass: 0–4)

Where:

* 0 = A (Highest performance)
* 1 = B (Above Average performance)
* 2 = C (Average performance)
* 3 = D (Below Average performance)
* 4 = E (Lowest performance)

### Preprocessing Steps:

* Verified no major missing or duplicate values
* Ensured proper data types
* Split data into training and testing sets
* Applied feature scaling for Logistic Regression
* Evaluated class distribution

---

## **Exploratory Data Analysis (EDA)**

Key insights:

* Study time shows a positive correlation with higher grades
* Absences negatively impact academic performance
* Support-related factors (Parental Support, Tutoring) positively influence GPA
* Participation in extracurricular activities shows a slight positive association with performance
* No severe multicollinearity was detected

### Grade Distribution Insight

The dataset exhibits class imbalance, with 50.63% of students categorized as Grade E (lowest performance). Mid-level grades (C and D) account for approximately 33%, while only 4.47% of students achieved Grade A.

This imbalance highlights the importance of using weighted evaluation metrics to ensure fair model assessment.

Overall, EDA revealed structured and logical relationships between academic behavior, support systems, and performance outcomes.

---

## **Model Building and Training**

Two classification models were implemented:

### 1. Logistic Regression

* Multinomial classification
* Applied feature scaling
* Evaluated using weighted metrics

Performance observations:

* Limited ability to capture nonlinear relationships
* Misclassification mainly in middle-grade categories
* Biased toward majority class

Served as a baseline model.

---

### 2. Random Forest Classifier

* Ensemble-based approach
* Captures nonlinear interactions
* Less sensitive to feature scaling

**Final Performance:**

* Training Accuracy: 98.6%
* Test Accuracy: 92.1%
* Test F1-Score (Weighted): 91.5%

The model demonstrated strong generalization with mild overfitting (~6–7% difference).

---

## **Model Evaluation**

Metrics used:

* Accuracy
* Weighted Precision
* Weighted Recall
* Weighted F1-Score
* Confusion Matrix

### Confusion Matrix Insights:

* Strong diagonal dominance
* Most errors occur between adjacent grade categories
* No random or extreme misclassification patterns

This indicates consistent and structured predictive behavior.

---

## **Model Comparison**

| Aspect                | Logistic Regression | Random Forest |
| --------------------- | ------------------- | ------------- |
| Handles Nonlinearity  | Limited             | Strong        |
| Multiclass Separation | Moderate            | Excellent     |
| Overall Accuracy      | Lower               | ~92%          |
| Generalization        | Good                | Very Good     |

Random Forest outperformed Logistic Regression across all major metrics.

---

## **Results & Conclusion**

Machine learning models effectively classified student performance categories with high accuracy.

The Random Forest model achieved approximately **92% test accuracy**, demonstrating strong predictive capability and generalization.

Most misclassifications occurred between adjacent grade levels, which aligns with realistic academic performance transitions.

This model can support:

* Early identification of academically at-risk students
* Targeted academic intervention planning
* Institutional performance monitoring
* Data-driven decision-making in education

Overall, this project demonstrates a complete end-to-end machine learning workflow, from data analysis to model evaluation and interpretation, aligned with real-world analytical practices.

---


