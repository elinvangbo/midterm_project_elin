CREATE DATABASE credit_card_classification;
USE credit_card_classification;

#1. set the global variables
SET GLOBAL local_infile=1;

USE credit_card_classification;

#Create tables 
Create TABLE credit_card_data (
	`Customer_Number` int,
	`Offer_Accepted` varchar(255),
	`Reward` varchar(255),
	`Mailer_Type` varchar(255),
	`Income_Level` varchar(255),
	`Num_Bank_Accounts_Open` int,
	`Overdraft_Protection` varchar(255),
	`Credit_Rating` varchar(255),
	`Num_Credit_Cards_Held` int,
	`Num_Homes_Owned` int,
	`Household_Size` int,	
	`Own_Your_Home` varchar(255),
	`Average_Balance` int,	
	`Q1_Balance` int,	
	`Q2_Balance` int,	
	`Q3_Balance` int,	
	`Q4_Balance` int
);

LOAD DATA LOCAL INFILE '/Users/elin/midterm_project_elin/workfile.csv'
INTO TABLE credit_card_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

#select all data 
SELECT * FROM credit_card_data; 

#change type offer accepted, 0 = no, 1 = yes 
ALTER TABLE credit_card_data
MODIFY Offer_Accepted int;

#drop Q4-balance 
ALTER TABLE credit_card_data
DROP COLUMN Q4_Balance;

select * from credit_card_data limit 10;

# number of rows 
select count(customer_number) as num_rows FROM credit_card_data;

#unique values 
select distinct(offer_accepted) from credit_card_data;
select distinct(reward) from credit_card_data;
select distinct(mailer_type) from credit_card_data;
select distinct(num_credit_cards_held) from credit_card_data;
select distinct(household_size) from credit_card_data;

#Arrange the data in a decreasing order by the average_balance of the house. 
#Return only the customer_number of the top 10 customers with the highest average_balances in your data.
select customer_number from credit_card_data order by average_balance desc limit 10;

#avg balance all customers 
select avg(average_balance) from credit_card_data;

#What is the average balance of the customers grouped by Income Level? 
#The returned result should have only two columns, income level and Average balance of the customers. 
#Use an alias to change the name of the second column.
select income_level, avg(average_balance) as avg_balance_of_income_level from credit_card_data group by income_level;

#What is the average balance of the customers grouped by number_of_bank_accounts_open? 
select num_bank_accounts_open, avg(average_balance) as avg_balance_by_no_bank_accounts from credit_card_data group by num_bank_accounts_open;

#What is the average number of credit cards held by customers for each of the credit card ratings?
select credit_rating, avg(num_credit_cards_held) as avg_num_credit_cards_by_rating from credit_card_data group by credit_rating;

#Is there any correlation between the columns credit_cards_held and number_of_bank_accounts_open?
select round(avg(num_credit_cards_held),1) as avg_num_credit_cards, num_bank_accounts_open from credit_card_data group by num_bank_accounts_open;

#Credit rating medium or high
select * from credit_card_data
where credit_rating = "Medium"
or credit_rating = "High";

#Credit cards held 2 or less
select * from credit_card_data
where num_credit_cards_held <= 2;

#Owns their own home
select * from credit_card_data
where own_your_home = "Yes";

#Household size 3 or more
select * from credit_card_data
where household_size >= 3;

#options are yes or no 
select offer_accepted from credit_card_data;

#query to target these customers 
create view target_customers as
select * from credit_card_data 
where household_size >= 3
and own_your_home = "Yes"
and num_credit_cards_held <= 2
and credit_rating != "Low"; 

#target customers who accepted
select * from target_customers 
where offer_accepted = 1;

#customers whose average balance is less than the average balance of all the customers in the database
select * from credit_card_data where average_balance < (select avg(average_balance) from credit_card_data);

#create view 
create view low_balance_customers as
select * from credit_card_data where average_balance < (select avg(average_balance) from credit_card_data);

#What is the number of people who accepted the offer vs number of people who did not?
select offer_accepted, count(offer_accepted) as num_of_clients from credit_card_data group by offer_accepted;

#What is the difference in average balances of the customers with high credit card rating 
#and low credit card rating?
create view avg_credit_rating as
select credit_rating, 
avg(average_balance) as average_balance
from credit_card_data 
where credit_rating != "medium" 
group by credit_rating;

select credit_rating, average_balance, 
average_balance - LAG(average_balance)
over (order by average_balance) as difference
from avg_credit_rating;

#which all types of communication (mailer_type) were used and with how many customers?
select mailer_type, count(customer_number) as num_customers from credit_card_data group by mailer_type;

#Provide the details of the customer that is the 11th least Q1_balance in your database.
create view with_row_num as
select *, row_number() over (order by q1_balance) as row_num from credit_card_data;

select * from with_row_num where row_num = 11;

