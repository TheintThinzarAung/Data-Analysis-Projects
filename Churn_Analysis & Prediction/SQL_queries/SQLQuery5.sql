Create View vw_ChurnData as
	Select * from prod_churn where Customer_Status In ('Churned','Stayed')

Create view vw_JoinData as
	 Select * from prod_churn where Customer_Status = 'Joined'

	 select * from prediction_Churn
	 ;

select count(customer_id) from prediction_churn