#  Database Restructuring & Normalization

##  Objective

The original dataset was stored in a single flat table (`Raw_Data`) containing demographic details, academic performance metrics, and extracurricular information.

To improve data integrity, scalability, and analytical efficiency, the dataset was restructured into a normalized relational database model.

---

#  Data Modeling Approach

The raw table was decomposed into three logically structured tables:

---

## 1️⃣ Students (Demographic Dimension Table)

**Purpose:**
To store static demographic attributes of students.

**Fields Included:**

* `StudentID` (Primary Key)
* `Age`
* `Gender`
* `Ethnicity`
* `ParentalEducation`

###  Rationale:

* Separates demographic data from performance data.
* Reduces redundancy.
* Enables demographic-level performance analysis.

---

## 2️⃣ Academic_Performance (Fact Table)

**Purpose:**
To store measurable academic indicators.

**Fields Included:**

* `StudentID` (Foreign Key)
* `StudyTimeWeekly`
* `Absences`
* `GPA`
* `GradeClass`

###  Rationale:

* Central table for performance analytics.
* Supports GPA trend analysis.
* Enables performance segmentation.
* Maintains referential integrity via foreign key constraints.

---

## 3️⃣ Activities_Support (Behavioral & Support Factors)

**Purpose:**
To store extracurricular participation and parental involvement data.

**Fields Included:**

* `StudentID` (Foreign Key)
* `Tutoring`
* `ParentalSupport`
* `Extracurricular`
* `Sports`
* `Music`
* `Volunteering`

###  Rationale:

* Allows evaluation of non-academic performance drivers.
* Enables impact analysis of support systems.
* Supports multi-dimensional student profiling.

---

#  Data Migration Process

Data was transferred from the original `Raw_Data` table into the newly created relational tables using `INSERT INTO ... SELECT` statements.

This ensured:

* No data duplication
* Clean data separation
* Logical categorization of variables
* Accurate mapping using `StudentID`

---

# Key Observations :

## Data Distrubutiion:
* The majority of students (1,211 out of 2,392) fall under Grade E, indicating GPA below 2.0.
* Only 107 students achieved Grade A (GPA ≥ 3.5).
* The number of students progressively increases from Grade A to Grade E.
* Nearly 50% of the total student population is classified in the lowest performance category.
## Overall Academic Performance Analysis :
* The overall average GPA across all 2,392 students is 1.91.
## Study Time Impact on Academic Performance:
* Students with Grade A study the most (11.85 hours/week).
* Students with Grade E study the least (9.18 hours/week).
* There is a consistent decline in study time as grade performance decreases.
* The difference between Grade A and Grade E students is approximately 2.67 hours per week.
## Absence Impact on Academic Performance: 
* High-performing students (A & B) have the lowest average absences (~5–6 days).
* Grade C students show moderate absenteeism (~7 days).
* Grade D students average 11.43 absences, nearly double high performers.
* Grade E students show extremely high absenteeism — 20.79 days on average.
* The difference between Grade A and Grade E students is approximately 15 days.
## Parental Support Impact on GPA:
* There is a consistent upward trend in GPA as parental support increases.
* Students with Very High parental support (Level 4) have the highest average GPA (2.19).
* Students with No parental support (Level 0) have the lowest GPA (1.54).
* The difference between highest and lowest support levels is 0.65 GPA points.
## Tutoring Effectiveness Analysis:
* Students receiving tutoring have an average GPA of 2.11.
* Students without tutoring have an average GPA of 1.82.
* The difference is 0.29 GPA points.
* Tutored students, on average, perform above the overall dataset mean (1.91).
## Extracurricular Participation Impact on GPA:
* Students participating in extracurricular activities have an average GPA of 2.02.
* Students not participating have an average GPA of 1.84.
* The difference is 0.18 GPA points.
* Students engaged in extracurricular activities perform above the dataset average (1.91).
## Gender-wise Academic Performance Analysis:
* Male students (Gender = 0) have an average GPA of 1.92.
* Female students (Gender = 1) have an average GPA of 1.89.
* The difference between genders is 0.03 GPA points.
* The performance gap is extremely small.
## Parental Education Impact on Academic Performance:
* Students whose parents completed High School (Level 1) have the highest average GPA (1.94).
* Students whose parents have Bachelor’s (Level 3) or Higher education (Level 4)** show slightly lower GPAs (~1.81–1.82).
* The GPA variation across all levels is relatively small (range ≈ 0.13).
* There is no clear upward trend between parental education and student GPA.
## Absence Distribution Analysis : 
* 43.52% of students fall under the High Absence category.
* Only 26.17% of students maintain Low absenteeism.
* Nearly 3 out of 4 students (73.83%) fall into Medium or High absence levels.
* High absenteeism is the largest category in the dataset.
## Student Performance Segmentation Based on GPA:
* 53.26% of students are classified as At Risk (GPA < 2.0).
* Only 3.22% are High Performers (GPA > 3.5).
* The majority of the population is academically vulnerable.
* The High Performer segment is extremely small compared to the At Risk group.
