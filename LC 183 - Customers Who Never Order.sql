select c.name as "Customers" from Customers c left join 
orders o on c.id=o.customerID where o.id is null;
