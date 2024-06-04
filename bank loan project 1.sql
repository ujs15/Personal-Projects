use project_db;
select * from financial_loan_dataset;

# KPI
select count(id) as Total_Loan_Application from financial_loan_dataset;
select sum(loan_amount) as Total_Amount_Funded from financial_loan_dataset;
select sum(total_payment) as Total_Amount_Recived from financial_loan_dataset;
select round ( avg(int_rate) , 2) * 100 Average_interset_rate from financial_loan_dataset;
select round ( avg(dti) , 2) * 100 Average_dti from financial_loan_dataset;

# Good Loan KPI's 
select round(count(case when loan_status = "Fully Paid" or loan_status= "current" then id end) / count(id),2) * 100 as
 Good_loan_application_percentage from financial_loan_dataset;
select count(case when loan_status = "Fully Paid" or loan_status= "current" then id end) as Good_loan_application from financial_loan_dataset;
select sum(case when loan_status = "Fully Paid" or loan_status= "current" then loan_amount end) as Good_loan_Funded from financial_loan_dataset;
select sum(case when loan_status = "Fully Paid" or loan_status= "current" then total_payment end) as Good_loan_recived from financial_loan_dataset;

# Bad Loan KPI's
select round(count(case when loan_status = "charged off" then id end) / count(id),2) * 100 as
Bad_loan_application_percentage from financial_loan_dataset;
select count(case when loan_status = "charged off" then id end) as Bad_loan_application from financial_loan_dataset;
select sum(case when loan_status = "charged off" then loan_amount end) as Bad_loan_Funded from financial_loan_dataset;
select sum(case when loan_status = "charged off" then total_payment end) as Bad_loan_recived from financial_loan_dataset;