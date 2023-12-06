# What were they buying during COVID - 19? 
## Application of Data Analysis in Business with R

## Introduction: 

The COVID-19 pandemic has taken a sharp economic toll on several large and small scale industries worldwide. It has changed the business strategies from investing in innumerable products of various types to providing basic necessities of life. In this project a hypothetical dataset of a departmental store is analysed. It contains data about different product types, product categories, companies that manufactured them,their prices etc. Working with this dataset will enable us to find patterns and trends in customer behaviour and also get to know the profit and losses of businesses during the pandemic.

This project is done as a guided project on Coursera. There are two datasets namely, DEPARTMENTAL STORE and RATINGS dataset and they contain details of products from May, 2020, a period marked by covid-19. These datasets have been provided by the instructress.

## Objective:

* To apply data manipulation and data Visualization to find out which products were more profitable.
* To perform descriptive statistics on the data set to analyze trends and patterns.
* To find correlation between different variables and gather insights for strategic decision making.

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
  
   <img width="800" align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9b2eacae-a2cb-491b-9873-f7b1864d3b67.png" />

* Removed duplicates using Remove Duplicate.

* Changed the uppercases of the header row using LOWER Function.

    <img width="800" align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/59032464-90c9-45a3-82f0-9110dd81e582.png"/>

* Used TRIM function to remove the leading or trailing spaces from the texts.

* Removed the Company name from Product_name using the combination of RIGHT, LEN and SEARCH function, and replaced original column with the new one.

    <img width="800" align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/3ce269c4-5edc-495c-a0e6-07dc894609aa.png"/>
  
* Changed the datatype of numerical columns using Text-to-column option.

* Renamed the file as store_csv and saved the file as a Comma Seperated Value (CSV) file.

The same sata cleaning steps were performed for RATINGS dataset, and saved it as rating_csv file.

## Analysis:

### Show the summary statistics for net profit.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/ce42b41f-bafa-46ab-b1ca-aec09ed3a4a0"/>
   
The summary statistics gives a quick view of the important statistics such as average, sum, minimum, maximum, median, variance and standard deviation of the metric net-profit.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/150bdf51-2819-4129-8472-3d4058266f5c"/>
</p><br>

### Find out the profit for each product type.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/1d636d35-89a0-4a6b-9236-b838157490a1"/>

In order to find net profit for each product type, first the data is grouped by product type and then the summary statistics are calculated using summarise function. Finally the result is sorted in descending order from highest to lowest profitable product type.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/12eeac61-7518-4440-b0ee-002e8f5950d4"/>

The bar chart visually represents the above list.

![Rplot02](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/f88735f3-8e34-4c0c-9da8-368eabcb9cda)

It seems Hygienic product type were most profitable, given the pandemic situation of 2020. A further breaking down of it shows us which hygienic product were most profitable.

