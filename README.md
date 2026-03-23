# 🎬 What Drives the Success of K-Dramas? A Data Analysis (2010–2025)

A complete data analysis project exploring the key factors that influence K-drama success, including genre trends, platform performance, and production growth over 15 years.

🔗 **[View Interactive Dashboard](https://lookerstudio.google.com/reporting/1c41e24e-d2db-48e4-871d-94460013ac50)**

---

## 📌 Project Overview

This project analyzes a dataset of **1,747 K-dramas** to answer the following questions:

- Which genres are the most popular?
- Do dramas with more watchers get better scores?
- Which streaming platform has the highest-rated content?
- Has K-drama production grown over the years?
- Which actors and directors appear most frequently?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python (Pandas)** | Data cleaning and preprocessing |
| **Google BigQuery** | Data storage and SQL analysis |
| **SQL** | Querying and transforming data |
| **Looker Studio** | Interactive dashboard and visualization |
| **GitHub** | Version control and portfolio |

---

## 📁 Project Structure

```
kdrama-analysis/
│
├── 📄 README.md                     ← Project documentation
├── 📄 kdrama_queries.sql            ← All SQL queries
└── 📄 Kdrama_Analysis_Dashboard.pdf ← Dashboard export
```

---

## 🔍 Key Findings

### 🎭 Genre Trends
- **Romance** dominates with 1,153 appearances, followed by Drama (939) and Comedy (718)
- The top 3 genres have remained consistent from 2015 to 2025

### 📈 Production Growth
- K-drama production nearly **doubled** between 2015 (79 dramas) and 2022 (181 dramas)
- 2022 was the **peak production year**, likely driven by the global expansion of streaming platforms
- Average scores have steadily improved from **7.52 in 2015 to 7.84 in 2025**

### 👥 Watchers vs Score
- Dramas with **100k+ watchers** average a score of **8.45**
- Dramas with **less than 10k watchers** average only **7.26**
- This confirms a strong positive correlation between popularity and perceived quality

### 📺 Platform Performance
- **Disney+ Hotstar** leads in average score (8.15) among major platforms
- **Netflix** has the largest catalog with 522 dramas but ranks lower in average score (8.01)
- Smaller, more curated platforms tend to score higher on average

### 🎭 Top Talent
- **Namkoong Min** is the most prolific actor with 19 drama appearances
- **Shin Won Ho** leads directors with an average score of 8.75 across 6 dramas
- **Kim Won Suk** is the most consistent director with 10 dramas averaging 8.43

---

## 📊 Dashboard Preview

![Dashboard Preview](assets/dashboard_preview.png)

🔗 **[Explore the full interactive dashboard here](https://lookerstudio.google.com/reporting/1c41e24e-d2db-48e4-871d-94460013ac50)**

---

## 🗄️ Dataset

- **Source:** [Kaggle](https://www.kaggle.com)
- **Records:** 1,747 K-dramas
- **Period:** 2010 – 2025
- **Fields:** title, genres, cast, directors, score, watchers, voters, year, platform, episodes, duration, and more

---

## 💡 SQL Highlights

This project uses intermediate to advanced SQL concepts including:

- `GROUP BY` and `HAVING` for aggregations
- `UNNEST` and `SPLIT` for handling multi-value fields (genres, cast, platforms)
- `CASE WHEN` for creating custom categories
- `AVG`, `COUNT`, `ROUND` for statistical analysis
- BigQuery **Views** for clean, reusable data sources

---

## 👩‍💻 About

Project developed as part of a data analytics portfolio.
Feel free to connect on [LinkedIn](#) or explore more projects on [GitHub](#).
