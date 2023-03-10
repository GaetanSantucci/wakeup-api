CREATE OR REPLACE FUNCTION create_customer(json)
RETURNS VOID
LANGUAGE plpgsql AS
$$
BEGIN
	IF (SELECT EXISTS(SELECT C.email FROM "customer" as C WHERE C."email" = ($1->>'email'))) = false THEN
			INSERT INTO "customer"("email", "password", "lastname", "firstname", "address", "phone", "role", "newsletter_optin")
			VALUES(
			($1 ->> 'email')::EMAIL, 
    		($1 ->> 'password')::TEXT,
    		($1 ->> 'lastname')::TEXT, 
    		($1 ->> 'firstname')::TEXT,
    		($1 ->> 'address')::JSON,
    		($1 ->> 'phone')::TEXT,
    		($1 ->> 'role')::TEXT,
			($1 ->> 'newsletter_optin')::BOOLEAN
				);
			ELSE
		RAISE NOTICE 'User already exist';
	END IF;
END;
$$;

DROP FUNCTION IF EXISTS create_customer;

--! Request to get all orders with plate quandity check by payment status and by date 
SELECT
  od.id AS order_id,
  od.customer_id,
  od.total,
  SUM(oi.quantity) AS total_quantity,
  pd.status AS payment_status
FROM
  public.order_details od
  INNER JOIN public.order_items oi ON od.id = oi.order_id
  INNER JOIN public.payment_details pd ON od.id = pd.order_id
WHERE
  od.booking_date::date = '2023-03-18'::date
  AND pd.status = 'success'
  AND (oi.addon_id IS NULL OR oi.addon_id = 0) 
GROUP BY
  od.id,
  od.customer_id,
  od.total,
  pd.status;

  --! Request to display qty of order by date ! ti display color in calendar
  SELECT 
    od.booking_date, 
    SUM(oi.quantity) AS plate_quantity, 
    COUNT(od.id) AS order_count
  FROM 
    order_details od 
    INNER JOIN order_items oi ON od.id = oi.order_id 
    INNER JOIN payment_details pd ON od.id = pd.order_id 
  WHERE 
    pd.status = 'success'
  GROUP BY 
    od.booking_date
    ORDER BY 
    od.booking_date ASC;