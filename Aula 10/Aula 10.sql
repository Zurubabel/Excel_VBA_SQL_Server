SELECT
	PC.Name as NomeCategoria,
	P.Name as NomeProduto,
	[ProductID]
	,ProductModelID
    ,[ProductNumber]
    ,[StandardCost]
    ,[ListPrice]
FROM
	Production.Product P INNER JOIN Production.ProductSubcategory PSC 
		ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
	INNER JOIN Production.ProductCategory PC ON PSC.ProductCategoryID = PC.ProductCategoryID