![hygiene](https://github.com/Arpita-deb/Do_I_read_all_the_books_I_buy/assets/139372731/7e7281d8-bd34-443f-8968-0319862b9c6b)
</p><br>

### Find out the profit for each product category.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/93e8d0cb-c496-4fa0-b376-829f8dc27c8b"/>

In order to find net profit for each product category, first the data is grouped by product category and then the summary statistics are calculated using summarise function. Finally the result is sorted in descending order from highest to lowest profitable product category.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/015d61dc-af7a-4424-a77d-65862d5bcfa6"/>

The bar chart visually represents the above list.

![Rplot03](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/0109b9c3-7827-46b3-b6c6-0d6e1f77f58e)
</p><br>


### Which products were most demanded?

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9d033db5-42aa-4549-9bca-98dc59ad5c69"/>

To find out the most demanded product, first the data is grouped by product type and then aggregated using sum function. This gives us the total quantity demanded for each product type. Finally the result is sorted in descending order of quantity demanded.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/4dde7b06-4e0b-4df0-8329-525c1323ce09"/>

The bar chart visually represents the above list. 

![pdt Vs total quan](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/3158fc30-c6a2-4de8-aa00-821164cd7178)
</p><br>

## Show the relation between Cost price and Selling price.

![cp Vs sp](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/13d1a440-898d-432c-9599-e6ca610a2a5e)

The relation between cost price and selling is linear and with a positive slope. It means that selling price increases with increase in cost price. There are two data points which have values much different from the rest of the datapoints. Let's look into it.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/90f1c4e6-3c98-4ec4-ae13-90afddddfd23">

The two products were Pro-Active Health Drink which have a much greater selling price than their cost price. Consequently they have the greatest profit.

<img width='800' align='center' src="https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/9b173a31-6a19-4187-9ff5-c07672ea63da">
</p><br>
  
## Which company had the highest net profit?

![Rplot06](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/d7f2baa3-6efd-4a4d-b563-e8a6550dd81c)

Company S had the highest profit, and from the stacks we can see that they sold all types of products. On the other hand company M sold only hygienic products and organic foods.
</p><br>

### Is there any correlation between quantity demanded and profit?

![Rplot](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/cfa50a9e-ec5d-4a7b-b529-109da5a645a3)

There is a visible relation between quantity demanded and profit. Profit decreases steeply as quantity of the products increases. Only the hygienic and organic products seem to have both high profit and high demand.
</p><br>

### What is the relation between Profit and ratings?

![Rplot01](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/01701f7c-19a6-47ff-bc84-c795790fce3d)

There's a visible negative correlation between profit and ratings. Ratings seem to increase as profit decreases.
</p><br>

### What is the relation between ratings and quantity demanded, selling price and cost price ?

![Rplot07](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/40a8c4c9-e7c8-4056-acc5-de8509dfa042)

Ratings have positive correlation with quantity demanded as can be seen from the correlation chart.

![Rplot08](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/aa2d397e-5fbe-4189-855c-815f629b35a5)

![Rplot09](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/da00281a-31e7-4e4b-9353-7fdee5182c92)

Ratings have negative correlation with both selling price and cost price as can be seen from the correlation charts.
</p><br>

### Show the correlation matrices.

A correlation matrix is a statistical technique used to evaluate the relationship between two variables in a data set. The matrix is a table in which every cell contains a correlation coefficient, where 1 is considered a strong relationship between variables, 0 a neutral relationship and -1 a not strong relationship. 

![Rplot05](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/993f76c8-2674-41d1-a579-d8d7df2c25d6)

![Rplot04](https://github.com/Arpita-deb/Departmental_store_analysis_in_R/assets/139372731/65b80a19-adf2-4d37-9e20-13ed493225eb)
</p><br>

As can be clearly seen from the correlation matrices, cost price and selling price are highly correlated. They are also positively correlated with profit and net profit. Net profit is positively but weakly correlated with selling price, cost price, quantity demanded, profit and profit percentage. On the other hand, quantity demanded is negatively correlated with selling price, cost price, profit and profit percentage.  

## Conclusion: 

* The Top 3 most profitable product type for 2020 were:
    * Hygiene
    * Packed Food
    * Beauty products
* The Top 3 most profitable product category for 2020 were:
    * Dry Fruits
    * Sanitizer
    * Body care
* The Top 3 most demanded products were:
    * Foodgrains and spices
    * Packed Food
    * Hygiene
  
* As can be seen from the above lists, **Hygienic products** and **basic necessities (Packed food, foodgrains and spices, body care etc)** were most profitable and most demanded. It is in accord with the pandemic scenario where people were more health conscious and they spent more of their money basic necessities rather than expensive products.

* Keeping in view of public need, some companies like I, J and M turned their business in capitalizing on hygiene products. 

* The most popular hygiene products in the year 2020 were Sanitizer, Handwash, Disinfectant and Mask. Interestingly as their demand increased their selling price decreased drastically.

* From the correlation plots we’ve found out that-
   * Ratings and quantity demanded has a positive correlation i.e. ratings increase as quantity of a product is increased.

   * Ratings and selling price have a negative correlation i.e. ratings decrease as selling price increases.

   * Ratings and cost price have a negative correlation i.e. ratings decrease as selling price increases.

* From the correlation matrices we found out the strength of correlations between various numerical variables. Cost price, selling price and profit are highly correlated. As quantity demanded increases the cost price, selling price and profit decrease, showing negative correlation between these variables. 


From the above conclusion we can say that during the pandemic year, the companies which were focused on providing healthcare and basic necessities of life were most profitable. As these products were in constant demand, they needed to lower their costs. On the other hand, the demand for luxury products were low those days, and as a result they were costlier than any other time.

## List of References:

* [Pipel Operator (%>%)](https://www.analyticssteps.com/blogs/using-pipe-operator-simplify-your-code-r-programming)
* [tidyverse](https://en.wikipedia.org/wiki/Tidyverse)
* [ggplot](https://ggplot2.tidyverse.org/reference/ggplot.html)
* [Correlation](https://www.analyticsvidhya.com/blog/2021/04/intuition-behind-correlation-definition-and-its-types/)
* [Correlation matrix](https://builtin.com/data-science/correlation-matrix)
