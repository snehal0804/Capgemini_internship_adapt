alter session set current_schema = mt_toy;
SET heading OFF

SELECT TOY_NAME FROM TOY
WHERE TOY_ID IN
(SELECT TOY_ID FROM TOY_RENTAL
WHERE STATUS =  'Received' AND CUSTOMER_ID IN
(SELECT CUSTOMER_ID FROM CUSTOMER
WHERE CITY = 'Bangalore'));