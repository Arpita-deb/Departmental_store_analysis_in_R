# 
## Application of Data Analysis in Business with R

## Introduction: 

The COVID-19 pandemic has taken a sharp economic toll on several large and small scale industries worldwide. It has changed the business strategies from investing in innumerable products of various types to providing basic necessities of life. In this project a hypothetical dataset of a departmental store is analysed. It contains data about different product types, product categories, companies that manufactured them,their prices etc. Working with this dataset will enable us to find patterns and trends in customer behaviour and also get to know the profit and losses of businesses during the pandemic.

This project is done as a guided project on Coursera. There are two datasets namely, DEPARTMENTAL STORE and RATINGS dataset and they contain details of products from May, 2020, a period marked by covid-19. These datasets have been provided by the instructress.

## Objective:

* Apply data manipulation and data Visualization to find out which products will be more profitable.
* Perform descriptive statistics on the data set to analyze trends and patterns.
* Find correlation between different variables and gather insights for strategic decision making.

## Tools used:

* Excel - for initial data cleaning
* RStudio - for Data Analysis and Visualization.

## Data Dictionary:

### MY_DEPARTMENTAL_STORE Dataset:
| Column name | Column Description |
| :--- | :--- |
| UNIQUE_ID | Unique ID for each product |
| PRODUCT_NAME | Name of the product |
| COMPANY | Name of the Company |
| PRODUCT_TYPE | Type of the Product |
| PRODUCT_CATEGORY | Category of the product |
| COST_PRICE | The actual price of the product |
| SELLING_PRICE | The price at which a product is sold |
| QUANTITY_DEMANDED | Total quantity of product sold|


### RATINGS Dataset:
| Column name | Column Description |
| :--- | :--- |
| UNIQUE_ID | Unique ID for each product |
| PRODUCT_NAME | Name of the product |
| COMPANY | Name of the Company |
| PRODUCT_TYPE | Type of the Product |
| PRODUCT_CATEGORY | Category of the product |
| COST_PRICE | The actual price of the product |
| SELLING_PRICE | The price at which a product is sold |
| QUANTITY_DEMANDED | Total quantity of product sold|
| RATINGS | Ratings of each product from 1-5 |

## Data Cleaning:

Before feeding the data into RStudio, a quick cleanup is performed in Excel. The following steps are taken to clean and organise the data:

* Created a backup copy of the original data in a separate workbook.

* Ensured that the data is in a tabular format of rows and columns with: similar data in each column, all columns and rows visible, and no blank rows within the range.

* fixed mispelling and typos with the help of Spellcheck and  the Find and Replace dialog box.

* Removed duplicates using Remove Duplicate.

* Changed the uppercases of the header row using LOWER Function.

* Using TRIM function to remove the leading or trailing spaces from the texts.

* Removed the Company name from Product_name using the combination of RIGHT, LEN and SEARCH function, and replaced original column with the new one.
  
* Changed the datatype of numerical columns using Text-to-column option.

* Renamed the file as store_csv and saved the file as a Comma Seperated Value (CSV) file.

The same steps were followed for RATINGS dataset, and it is saved as rating_csv file.

## Analysis:

1. Find out the profit for each product type and category.
2. Which product is the most profitable?
3. Which product is the least profitable?
4. Which company had the highest net profit?
5. Is there any correlation between quantity demanded and profit?
6. What is the relation between ratings and selling price, cost price and quantity demanded?

## Conclusion: 

* The highest selling product type in the year 2020 is turned out to be hygienic products followed by food grains and spices and snacks as can be seen in the column chart and coxcomb chart.

* Hygiene products also seem to be the most profitable one, along with baby products and household products, whereas organic food is the lowest profitable product in the year 2020. It is in accord with the pandemic scenario where people were more health conscious and they spent more of their money basic necessities rather than expensive products.

* The highest using and most profitable household product are sanitizer followed by mask and handwash.

* Keeping in view of public need, some companies like I, J and M turned their business in capitalizing on hygiene products producing more revenue at the end of the year.

* The most popular hygiene products in the year 2020 were Mask(34%),sanitizer (28%), disinfectant(15%) and handwash(14%) as can be seen in the pie chart and interestingly as their demand increased their selling price decreased drastically.

* From the correlation plots we’ve found out that-
   • Ratings and quantity demanded has a positive correlation i.e. ratings increase as quantity of a product is increased.

   • Ratings and selling price have a negative correlation i.e. ratings decrease as selling price increases.

   • Ratings and cost price have a negative correlation i.e. ratings decrease as selling price increases.

## List of References:

* Comma Separated Values file
* Correlation
