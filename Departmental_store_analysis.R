#Loading packages 

library(tidyverse)
library(corrplot)
library(ggcorrplot)

# Loading the datasets
# store dataset
store <- read_csv("C:/Users/Dell/Desktop/store_csv.csv")
View(store)

# rating dataset
ratings <- read_csv("C:/Users/Dell/Desktop/ratings_csv.csv")
View(ratings)


# Exploratory Data Analysis


# Filtering for hygiene product type

filter(store, product_type=='Hygiene')

# Filtering products for companies S and M

company <- filter(store, company %in% c("S", "M"))
head(company)

# Filtering for Packed Food with quantity demanded more than 500

filter(store, quantity_demanded >= 500 & product_type=="Packed Food")

# Filtering high rated products

high_rating <- filter(ratings, ratings>="4.5")

# Showing the products in descending order of rating

high_rating %>% 
  arrange(desc(ratings))

# Filtering low rated products

low_rating <- filter(ratings, ratings <= "3")

#Showing the products in ascending order of rating

low_rating %>% 
  arrange(ratings)

#Adding 3 columns profit,net_profit & profit_percent in the store dataset

store_df <- mutate(store, profit = selling_price - cost_price,
                          net_profit = profit * quantity_demanded,
                          profit_percent = profit / cost_price * 100)
View(store_df)

rating_df <- mutate(ratings, profit = selling_price - cost_price,
                   net_profit = profit * quantity_demanded,
                   profit_percent = profit / cost_price * 100)
View(rating_df)


# Statistical Summary
(net_profit_summary <- summarise(store_df, 
                                avg_profit=mean(net_profit),
                                sum=sum(net_profit),
                                min_profit=min(net_profit), 
                                max_profit=max(net_profit),
                                median_profit=median(net_profit),
                                variance=var(net_profit),
                                std_dev=sd(net_profit)))

# Quantile - shows the minimum, 25%, 50% (median), 75%, maximum net profit
store_df %>% reframe(Quantile= quantile(net_profit))

# Range - shows the range (minimum - maximum values) of net profit 
store_df %>% reframe(Range= range(net_profit))


# Top product category in 2020:
# Summary statistics of net profit for product category

store_df %>% 
  group_by(product_category) %>% 
  summarise(
    count=n(),
    sum_profit=sum(net_profit),
    avg_profit=mean(net_profit),
    min_profit=min(net_profit),
    max_profit=max(net_profit)
  ) %>% 
  arrange(desc(sum_profit))


# Plotting a Bar chart to show total net profit of each product category
store_df %>%                                                                                # using the store dataset
  group_by(product_category) %>%                                                            # grouping the data by product category
  summarise(total_profit= sum(net_profit)) %>%                                              # aggregating the net profit
  ggplot(aes(x=product_category, y=total_profit)) +                                         # creating a coordinate system to add layers to
  geom_col(width=0.7, fill='lightsalmon') +                                                 # creating a geometric object (bar) 
  coord_flip() +                                                                            # flipping the X and Y axes
  labs(title='Most profitable product category in 2020',
       subtitle='Bar chart showing total net profit of each product category') +            # title and subtitle
  xlab('Product Category') +                                                                # labeling the X-axis
  ylab('Total Profit') +                                                                    # labeling the Y-axis
  theme(text=element_text(size=10)) +                                                       # setting the text size in the chart
  theme(panel.background = element_blank(), plot.title = element_text( size=16)) +          # removing the background grids and setting the title size
  theme(axis.text.x = element_text(angle = 0, vjust=1, hjust=1))                            # adjusting the X-axis labels to prevent overlapping

# Top product type used in 2020:
# Summary statistics of net profit for product type

store_df %>% 
  group_by(product_type) %>% 
  summarise(
    count=n(),
    sum_profit=sum(net_profit),
    avg_profit=mean(net_profit),
    min_profit=min(net_profit),
    max_profit=max(net_profit)
  ) %>% 
  arrange(desc(sum_profit))

# Plotting a Bar chart to show total net profit of each product type

store_df %>% 
  group_by(product_type) %>% 
  summarise(total_profit= sum(net_profit)) %>% 
  ggplot(aes(x=product_type, y= total_profit))+ 
  geom_col(width=0.6, fill="turquoise3")+
  labs(title="Product types vs Total Net profit", subtitle='Bar chart showing total net profit of each product type') + 
  xlab("Product type")+ 
  ylab("Total profit")+ 
  theme(text=element_text(size=12))+
  theme(panel.background = element_blank(),plot.title = element_text( size=16))+
  theme(axis.text.x = element_text(angle = 45, vjust=1, hjust=1)) 


# Top products by quantity demanded

store_df %>% 
  group_by(product_type) %>% 
  summarise(total_quantity = sum(quantity_demanded)) %>% 
  arrange(desc(total_quantity))

# Plotting a Bar chart to show total quantity of each product type

store %>% 
  group_by(product_type) %>% 
  summarise(total_quantity = sum(quantity_demanded)) %>% 
  ggplot(aes(x=product_type, y= total_quantity))+ 
  geom_col(width=0.6, fill="lightsalmon1")+
  labs(title="Products vs total quantity", subtitle='Bar chart showing total quantity demanded for each product type')+
  xlab("Product type")+ 
  ylab("Total quantity")+ 
  theme(text=element_text(size=12)) +
  theme(panel.background = element_blank(),plot.title = element_text( size=16))+
  theme(axis.text.x = element_text(angle = 45 , vjust = 1 , hjust= 1 )) 
        
 
