SELECT
	PC.Name as NomeCategoria,
	SUM(P.StandardCost) as SomaSC
FROM
	Production.Product P INNER JOIN Production.ProductSubcategory PSC 
		ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
	INNER JOIN Production.ProductCategory PC ON PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY
	PC.Name