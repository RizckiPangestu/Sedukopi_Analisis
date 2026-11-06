## Background
In the highly competitive Food and Beverage (F&B) industry, data-driven decision-making is key to maintaining profitability and sustainable business growth. Sedukopi, as a rapidly expanding coffee shop chain, manages a wide variety of menu options.

As the number of daily transactions increases, the collected data actually holds a great deal of hidden potential. If analyzed more deeply, this sales and operational data can help Sedukopi’s management to:
- Identify which menu items are truly profitable for the company.
- Design targeted promotions based on customer habits.

## Problem Statement
Currently, Sedukopi’s management is facing three real challenges on the ground:
1. The CEO suspects an imbalance in menu performance, where some items have high sales volume but generate thin margins, while there may be “hidden gems” (high-margin items) that are underpromoted.
2. The marketing team plans to launch bundling packages to increase the average order value (AOV), but lacks a data foundation regarding which item combinations customers actually order together most frequently.

This portfolio project aims to answer two key questions:
1. Which menu items are bestsellers but have low profit margins, and which “hidden gem” menu items should be promoted immediately?
2. Which menu item pairings are the most promising for bundling?

## Data
To answer the questions above, this project uses a sales dataset from Sedukopi covering the period from 2022 to 2025. This dataset includes transaction data, order details, menu items, store information, and employee information. The data will be analyzed using the Menu Engineering (Boston Matrix) approach and cross-selling analysis.

### Matrix Boston
This model is used to classify the performance of each menu item based on two factors: popularity (sales volume) and profitability (profit margin). Menu items will be divided into 4 categories:
Star: High sales and high margins. These are the best-selling, flagship menu items that are highly profitable.
Plowhorse: High sales, but low margins. Items that customers like and order frequently, but the profit per serving is slim.
Puzzle: Low sales but high margins. These are “hidden gems”—items that are highly profitable but rarely purchased (they need more promotion).
Dog: Low sales and low margins. These are unpopular items that do not generate significant profit.

### Cross Selling
Used to identify customer purchasing patterns in order to create bundled packages. The method involves identifying which items appear in the same shopping cart by matching order details against the order itself (self-join).

### Relevant columns from the dataset used for this analysis include:
- Order ID: The unique ID for each shopping cart
- Quantity: The number of products sold
- Price: The selling price of the product
- Cost: The cost of goods sold

By combining this data, we can develop more targeted business strategies, such as determining which menu items need a promotional boost and designing the most sensible bundling packages.

## Conclusion:

The Coffee category serves as the primary driver of sales volume, while the Food category is the largest contributor to profit. This indicates that coffee products have lower profit margins than food items.

There is a significant difference between a product’s popularity and its contribution to profit:

1. Top 3 Best-Sellers: Matcha Espresso Fusion, Cheesecake Slice, and Butter Croissant.
2. Top 3 Most Profitable: Club Sandwich, Almond Croissant, and French Toast.

## Insight:
Based on these findings, menu performance can be classified into three main segments:
1. High Volume & Low Margin: Matcha Espresso Fusion, Cheesecake Slice, Soda Gembira, Macchiato, and Taro Latte.
2. Hidden Gems (High Margin & Low Volume): French Toast, Spaghetti Carbonara, Caesar Salad, Javanese Fried Noodles, and Tuna Sandwich.
3. Low Volume & Low Profit: Earl Grey, Chocolate Chip Cookies, Cinnamon Roll, Matcha Latte, and Vanilla Cream Puffs.

## Recommendations
To maximize revenue and operational efficiency, the strategic steps that need to be taken are:
1. Use a “Lure Menu” Strategy: Maintain the quality of high-volume menu items, as they serve as customer traffic drivers. Use these popular items as a lure in promotional packages to promote other menu items.
2. Aggressive Promotion & Cross-Selling for “Hidden Gems”: These menu items are the key to multiplying the company’s profits. Instruct cashiers to actively offer these items and implement the following transaction-data-driven bundling strategies:
    - Pair French Toast with a Strawberry Smoothie / Caesar Salad / Avocado Shake.
    - Spaghetti Carbonara paired with a Club Sandwich / Iced Latte / Piccolo.
    - Caesar Salad paired with French Toast / Chicken Sandwich / Javanese Fried Noodles.
    - Javanese Fried Noodles paired with a Cappuccino / Caramel Macchiato / Piccolo.
    - Tuna Sandwich paired with Spaghetti Aglio Olio / Special Fried Rice / Mocha.
3. Evaluate Low-Performing Menu Items: Temporarily suspend menu items with low volume and profit to optimize raw material costs and reduce potential losses.
