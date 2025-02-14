# Healthcare Data Analysis using SQL and Power BI

**Dashboard ->** [here](https://app.powerbi.com/view?r=eyJrIjoiNDgyMDdhOTQtODRhZi00OTU4LThhNmItMTkxYmVlMGJjMDFkIiwidCI6IjI1Y2UwMjYxLWJiZDYtNDljZC1hMWUyLTU0MjYwODg2ZDE1OSJ9)

| Contents 											 	   	|
| -------- 											 	   	|
| [Project Description](#Project-Description)			   	|
| [Data Preparation](#Data-Preparation) 		   		|
| [Key Features](#Key-Features) 		   		|
| [Project Goals](#Project-Goals)							|
| [Data Insights](#Data-Insights)					   		|
| [Conclusion](#Conclusion)						   	|

## Project Description

This project analyzes the financial performance of a healthcare center, focusing on key KPIs: Billing Amount, Insurance Covered, Medication Cost, Room Charges, Treatment Cost, and Out-of-Pocket expenses. The goal is to offer actionable insights that can help improve financial efficiency.

## Data Preparation

With a quick overview on the data found that cities table with wrong data as each city present in each state (such as London must be in England only not in Weels or Scottland also) like this

![Cities Problem](https://github.com/user-attachments/assets/012d54a0-7ede-4cc2-a902-13e9b13f3729)

So i handeled this with SQL as following [Cleaning dim_cities](https://github.com/Ahmed-Nasar/Healthcare-Financial-Analysis/blob/main/Cleaning%20dim_cities.sql)

![Cleaning](https://github.com/user-attachments/assets/54fbd2af-07fb-4e76-a15c-bebe98320943)

After that we should replace all citiy_id with only the right ones in Patients table so i did that with a dax function in power query which is :

![City id](https://github.com/user-attachments/assets/e163d52c-0045-4d0e-a3e3-8b66b96d12ed)


-- Now we get a `new-cities-table` with only 10 row and a `new-patients-table` with only the correct id

-- Other handling of the was with null value such as in Insurance Coverage => 0 and so on.


## Key Features

- **Financial Overview:** Total billing amount (£3.36M) and average billing costs across various categories such as treatment, medication, insurance, and room charges.
- **Procedure Billing Analysis:** Insights into the billing amounts by medical procedures (e.g., X-Ray, CT Scan, MRI Scan) and diagnosis categories (e.g., Hypertension, Asthma, Appendicitis).
- **Provider Performance:** Breakdown of visits by department (e.g., Cardiology, General Surgery, Orthopedics) and visit type.
- **Billing by Department:** Explore billing trends across various departments like Cardiology, Orthopedics, Neurology, and General Surgery.

## Project Goals

- **Optimize Financial Efficiency:** Identify high-cost procedures and departments to improve resource allocation and cost control.
- **Gain Insights into Treatment Costs:** Provide a detailed breakdown of treatment and medication costs to guide pricing strategies and financial management.

## Data Insights

- **`Total Billing Amount`:** £3.36M
- **`Total Medication Cost`:** £546.04K
- **`Total Treatment Cost`:** £2.63M
- **`Total Insurance`:** £2.23M
- **`Top Billing Procedure`:** X-Ray (£1.05M)
- **`Top Diagnosis by Billing`:** Hypertension (39.58%)
- **`Top Department by Billing`:** Cardiology (25.24%)
- **`Top Department by Visits`:** Cardiology (1,281 total visits)
- **`Top Department by Emergency Visits`:** Orthopedics (509 total visits)

## Conclusion

This healthcare data analytics project offers key insights into financial performance and patient data. These findings can be leveraged to make data-driven decisions that improve cost management, patient care, and operational performance in the healthcare sector.

---
