# 🏦 Credit Risk Analysis Project


---

## 📢 Summary
This project highlights my ability to:
- Clean and prepare messy real-world data  
- Perform exploratory analysis and visualization  
- Communicate insights clearly  
- Build and evaluate a baseline predictive model  

It is designed as a **portfolio project for a Data Analyst role**, with optional modeling to demonstrate growth potential toward Data Science.


## 📌 Overview
This project explores the **Home Credit Default Risk dataset** to understand factors influencing loan default.  
The primary focus is on **data cleaning, exploratory analysis, and insights**, with a baseline predictive model included as a bonus.

The notebook demonstrates an end-to-end workflow:
1. Load and inspect the dataset
2. Explore and visualize data
3. Handle missing values
4. Encode categorical features
5. Scale and split the data
6. Train a baseline logistic regression model
7. Evaluate performance with ROC AUC and ROC curve
8. Interpret feature importance
9. Summarize insights

---

## 📊 Dataset
- **Source**: Home Credit Default Risk dataset (Kaggle)
- **Target variable**: `TARGET`  
  - `0` = Loan repaid  
  - `1` = Loan default  

---

## 🔍 Exploratory Data Analysis (EDA)
- Checked dataset structure, summary statistics, and class balance  
- Visualized missing values (top 20 features)  
- Examined correlations with the target variable  

---

## 🧹 Data Cleaning
- Dropped columns with >40% missing values  
- Imputed remaining missing values with a placeholder (`-999`)  
- Encoded categorical features:  
  - Binary → Label Encoding  
  - Multi-class → One-Hot Encoding  

---

## ⚙️ Modeling
- **Baseline model**: Logistic Regression  
- **Scaling**: StandardScaler applied to all features  
- **Evaluation metric**: ROC AUC  

**Results**:  
- Logistic Regression ROC AUC ≈ *0.63*  
- Indicates weak but non-random predictive power  

---

## 📈 Visualizations
- Target distribution  
- Missing values bar chart  
- Correlation heatmap  
- ROC curve  
- Feature importance (logistic regression coefficients)  

---

## 💡 Key Insights
- Dataset is **imbalanced** (fewer defaults than non-defaults)  
- Age (`DAYS_BIRTH`), income, and employment-related features are strong predictors  
- Logistic regression provides a baseline but leaves room for improvement with tree-based models  

---

## 🚀 Next Steps
- Try advanced models (Random Forest, XGBoost, LightGBM)  
- Apply hyperparameter tuning  
- Address class imbalance (SMOTE, class weights)  
- Engineer new features (ratios, interactions)  

---

## 🧑‍💻 Skills Demonstrated
- Data wrangling with **pandas**  
- Exploratory analysis with **matplotlib** and **seaborn**  
- Feature engineering and encoding  
- Model training and evaluation with **scikit-learn**  
- Communicating insights with visuals and markdown  

---

## 📂 Repository Structure
