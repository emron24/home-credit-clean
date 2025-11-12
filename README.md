# 🏦 Home Credit Risk Analysis  
*A Portfolio Project for Data Analyst Roles*

## 📢 Summary  
This project showcases my ability to:
- Clean and prepare messy real-world data  
- Perform exploratory analysis and visualization  
- Communicate insights clearly  
- Build and evaluate a baseline predictive model  

It’s designed to demonstrate core Data Analyst skills, with optional modeling to highlight growth potential toward Data Science.

---

## 📌 Project Overview  
Using the **Home Credit Default Risk dataset** from Kaggle, this project explores factors that influence loan default. The focus is on:
- Data cleaning  
- Exploratory analysis  
- Insight generation  
- Baseline modeling (Logistic Regression)

---

## 📓 Workflow & Notebooks  
The project is organized into step-by-step Jupyter notebooks:

| Notebook | Description |
|----------|-------------|
| [01 Data Loading](notebooks/01_data_loading.ipynb) | Load the dataset, inspect structure, and perform initial checks |
| [02 Feature Engineering](notebooks/02_feature_engineering.ipynb) | Handle missing values, encode categorical variables, and prepare features |
| [03 Model Preparation](notebooks/03_model_preparation.ipynb) | Scale features, split data, train a logistic regression model, and evaluate performance |

---

## 📊 Dataset Details  
- **Source**: [Home Credit Default Risk](https://www.kaggle.com/c/home-credit-default-risk)  
- **Target Variable**: `TARGET`  
  - `0` = Loan repaid  
  - `1` = Loan default  

---

## 🔍 Exploratory Data Analysis (EDA)  
- Checked dataset structure and class balance  
- Visualized missing values (top 20 features)  
- Examined correlations with the target variable  

---

## 🧹 Data Cleaning  
- Dropped columns with >40% missing values  
- Imputed remaining missing values with placeholder (`-999`)  
- Encoded categorical features:  
  - Binary → Label Encoding  
  - Multi-class → One-Hot Encoding  

---

## ⚙️ Baseline Modeling  
- **Model**: Logistic Regression  
- **Scaling**: StandardScaler  
- **Metric**: ROC AUC  

**Results**:  
- ROC AUC ≈ *0.63*  
- Indicates weak but non-random predictive power

---

## 📈 Visualizations  
- Target distribution  
- Missing values bar chart  
- Correlation heatmap  
- ROC curve  
- Feature importance (logistic regression coefficients)

- --
## 📊 Excel Dashboard

Alongside the Python notebooks, I built an interactive Excel dashboard to visualize loan repayment behavior.  
It includes five chart types with slicers for Occupation, Income Level, Marital Status, Gender, and Family Size.

### Dashboard Features
- Loan Status by Occupation Group (Clustered Column)
- Loan Status by Age Group (Line Chart)
- Income Level Distribution (Pie Chart)
- Loan Status by Family Size Group (Stacked Bar Chart)
- Income vs Credit Amount (Scatter Plot)

### Files
- `dashboards/screenshots/` — PNGs of each chart

---

## 💡 Key Insights  
- Dataset is **imbalanced** (fewer defaults than non-defaults)  
- Age (`DAYS_BIRTH`), income, and employment-related features are strong predictors  
- Logistic regression provides a baseline; tree-based models could improve performance

---

## 🚀 Next Steps  
- Try advanced models (Random Forest, XGBoost, LightGBM)  
- Apply hyperparameter tuning  
- Address class imbalance (SMOTE, class weights)  
- Engineer new features (ratios, interactions)

---

## 🧑‍💻 Skills Demonstrated  
- Data wrangling with **pandas**  
- EDA with **matplotlib** and **seaborn**  
- Feature engineering and encoding  
- Model training and evaluation with **scikit-learn**  
- Communicating insights with visuals and markdown

---
## 📁 Project Structure

```text
project1-home/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
│   ├── 01_data_loading.ipynb
│   ├── 02_feature_engineering.ipynb
│   └── 03_model_preparation.ipynb
├── dashboards/
│   ├── screenshots/
│   └── (Excel file hosted externally)
├── sql_scripts/
│   └── *.sql
├── requirements.txt
├── README.md
└── .gitignore
'''
