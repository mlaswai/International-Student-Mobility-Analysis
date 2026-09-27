# International Student Mobility Analysis

## Destination Market Intelligence | 2013–2023

An end-to-end data analytics project analysing international student mobility across selected destination markets using **Excel, MySQL and Power BI**.

The project was built to answer practical business questions around destination-market scale, historical growth, year-over-year movement and market-level differences.

---

## Business Objective

For an overseas education consultancy, destination-market data can help understand:

- Which destination markets have the largest annual student volumes?
- How have selected markets changed between 2013 and 2023?
- Which markets recorded the strongest long-term growth?
- Which markets experienced contraction?
- What does year-over-year movement reveal that a simple 10-year comparison does not?
- How can these findings be presented through an interactive management dashboard?

---

## Project Scope

### Selected destination markets

- Australia
- Canada
- France
- Germany
- Ireland
- Japan
- Netherlands
- New Zealand
- United Kingdom
- United States

### Analysis period

**2013–2023**

### Data source

**OECD Education Statistics / OECD Data Explorer**

The project uses selected destination-market observations from the OECD education statistics environment.

> **Important:** The analysis covers selected destination markets rather than every destination globally. Annual observations should not be interpreted as unique students accumulated across multiple years.

---

## Technology Stack

| Tool | Purpose |
|---|---|
| Excel | Data inspection, preparation and structured import |
| MySQL | Database creation, validation, SQL analysis and business insights |
| Power BI | Interactive dashboard, market comparison and country deep dive |
| GitHub | Portfolio documentation and project versioning |

---

## Project Architecture

```text
OECD Official Data
        ↓
Excel
(Data inspection & preparation)
        ↓
MySQL
(Database + validation + analysis)
        ↓
Power BI
(Interactive dashboard)
        ↓
Strategic Insights
(Business interpretation)
        ↓
GitHub Portfolio
```

---

## Repository Structure

```text
International_Student_Mobility_Analysis/
│
├── Data/
│   ├── International_Student_Mobility_Analysis.xlsx
│   └── OECD_EDU...xlsx
│
├── SQL/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_market_analysis.sql
│   └── 04_business_insights.sql
│
├── Power BI/
│   └── International Student Mobility.pbix
│
├── Screenshots/
│   ├── Overview.png
│   ├── Destination Market Analysis.png
│   ├── Country Deep Dive.png
│   └── Strategic Insights.png
│
├── Insights/
│   └── strategic_insights.pdf
│
└── README.md
```

---

# Dashboard Pages

## 1. Overview

The Overview page provides the high-level market picture.

### Key components

- Number of selected destinations
- Years analysed
- Average annual student observations
- 2023 student observations
- 2023 destination market map
- Destination market comparison
- 2013–2023 market trend

### Purpose

This page is designed as the management-level entry point to the analysis.

---

## 2. Destination Market Analysis

This page compares markets across multiple dimensions.

### Key components

- 2013 vs 2023 student observations
- Long-term growth percentage
- Absolute change
- Annual market trend

### Purpose

The page separates **market scale**, **absolute change** and **percentage growth** so that markets are not evaluated using only one metric.

---

## 3. Country Deep Dive

The Country Deep Dive page allows the user to select a destination and analyse it individually.

### Interactive elements

- Country selector
- 2013 student count
- 2023 student count
- Absolute change
- Long-term growth percentage
- Annual student trend
- 2023 market position
- Market size vs long-term growth

### Example

Selecting Germany displays its individual trajectory from 2013 to 2023.

---

## 4. Strategic Insights

The final dashboard page converts the analysis into concise business observations.

Key themes include:

- Market scale
- Market scale differences
- Long-term expansion
- Market contraction
- Long-term growth comparison

---

# Key Findings

## Market Scale

In 2023, the largest annual student observations among the selected destinations were:

