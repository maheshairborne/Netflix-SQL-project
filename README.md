# 🎬 Netflix SQL Data Analysis

## 📌 Project Overview

This project explores the Netflix Titles dataset using SQL to analyze content distribution, release trends, ratings, directors, and countries. The project demonstrates fundamental and intermediate SQL concepts through real-world business questions.

---

## 📂 Dataset

- **Dataset:** Netflix Titles Dataset
- **Source:** Kaggle
- **Records:** ~8,800+ titles
- **Format:** CSV

The dataset contains information about Netflix Movies and TV Shows, including:

- Show ID
- Type
- Title
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Genre
- Description

---

## 🛠️ Tools Used

- MySQL Workbench
- SQL
- Git & GitHub

---

## 🧹 Data Cleaning

Before performing the analysis:

- Imported the CSV dataset into MySQL.
- Checked for missing values.
- Excluded NULL directors where required.
- Excluded NULL countries for country-based analysis.
- Verified the dataset before running analytical queries.

---

## 📚 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- COUNT()
- LIKE
- LIMIT
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`)

---

## 📊 Business Questions Answered

### 1. Count the total number of Movies.

### 2. Find Movies released after 2020.

### 3. Retrieve all Horror Movies.

### 4. Count the number of titles available in each country.

### 5. Find the Top 10 directors with the highest number of titles.

### 6. Compare the total number of Movies and TV Shows.

### 7. Identify the most common content ratings.

### 8. Analyze the number of releases by year.

### 9. Find the Top 5 countries with the most Netflix content.

### 10. Identify the oldest movie available in the dataset.

### 11. Find one movie from each release year using a Common Table Expression (CTE) and Window Function.

### 12. Analyze the growth of Netflix genres over the years (2015 onwards).

### 13. Track the yearly growth of Drama content on Netflix.

### 14. Find the Top countries contributing the most Netflix titles.

### 15. Calculate the percentage of Netflix titles produced by the United States and Japan combined.

---

## 📈 Key Insights

- Movies make up a larger portion of the Netflix catalog than TV Shows.
- Some countries contribute significantly more content than others.
- Netflix's content library has grown considerably over recent years.
- Certain ratings appear much more frequently than others.
- A small number of directors are responsible for multiple Netflix titles.

---

## 📁 Project Structure

```
Netflix-SQL-Analysis/
│
├── dataset/
│   └── netflix_titles.csv
│
├── sql/
│   └── netflix_analysis.sql
│
├── screenshots/
│   ├── top_directors.png
│   ├── movies_vs_tvshows.png
│   ├── country_analysis.png
│   ├── ratings.png
│   └── yearly_releases.png
│
└── README.md
```

---

## 🚀 Skills Demonstrated

- Data Exploration
- SQL Query Writing
- Data Filtering
- Aggregation
- Business Data Analysis
- Common Table Expressions (CTEs)
- Window Functions
- Analytical Thinking

---