# Hygienic Products  

hygiene_pdt <- filter(store_df, product_type=='Hygiene')
View(hygiene_pdt)

# Plotting a bar chart for Hygiene products

ggplot(hygiene_pdt, aes(x=product_category, y=net_profit)) + 
  geom_col(width=0.6, fill='turquoise3') +
  labs(title='Net profit for different hygienic products') + 
  xlab('Hygiene Products') + 
  ylab(' Total Net Profit') +
  theme(panel.background = element_blank(),plot.title = element_text( size=16))

# Selling Price VS Cost price

ggplot(store_df, aes(x=cost_price, y=selling_price, color=product_type)) + 
  geom_jitter(alpha=0.5)+
  labs(title='Cost Price VS Selling Price', subtitle='Scatterplot showing relation between cost price and selling price') +
  xlab('Cost price') + 
  ylab('Selling Price') + 
  annotate("text", x = 730, y = 1200,size=3.5 ,label = "This Beverage product is an outlier") +
  theme(text=element_text(size=10)) +
  theme(panel.background = element_blank(), plot.title = element_text( size=16))

# Outliers - showing the product detail of outliers (i.e. its value is much different than the rest of the data points)

(store_df %>% 
filter(cost_price >750) %>% 
  select(product_name, cost_price, selling_price, net_profit))

# Profit VS Cost price

ggplot(store_df, aes(x=cost_price, y=profit)) + 
  geom_jitter(alpha=0.5) +
  geom_smooth(method="lm", se=F) +
  labs(title='Cost Price VS Profit', subtitle='Scatterplot showing relation between cost price and profit') +
  xlab('Cost price') + ylab('Profit') +
  theme(text=element_text(size=10)) +
  theme(panel.background = element_blank(), plot.title = element_text( size=16))

#Profit VS Ratings

ggplot(rating_df, aes(x=ratings, y=profit, size=net_profit, color=product_category)) + 
  geom_jitter(alpha=0.5) +
  labs(title='Profit VS Ratings', subtitle='Scatterplot showing relation between profit and ratings') +
  xlab('Ratings') + ylab('Profit') +
  theme(text=element_text(size=10)) +
  theme(panel.background = element_blank(), plot.title = element_text( size=16))


# Profit vs Quantity demanded

ggplot(store_df, aes(x=quantity_demanded, y=profit, color=product_type, size=net_profit)) + 
  geom_jitter(alpha=0.5)+
  labs(title='Profit VS Quantity Demanded', subtitle='Scatterplot showing relation between profit and quantity demanded for each product type') +
  xlab('Quantity demanded') + 
  ylab('Profit') +
  theme(text=element_text(size=10)) +
  theme(panel.background = element_blank(), plot.title = element_text( size=16)) +
  theme(axis.text.x = element_text(angle = 0 , vjust = 1 , hjust= 1 ))

# Profits of different companies

store_df %>% 
  ggplot(aes(x=company, y=net_profit, fill= product_type))+ 
  geom_col(width=0.5) +
  labs(title="Companies and their Total Net Profit", subtitle='Stacked bar chart showing the different types of products sold by each company and their total net profit') + 
  xlab("Company") + 
  ylab("Net Profit")+
  theme(panel.background = element_blank(), plot.title = element_text( size=16))

# Correlation between ratings and quantity demanded


cor(rating_df $ ratings, rating_df $ quantity_demanded)

# Correlation plot between Ratings and Quantity demanded

plot(rating_df $ ratings, rating_df $ quantity_demanded, pch=21,
     xlab='Ratings', 
     ylab='Quantity Demanded',
     bg='coral',
     cex=3)
title('Correlation plot between Ratings and Quantity Demanded')

# Correlation between ratings and selling price

cor(rating_df $ ratings, rating_df $ selling_price)

# Correlation plot between Ratings and sSelling price

plot(rating_df $ ratings, rating_df $ selling_price, pch=21,
     xlab='Ratings', 
     ylab='Selling Price',
     bg='coral',
     cex=3)
title('Correlation plot between Ratings and Selling Price')

# Correlation between ratings and cost price
cor(rating_df $ ratings, rating_df $ cost_price)

# Correlation plot between Ratings and Cost price

plot(rating_df $ ratings, rating_df $ cost_price, pch=21,
    xlab='Ratings', 
    ylab='Cost Price',
    bg='coral',
    cex=3)
title('Correlation plot between Ratings and Cost Price')


# Correlation Test
# Pearson's Correlation

cor.test(rating_df $ ratings, rating_df $ profit)

# Correlation matrix
store3 <- dplyr::select_if(store_df, is.numeric)
r <- cor(store3,use="complete.obs")
round(r,2)

# Correlation matrix- heatmap

ggcorrplot(r,
           title= 'Correlation matrix heatmap')

# The sorted lower triangle

ggcorrplot(r, 
           hc.order = TRUE,
           type = "lower",
           lab = TRUE,
           title='The Sorted Lower Triangle')