| Destination | 2023 observations |
|---|---:|
| United States | 956,923 |
| United Kingdom | 748,461 |
| Australia | 467,074 |
| Germany | 423,197 |
| Canada | 389,181 |
| France | 276,217 |
| Japan | 181,821 |
| Netherlands | 169,459 |
| New Zealand | 36,407 |
| Ireland | 30,106 |

---

## 2013 → 2023

Across the selected destinations:

- 2013 annual observations: **2.27M**
- 2023 annual observations: **3.68M**
- Absolute increase: **1.41M**

The United Kingdom recorded the largest absolute increase among the selected destinations:

**+331,772**

---

## Long-Term Growth

Selected long-term growth results:

| Destination | Growth |
|---|---:|
| Netherlands | +165.66% |
| Canada | +157.32% |
| Ireland | +134.09% |
| Germany | +115.24% |
| Australia | +86.93% |
| United Kingdom | +79.62% |
| Japan | +33.89% |
| United States | +23.93% |
| France | +20.81% |
| New Zealand | -11.72% |

The Netherlands recorded the highest percentage growth in this selected dataset, while New Zealand was the only destination with negative 2013–2023 growth.

---

## Year-over-Year Analysis

SQL `LAG()` analysis was used to compare each year with the previous year.

### Highest YoY growth

**New Zealand — 2023: +43.39%**

### Largest YoY decline

**New Zealand — 2021: -29.86%**

This demonstrates why annual movement and long-term movement should be analysed separately.

---

# SQL Analysis

The SQL layer includes:

### Data setup

- Database creation
- Table creation
- Data loading

### Validation

- Row-count validation
- Distinct-country validation
- Distinct-year validation
- Missing-value checks
- Sample-record checks

### Market analysis

- Average student observations by destination
- Maximum and minimum values
- Market segmentation
- 2013 vs 2023 comparison
- Absolute change
- Long-term growth percentage
- `LAG()` year-over-year analysis
- Highest YoY growth
- Largest YoY decline
- Destination-market analytical view

### Business insights

Queries were separated into a dedicated SQL file so the analytical logic is reproducible and easy to review.

---

# Power BI Data Model

The Power BI model connects:

```text
Student_Mobility
       │
       │ Country
       ↓
Destination_Market_Analysis
```

The relationship used is:

**Many-to-one (*:1)**

with `Country` acting as the connecting field.

---

# Important Measures

Examples of measures created in Power BI include:

```DAX
Total Mobile Students =
SUM(Student_Mobility[Mobile_Students])
```

```DAX
Average Annual Students =
AVERAGE(Student_Mobility[Mobile_Students])
```

```DAX
Number of Destinations =
DISTINCTCOUNT(Student_Mobility[Country])
```

```DAX
Years Analyzed =
DISTINCTCOUNT(Student_Mobility[Year])
```

```DAX
Students in 2023 =
CALCULATE(
    SUM(Student_Mobility[Mobile_Students]),
    Student_Mobility[Year] = 2023
)
```

---

# Business Interpretation

The project demonstrates an important distinction between:

### Market size

How large the destination market is in a particular year.

### Absolute change

How many additional annual student observations were recorded between two years.

### Percentage growth

How large the change is relative to the market's starting point.

### Year-over-year growth

How the market moved compared with the immediately preceding year.

Using these measures together provides a more complete view than relying on a single ranking.

---

# Limitations

- The dataset covers ten selected destination markets.
- The analysis period is 2013–2023.
- Annual observations are not unique students accumulated over multiple years.
- Historical association does not establish causation.
- The project is descriptive and does not forecast future student mobility.
- Latest-year figures may be subject to source revisions.

---

# Project Outcome

This project demonstrates an end-to-end analytics workflow:

**Official data → Excel → MySQL → SQL analysis → Power BI → Strategic Insights**

It combines technical data skills with business interpretation and dashboard storytelling.

---

## Author

**Mohit Kumar**

Strategy & Business Analytics | Data Analysis | Power BI | SQL | Excel

