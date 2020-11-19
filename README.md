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
First the dataset was cleaned and examined. Quickly I realized that the dataset is unbalanced, with very few clients accepting the credit card offer. After further examination I realized that very few of the variables was correlated to the target variable, leaving to use only four independent variables for my model, all of which were categorical. 

I tried using SMOTE, under- and oveversampling, to deal with my unbalanced data. I the applied both a logistic regression- and a KN-N - model for my classification. Both models had a smiliar result with a F1-score of around 70 %. With more time I would have tried using the RandomForest- and DecisionTree-classifier to see if these model can make better predicitions on the data. 

Besides Python, Tableau and SQL were also used to examine/vizualise the data. 

## Needs of this project
- data exploration
- data processing
- data cleaning
- statistical modeling
- visualization
- writeup






## Getting Started

1. Clone this repo (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Raw Data is being kept [here](Repo folder containing raw data) within this repo.

    *If using offline data mention that and how they may obtain the data from the froup)*
    
3. Data processing/transformation scripts are being kept [here](Repo folder containing data processing scripts/notebooks)
4. etc...

*If your project is well underway and setup is fairly complicated (ie. requires installation of many packages) create another "setup.md" file and link to it here*  

5. Follow setup [instructions](Link to file)

## Featured Notebooks/Analysis/Deliverables
* [Notebook/Markdown/Slide Deck Title](link)
* [Notebook/Markdown/Slide DeckTitle](link)
* [Blog Post](link)


## Contributing DSWG Members

**Team Leads (Contacts) : [Full Name](https://github.com/[github handle])(@slackHandle)**

#### Other Members:

|Name     |  Slack Handle   | 
|---------|-----------------|
|[Full Name](https://github.com/[github handle])| @johnDoe        |
|[Full Name](https://github.com/[github handle]) |     @janeDoe    |

## Contact
* If you haven't joined the SF Brigade Slack, [you can do that here](http://c4sf.me/slack).  
* Our slack channel is `#datasci-projectname`
* Feel free to contact team leads with any questions or if you are interested in contributing!
