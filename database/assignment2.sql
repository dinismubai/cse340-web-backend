-- 1
INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password, account_type)
VALUES ('Tony', 'Stark', 'tony@stark.com', 'Iam1ronM@n', 'Client');

-- 2
UPDATE 
	public.account
SET
	account_type = 'Admin'
WHERE
	account_id = 1;

-- 3
DELETE FROM
	public.account
WHERE
	account_id = 1;

-- 4
UPDATE 
	public.inventory
SET 
	inv_description = REPLACE(inv_description, 'small interiors', 'huge interior')
WHERE
	inv_id = 10;

-- 5
SELECT 
	public.inventory.inv_make, public.inventory.inv_model, public.classification.classification_name
FROM
	public.inventory
INNER JOIN 
	public.classification
ON 
	public.inventory.classification_id = public.classification.classification_id
WHERE 
	public.classification.classification_name = 'Sport';

-- 6
UPDATE 
	public.inventory
SET 
	inv_image = REPLACE(inv_image, 'images', 'images/vehicles'),
	inv_thumbnail = REPLACE(inv_thumbnail, 'images', 'images/vehicles');

