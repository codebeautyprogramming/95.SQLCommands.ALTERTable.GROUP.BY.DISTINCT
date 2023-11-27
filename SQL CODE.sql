-- selecting database 
use CookBookDB

-- changing Ingredients table, setting column "Name" to be unique, meaning that from this point on
-- we can not insert multiple Ingredients with same Name
alter table Ingredients
add constraint UQ_Ingredient_Name unique (Name)

-- testing if we can insert multiple Ingredients with same Name
insert into Ingredients (Name, Weight, KcalPer100g, PricePer100g, Type)
values
('sugar', 300, 400, 0.3, 'sweetener'),
('sugar', 300, 400, 0.3, 'sweetener')

-- retreiving all records from table Ingredients
select * from Ingredients

-- retreiving all unique Ingredients, meaning if there are multiple Ingredients with same name, only 
-- one record will be returned
select distinct Name
from Ingredients

-- this query retrieves the names of Ingredients and the count of how many times each 
-- ingredient appears in a list. Thanks to "group by" clause, if there are multiple Ingredients
-- with same name, that Ingredient will be shown only once, but count will tell us how many 
-- instances of that Ingredient there really is
select Name, count(*)
from Ingredients
group by Name

-- deleting Ingredient with specified Id
delete from Ingredients
where Id=7 or Id=1056

-- retreiving all records from table Ingredients with specified Name
select *
from Ingredients
where Name='sugar' or Name='potato'