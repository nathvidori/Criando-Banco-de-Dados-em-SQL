SELECT * FROM [dbo].[olist_customers_dataset]

CREATE TABLE TB_ACT_OLIST_CUSTOMER
(

CUSTOMER_ID NVARCHAR(150),
CUSTOMER_UNIQUE_ID NVARCHAR(150),
CUSTOMER__ZIP_CODE_PREFIX NVARCHAR(15),
CUSTOMER_CITY NVARCHAR(100),
CUSTOMER_STATE CHAR(2)

)

INSERT INTO TB_ACT_OLIST_CUSTOMER
SELECT * FROM dbo.olist_customers_dataset

SELECT * FROM TB_ACT_OLIST_CUSTOMER



SELECT * FROM [dbo].[olist_geolocation_dataset]

CREATE TABLE TB_ACT_OLIST_GEOLOCATION
(

GEOLOCATION_ZIP_CODE_PREFIX NVARCHAR(15),
GEOLOCATION_LAT NVARCHAR(100),
GEOLOCATION_LNG NVARCHAR(100),
GEOLOCATION_CITY NVARCHAR(100),
GEOLOCATION_STATE CHAR(2)

)

INSERT INTO TB_ACT_OLIST_GEOLOCATION
SELECT * FROM [dbo].[olist_geolocation_dataset]



SELECT * FROM [dbo].[olist_order_items_dataset]

CREATE TABLE TB_ACT_OLIST_ORDER_ITEMS
(

ORDER_ID NVARCHAR(150),
ORDER_ITEM_ID INT,
PRODUCT_ID NVARCHAR(150),
SELLER_ID NVARCHAR(150),
SHIPPING_LIMIT_DATE DATETIME,
PRICE FLOAT,
FREIGHT_VALUE FLOAT

)

INSERT INTO TB_ACT_OLIST_ORDER_ITEMS
SELECT * FROM [dbo].[olist_order_items_dataset]

SELECT * FROM TB_ACT_OLIST_ORDER_ITEMS



SELECT * FROM [dbo].[olist_order_payments_dataset]

CREATE TABLE TB_ACT_OLIST_ORDER_PAYMENTS
(

ORDER_ID NVARCHAR(150),
PAYMENT_SEQUENTIAL INT,
PAYMENT_TYPE NVARCHAR(50),
PAYMENT_INSTALLMENTS INT,
PAYMENT_VALUE FLOAT

)

INSERT INTO TB_ACT_OLIST_ORDER_PAYMENTS
SELECT * FROM [dbo].[olist_order_payments_dataset]

SELECT * FROM TB_ACT_OLIST_ORDER_PAYMENTS





SELECT * FROM [dbo].[olist_order_reviews_dataset]

CREATE TABLE TB_ACT_OLIST_ORDER_REVIEWS
(

REVIEW_ID NVARCHAR(150),
ORDER_ID NVARCHAR(150),
REVIEW_SCORE INT,
REVIEW_COMMENT_TITLE NVARCHAR(150),
REVIEW_COMMENT_MESSAGE NVARCHAR(300),
REVIEW_CREATION_DATE DATETIME,
REVIEW_ANSWER_TIMESTAMP DATETIME

)

INSERT INTO TB_ACT_OLIST_ORDER_REVIEWS
SELECT * FROM [dbo].[olist_order_reviews_dataset]

SELECT * FROM TB_ACT_OLIST_ORDER_REVIEWS




SELECT * FROM [dbo].[olist_orders_dataset]

CREATE TABLE TB_ACT_OLIST_ORDERS

(

ORDER_ID NVARCHAR(200),
CUSTOMER_ID NVARCHAR(150),
ORDER_STATUS NVARCHAR(50),
ORDER_PURCHASE_TIMESTAMP DATETIME,
ORDER_APPROVED_AT DATETIME,
ORDER_DELIVERED_CARRIER_DATE DATETIME,
ORDER_DELIVERED_CUSTOMER_DATE DATETIME,
ORDER_ESTIMATED_DELIVERY_DATE DATETIME

)

INSERT INTO TB_ACT_OLIST_ORDERS
SELECT * FROM [dbo].[olist_orders_dataset]

SELECT * FROM TB_ACT_OLIST_ORDERS

UPDATE TB_ACT_OLIST_ORDERS SET ORDER_PURCHASE_TIMESTAMP = NULL
WHERE ORDER_PURCHASE_TIMESTAMP = ' '

UPDATE TB_ACT_OLIST_ORDERS SET ORDER_APPROVED_AT = NULL
WHERE ORDER_APPROVED_AT = ' '

UPDATE TB_ACT_OLIST_ORDERS SET ORDER_DELIVERED_CARRIER_DATE = NULL
WHERE ORDER_DELIVERED_CARRIER_DATE = ' '

UPDATE TB_ACT_OLIST_ORDERS SET ORDER_DELIVERED_CUSTOMER_DATE = NULL
WHERE ORDER_DELIVERED_CUSTOMER_DATE = ' '

UPDATE TB_ACT_OLIST_ORDERS SET ORDER_ESTIMATED_DELIVERY_DATE = NULL
WHERE ORDER_ESTIMATED_DELIVERY_DATE = ' '




SELECT * FROM [dbo].[olist_products_dataset]

CREATE TABLE TB_ACT_OLIST_PRODUCTS
(

PRODUCT_ID NVARCHAR(150),
PRODUCT_CATEGORY_NAME NVARCHAR(100),
PRODUCT_NAME_LENGHT INT,
PRODUCT_DESCRIPTION_LENGHT INT,
PRODUCT_PHOTOS_QTY INT,
PRODUCT_WEIGHT_G INT,
PRODUCT_LENGTH_CM INT,
PRODUCT_HEIGHT_CM INT,
PRODUCT_WIDTH_CM INT

)

INSERT INTO TB_ACT_OLIST_PRODUCTS
SELECT * FROM [dbo].[olist_products_dataset]

SELECT * FROM TB_ACT_OLIST_PRODUCTS





SELECT * FROM [dbo].[olist_sellers_dataset]

CREATE TABLE TB_ACT_OLIST_SELLERS_DATASET
(

SELLER_ID NVARCHAR(150),
SELLER_ZIP_CODE_PREFIX NVARCHAR(50),
SELLER_CITY NVARCHAR(100),
SELLER_STATE CHAR(2)

)

INSERT INTO TB_ACT_OLIST_SELLERS_DATASET
SELECT * FROM [dbo].[olist_sellers_dataset]

SELECT * FROM TB_ACT_OLIST_SELLERS_DATASET





SELECT * FROM [dbo].[product_category_name_translation]

CREATE TABLE TB_ACT_PRODUCT_CATEGORY
(

PRODUCT_CATEGORY_NAME NVARCHAR(150),
PRODUCT_CATEGORY_NAME_ENGLISH NVARCHAR(150)

)

INSERT INTO TB_ACT_PRODUCT_CATEGORY
SELECT * FROM [dbo].[product_category_name_translation]

SELECT * FROM TB_ACT_PRODUCT_CATEGORY

