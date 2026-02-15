import streamlit as st
import joblib
import pandas as pd
import numpy as np

# Load trained model
model = joblib.load("Students_performance_model.pkl")

st.set_page_config(page_title="Student Grade Prediction", layout="centered")

st.title("🎓 Student Performance Grade Prediction")
st.write("Predict student grade category based on performance indicators.")

st.sidebar.header("Enter Student Details")

# Sidebar Inputs
Age = st.sidebar.number_input("Age", 15, 25, 18)
Gender = st.sidebar.selectbox("Gender (0=Male, 1=Female)", [0,1])
Ethnicity = st.sidebar.selectbox("Ethnicity (Encoded)", [0,1,2,3])
ParentalEducation = st.sidebar.selectbox("Parental Education Level", [0,1,2,3,4])

StudyTimeWeekly = st.sidebar.slider("Study Time Weekly (Hours)", 0.0, 40.0, 10.0)
Absences = st.sidebar.slider("Number of Absences", 0, 50, 5)

Tutoring = st.sidebar.selectbox("Tutoring (0=No, 1=Yes)", [0,1])
ParentalSupport = st.sidebar.selectbox("Parental Support Level", [0,1,2,3,4])
Extracurricular = st.sidebar.selectbox("Extracurricular (0=No, 1=Yes)", [0,1])
Sports = st.sidebar.selectbox("Sports (0=No, 1=Yes)", [0,1])
Music = st.sidebar.selectbox("Music (0=No, 1=Yes)", [0,1])
Volunteering = st.sidebar.selectbox("Volunteering (0=No, 1=Yes)", [0,1])

GPA = st.sidebar.slider("GPA", 0.0, 4.0, 2.5)

# Prediction button
if st.button("Predict Grade"):

    features = np.array([[Age, Gender, Ethnicity, ParentalEducation,
                          StudyTimeWeekly, Absences, Tutoring,
                          ParentalSupport, Extracurricular,
                          Sports, Music, Volunteering, GPA]])

    prediction = model.predict(features)[0]

    # Convert numeric to Grade
    grade_mapping = {
        0: "A (Excellent Performance)",
        1: "B (Very Good Performance)",
        2: "C (Average Performance)",
        3: "D (Below Average Performance)",
        4: "E (Poor Performance)"
    }

    st.subheader("📊 Prediction Result")
    st.success(f"Predicted Grade: {grade_mapping[prediction]}")
