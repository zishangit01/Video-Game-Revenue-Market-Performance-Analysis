# 🎮 Video Game Revenue & Market Performance Analysis

## 📌 Domain
Gaming Industry Analytics | Revenue Intelligence | Market Strategy

---

## 🧩 Business Problem

The global video game industry generates billions in revenue, but performance is uneven across:

- Genres  
- Platforms  
- Publishers  
- Regions  
- User Engagement Levels  

Companies need data-driven insights to answer:

- Which genres generate the highest revenue?
- Which platforms dominate the market?
- Do higher-rated games generate more sales?
- Does wishlist demand convert into revenue?
- Is the market competitive or highly concentrated?
- How do publishers perform across regions?

This project provides a structured analytical solution to support strategic decisions in product, marketing, and competitive positioning.

---

## 📊 Datasets Used

### 1️⃣ games.csv (Engagement Dataset)
- Title
- Genre
- Rating
- Wishlist
- Backlogs
- Plays
- Release Date
- Platform
- Team

### 2️⃣ vgsales.csv (Sales Dataset)
- Name
- Platform
- Year
- Genre
- Publisher
- NA_Sales
- EU_Sales
- JP_Sales
- Global_Sales

---

## ⚙️ End-to-End Workflow

### 🔹 Step 1: Python – Data Cleaning & Merging

Performed:

- Duplicate removal
- Missing value handling
- Rating standardization
- Date conversion & formatting
- Genre & platform normalization
- Encoding corrections
- Dataset merging (Sales + Engagement)

Output:
- Clean, merged analytical dataset ready for SQL modeling

Tool Used:
- Python (Pandas)

---

### 🔹 Step 2: SQL – Data Modeling & Analytical Views

Built structured database and created business-ready views.

### Key SQL Views Created:

- vw_genre_revenue
- vw_platform_revenue
- vw_yearly_revenue
- vw_rating_vs_revenue
- vw_revenue_by_genre
- vw_revenue_by_platform
- vw_platform_genre_matrix
- vw_revenue_trend
- vw_top_publishers
- vw_regional_sales

Purpose:
- Clean aggregation logic
- KPI validation
- Structured reporting layer
- Reusable business views

Tool Used:
- MySQL

---

### 🔹 Step 3: Power BI – Interactive Business Dashboards

Developed 3 analytical dashboards:

---

# 📈 1️⃣ Business Overview Dashboard

### KPIs:
- ~2,000 Total Games
- ~$3 Billion Global Revenue
- 3.67 Average User Rating

### Key Insights:
- Revenue peaked between 2006–2012
- Wii, PS3, and Xbox 360 dominated revenue
- Action genre generates highest revenue

Business Meaning:
Platform lifecycle and genre strategy strongly impact financial performance.

---

# 📊 2️⃣ User Engagement & Strategy Dashboard

### Visual Analysis:
- Regional Revenue by Genre
- Rating vs Revenue vs Wishlist (Bubble Analysis)
- Platform × Genre Heatmap
- Top Games by Wishlist

### Key Findings:
- North America drives the highest revenue
- High rating does not guarantee high sales
- Wishlist demand correlates strongly with revenue
- Certain platform–genre combinations outperform others

Business Meaning:
Demand signals and marketing strength influence revenue more than ratings alone.

---

# 🏢 3️⃣ Market & Competitive Landscape Dashboard

### KPIs:
- Top 5 Publishers control 68.3% of total revenue
- 733 games have rating ≥ 4

### Insights:
- Market is highly concentrated
- Ubisoft & Warner Bros dominate revenue
- Revenue heavily driven by North America
- Entry barriers are high due to publisher dominance

Business Meaning:
New entrants must target niche genres or underserved regions.

---

## 📌 Strategic Business Outcomes

✔ Revenue is concentrated across few genres and platforms  
✔ Demand (wishlist) impacts revenue more than rating  
✔ Market is dominated by top publishers  
✔ Platform lifecycle affects revenue performance  
✔ Regional strategy is critical for global success  

---

## 🛠 Tools & Technologies

- Python (Pandas)
- MySQL
- Power BI
- Excel

---

## 📦 Project Deliverables

- Cleaned Dataset (CSV)
- Python Data Cleaning Notebook (.ipynb)
- SQL Analytical Views Script (.sql)
- Power BI Dashboard (.pbix)
- Business Report (PDF)

---

## 🎯 Final Conclusion

This project transforms raw gaming sales and engagement data into structured business intelligence.

It helps decision-makers:

- Identify revenue drivers
- Detect demand patterns
- Evaluate competitive concentration
- Optimize genre and platform investment
- Improve market positioning strategies

This end-to-end analytical pipeline demonstrates how integrated data modeling and visualization can support strategic business decisions.
