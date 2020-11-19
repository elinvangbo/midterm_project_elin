# Midterm Project 
*Elin Vängbo* 
*19/11/2020* 

# Customer behaviour in banks
This is my midterm project attending the Data Analytics coding bootcamp at [Ironhack Berlin](https://www.ironhack.com/en/berlin).

#### -- Project Status: Completed

## Project Objective
The purpose of this project is to understand the demographics and other characteristics customers that accept a credit card offer and that do not accept a credit card. The data set consists of information on 18,000 current bank customers. Machine learning will then be used in order to create a model that predicts if customer will accept or decline the offer of a credit card.

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
First the dataset was cleaned and examined. Quickly I realized that the dataset is unbalanced with very few clients accepting the credit card offer. After further examination I saw that only a handful of the the variables were correlated with the target variable, leaving me to use only four independent variables, all of which being categorical.

I tried using SMOTE, under- and oveversampling, to deal with my unbalanced data. I the applied both a logistic regression- and a KN-N - model for my classification. Both models had a smiliar result with a F1-score of around 70 %. With more time I would have tried using the RandomForest- and DecisionTree-classifier to see if these model can make better predicitions on the data. 

Besides Python, Tableau and SQL were also used to examine/vizualise the data. 

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
SQL Queries:
    - SQLqueries.sql
