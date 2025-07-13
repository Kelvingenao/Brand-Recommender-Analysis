# 📈 Brand Recommendation Analysis with SQL and Power BI

This simulated project analyzes brand recommendation behavior within an e-commerce environment. The goal is to identify consumption patterns by day type (holiday/non-holiday) and gender, and to suggest strategies that brands can adapt—alongside their analytics teams—to improve sales and customer experience.

---

## 🛠 Tools Used

- **SQL:** Data extraction, cleaning, and transformation.
- **Power BI:** Interactive data visualization and descriptive analysis.

---

## 🗂 Project Structure

### 1. `Data Normalization & Setup`
Dataset preparation, cleaning, handling of null values, and structuring to ensure data quality and consistency throughout the analysis.

### 2. `Query`
SQL queries focused on:
- Recommendation probability by brand.
- Behavior across holidays and non-holidays.
- Gender differences.
- Price of most recommended products.

### 3. `Data Project (data_proyect)`
Main processed dataset containing:
- Brand
- Recommendation probability
- Customer gender
- Price
- Day type (holiday or non-holiday)

### 4. `Insights`

#### 🔝 Brands with the Highest Recommendation Probability (1.0):
- PUMA  
- Lee  
- Head Hunters  
- Johnson & Johnson  
- Wakefit  
- Himalaya Liv.52  
- Manyavar Mohey  
- Pepperfry  
- Lee Cooper  
- Flying Machine  
- SleepyCat  
- Streax  
- Lakme Ayurveda  
- Forest Essentials  
- Pepe Jeans London  

#### 📅 Comparison by Day Type:

**Holidays:**
- Godrej Interio (10000, 1.0)  
- Manyavar Mohey (10000, 1.0)  
- Allen Solly Woman (10000, 0.9)  
- Dettol (10000, 1.0)  

**Non-Holidays:**
- Pepe Jeans London (10000, 1.0)  
- Lee Cooper (10000, 0.5)  
- AmazonBasics (10000, 0.4)  

#### 👩‍🦰👨 Average Recommendation by Gender:

| Day Type       | Female   | Male     |
|----------------|----------|----------|
| Overall        | 0.63125  | 0.72944  |
| Holidays       | 0.60298  | 0.70658  |
| Non-Holidays   | 0.65167  | 0.74489  |

---

## 📊 Power BI Visualization

- Distribution of recommendation probability by brand.
- Comparison between holidays and non-holidays.
- Purchase behavior analysis by gender.
- Relationship between product price and recommendation probability.

---

## 💡 Conclusions

- **Successful strategies on holidays** can be replicated on non-holidays by brands like Godrej Interio or Dettol.
- **Men show higher recommendation probability**, but **women tend to purchase more**, suggesting a possible gap in user experience.
- Underperforming brands during holidays (Lee Cooper, AmazonBasics) may improve through targeted promotions or campaigns.
- Highly recommended products during holidays tend to have **higher prices (10000)**.

---

## 🚀 General Strategy Proposal

See the file [`estrategia_general.md`](estrategia_general.md) for a general strategy based on this analysis, which brands can adapt using their own data.

---

## 📝 Final Note

This is an educational project using simulated data. The ideas proposed here can be refined in a real-world scenario by incorporating additional variables such as age, region, purchase frequency, etc.




