# Midterm Project 
*Elin Vängbo* 
*19/11/2020* 

# Customer behaviour in banks
This is my midterm project attending the Data Analytics coding bootcamp at [Ironhack Berlin](https://www.ironhack.com/en/berlin).

#### -- Project Status: Completed

#

## Project Objective
The purpose of this project is to understand the demographics and other characteristics of customers who accept or do not accept the offer of a credit card. The data set consists of information on 18,000 current bank customers. Machine learning and the classification models logistic regression and k-NN are used to create a predicts who will accept or decline the offer of a credit card.

### Methods Used
* Machine Learning
* Data Visualization

### Technologies
* Python
* Pandas, NumPy, Seaborn
* sklearn, imblearn
* Tableau
* SQL

## Dataset 
I utilised the dataset "creditcardmarketing.csv" located in the repo. 

## Workflow
First the dataset was cleaned and examined. Quickly I realized that the dataset is unbalanced with very few clients accepting the credit card offer. After further examination I saw that only a handful of the the variables were correlated with the target variable, leaving me to use only four independent variables, all of which being categorical. I tried different combinations of variables with my logistic regression model, all showing similar results, finally I decided to go with all four variables that correlated with the target variable. 

I tried using SMOTE, under- and oveversampling, to deal with my unbalanced data. After applying Logistic Regression classifier on all of them, I decided that SMOTE was the best way to handle the imbalance. I then applied the k-NN model on the balanced data created with SMOTE. Logistic Regression and the k-NN model showed similar results with a F1-score of around 70 %. With more time I would have tried using the RandomForest- and DecisionTree-classifier to see if these model can make better predicitions on the data. 

Besides Python, Tableau and SQL were also used to examine/vizualise the data. If I had more time I would have spent it on the vizualisation part in Tableau. 

## Needs of this project
- data exploration
- data processing
- data cleaning
- statistical modeling
- visualization
- writeup

## Organization
This repository contains the following files:
- Notebook:
    - bank_final.ipynb (cleaning, wrangling, modelling)
- Dataset:
    - creditcardmarketing.csv (original dataset)
- Vizualisations: 
    - tableau_findings.twb
- SQL Queries:
    - SQLqueries.sql
