SELECT [City_ID]
      ,[City]
      ,[State]
  FROM [HealthCare_Cleaning].[dbo].[cities]
  ORDER BY City_ID;
  -- Every Cit present in each sate which is wrong (London must be at England only and so on)


  DELETE FROM cities
  WHERE State NOT IN ('Scotland','England');




  SELECT[City_ID]
      ,[City]
      ,[State]
  FROM [HealthCare_Cleaning].[dbo].[cities]
  where state ='England'
  ORDER BY City_ID;


    SELECT[City_ID]
      ,[City]
      ,[State]
  FROM [HealthCare_Cleaning].[dbo].[cities]
  where state ='Scotland'
  ORDER BY City_ID;


  DELETE FROM cities
  WHERE City_ID IN (9,13);

   DELETE FROM cities
  WHERE City_ID Not IN (11,15) and State= 'Scotland';

  -- all cities are cleaned now (10 City with 2 Sates)