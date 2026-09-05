# 🏥 Healthcare Risk Stratification

A healthcare data analytics and machine learning project that combines patient, diagnosis, laboratory, and outcome data to analyze healthcare information and develop a risk classification model.

The project combines SQL, Python, machine learning, and Streamlit to demonstrate an end-to-end healthcare analytics workflow.

---

## 🎯 Project Objective

The objective of this project is to analyze healthcare data and develop a machine learning model for patient risk classification.

The project covers:

- Patient data analysis
- Diagnosis analysis
- Laboratory result analysis
- Patient outcome analysis
- Treatment cost analysis
- Length of stay analysis
- Data preprocessing
- Feature engineering
- Machine learning classification
- Interactive risk prediction

---

## 📂 Datasets

The project uses four datasets:

| Dataset | Description |
|---|---|
| `patients.csv` | Patient information |
| `diagnoses.csv` | Diagnosis information |
| `labs.csv` | Laboratory test results |
| `outcomes.csv` | Patient outcome information |

---

## 🗄️ SQL Analysis

SQL is used to work with the healthcare data and perform analytical queries.

The SQL work includes:

- Creating database tables
- Working with patient, diagnosis, laboratory, and outcome data
- Joining related tables
- Performing aggregations
- Analyzing treatment costs
- Analyzing patient outcomes
- Identifying abnormal laboratory results

---

## 🐍 Python & Machine Learning

Python is used for data processing, analysis, and machine learning.

### Machine Learning Model

**Logistic Regression** is used for classification.

### Model Features

The risk prediction application uses:

- Age
- Length of Stay
- Treatment Cost

The model produces:

- Risk Prediction
- Risk Probability

The Streamlit application passes these three values to the trained model and displays the resulting risk classification and probability.

---

## 🖥️ Streamlit Application

The project includes an interactive Streamlit application called:

**Healthcare Risk Stratification App**

Users can enter:

- Age
- Length of Stay
- Treatment Cost

After clicking **Predict**, the application displays:

- Risk Prediction
- Risk Probability

The prediction is presented as either:

**High Risk** or **Low Risk**

---
## 🛠️ Tools & Technologies

- Python
- SQL
- Pandas
- NumPy
- Scikit-learn
- Jupyter Notebook
- Streamlit
- Joblib
- Excel

---

## 🧠 Key Concepts Demonstrated

- Data Cleaning
- Data Preprocessing
- Data Integration
- Feature Engineering
- Exploratory Data Analysis
- Classification
- Logistic Regression
- Model Evaluation
- Risk Prediction
- Streamlit Application
- Healthcare Data Analytics
- SQL Data Analysis

---

## 📂 Project Structure

```text
healthcare-risk-stratification/
│
├── README.md
│
├── data/
│   ├── patients.csv
│   ├── diagnoses.csv
│   ├── labs.csv
│   └── outcomes.csv
│
├── sql/
│   └── healthcare_analysis.sql
│
├── notebooks/
│   ├── Risk_Model.ipynb
│   └── riskmodel.ipynb
│
├── app/
│   └── riskmodel.py
│
└── screenshots/
    └── healthcare-risk-app.png
