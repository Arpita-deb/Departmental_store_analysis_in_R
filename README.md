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
  
![find ](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9b2eacae-a2cb-491b-9873-f7b1864d3b67)

* Removed duplicates using Remove Duplicate.

* Changed the uppercases of the header row using LOWER Function.

![lower](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/59032464-90c9-45a3-82f0-9110dd81e582)

* Using TRIM function to remove the leading or trailing spaces from the texts.

* Removed the Company name from Product_name using the combination of RIGHT, LEN and SEARCH function, and replaced original column with the new one.

![right](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/3ce269c4-5edc-495c-a0e6-07dc894609aa)
  
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


![summary C](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/ce42b41f-bafa-46ab-b1ca-aec09ed3a4a0)

![summary A](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/150bdf51-2819-4129-8472-3d4058266f5c)


![pdt cat C](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/93e8d0cb-c496-4fa0-b376-829f8dc27c8b)

![pdt cat A](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/015d61dc-af7a-4424-a77d-65862d5bcfa6)


![pdt type C](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/1d636d35-89a0-4a6b-9236-b838157490a1)

![pdt type A](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/12eeac61-7518-4440-b0ee-002e8f5950d4)

![Q C](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9d033db5-42aa-4549-9bca-98dc59ad5c69)

![Q A](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/4dde7b06-4e0b-4df0-8329-525c1323ce09)

![outlier C](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/90f1c4e6-3c98-4ec4-ae13-90afddddfd23)

![Outlier A](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9b173a31-6a19-4187-9ff5-c07672ea63da)





![Rplot06](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/d7f2baa3-6efd-4a4d-b563-e8a6550dd81c)

![Rplot05](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/993f76c8-2674-41d1-a579-d8d7df2c25d6)

![Rplot04](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/65b80a19-adf2-4d37-9e20-13ed493225eb)


![Rplot03](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/0109b9c3-7827-46b3-b6c6-0d6e1f77f58e)

![Rplot02](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/f88735f3-8e34-4c0c-9da8-368eabcb9cda)

![Rplot01](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/01701f7c-19a6-47ff-bc84-c795790fce3d)


![Rplot](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/cfa50a9e-ec5d-4a7b-b529-109da5a645a3)

![pdt Vs total quan](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/3158fc30-c6a2-4de8-aa00-821164cd7178)


![cp Vs sp](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/13d1a440-898d-432c-9599-e6ca610a2a5e)

![Rplot07](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/40a8c4c9-e7c8-4056-acc5-de8509dfa042)

![Rplot08](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/aa2d397e-5fbe-4189-855c-815f629b35a5)

![Rplot09](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/da00281a-31e7-4e4b-9353-7fdee5182c92)





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
* tidyverse
* ggplot
* Correlation
* Pearson's correlation matrix
