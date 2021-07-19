CREATE TABLE categories(
   cat_id SMALLINT,
   cat_name VARCHAR(20) NOT NULL,
   PRIMARY KEY(cat_id),
   UNIQUE(cat_name)
);

CREATE TABLE subcategories(
   sub_id SMALLINT,
   sub_name VARCHAR(20) NOT NULL,
   cat_id SMALLINT NOT NULL,
   PRIMARY KEY(sub_id),
   UNIQUE(sub_name),
   FOREIGN KEY(cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE suppliers(
   sup_id INT,
   sup_name VARCHAR(30) NOT NULL,
   sup_representative VARCHAR(30) NOT NULL,
   PRIMARY KEY(sup_id),
   UNIQUE(sup_name)
);

CREATE TABLE customers(
   cus_id INT,
   cus_date_created DATETIME NOT NULL,
   cus_date_updated DATETIME,
   cus_login VARCHAR(30) NOT NULL,
   cus_password VARCHAR(30) NOT NULL,
   cus_firstname VARCHAR(30) NOT NULL,
   cus_lastname VARCHAR(30) NOT NULL,
   cus_date_birth DATE NOT NULL,
   cus_email VARCHAR(320) NOT NULL,
   cus_phone_number CHAR(10),
   cus_address VARCHAR(255),
   cus_city VARCHAR(30),
   cus_zipcode SMALLINT,
   cus_country VARCHAR(30),
   PRIMARY KEY(cus_id),
   UNIQUE(cus_login),
   UNIQUE(cus_email)
);

CREATE TABLE orders(
   ord_id INT,
   order_vat DECIMAL(5,2) NOT NULL,
   ord_date_payment DATETIME NOT NULL,
   ord_date_delivery DATETIME,
   cus_id INT NOT NULL,
   PRIMARY KEY(ord_id),
   FOREIGN KEY(cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE employees(
   emp_id INT,
   emp_firstname VARCHAR(30) NOT NULL,
   emp_lastname VARCHAR(30) NOT NULL,
   emp_gender VARCHAR(10) NOT NULL,
   emp_number_children BYTE NOT NULL,
   emp_store VARCHAR(30) NOT NULL,
   emp_job VARCHAR(20) NOT NULL,
   emp_service VARCHAR(20) NOT NULL,
   emp_seniority SMALLINT NOT NULL,
   emp_gross_anual_salary DECIMAL(9,2) NOT NULL,
   emp_id_1 INT NOT NULL,
   PRIMARY KEY(emp_id),
   FOREIGN KEY(emp_id_1) REFERENCES employees(emp_id)
);

CREATE TABLE products(
   pro_id INT,
   pro_name VARCHAR(30) NOT NULL,
   pro_price INT NOT NULL,
   pro_reference VARCHAR(15) NOT NULL,
   pro_ean VARCHAR(30) NOT NULL,
   pro_stock INT NOT NULL,
   pro_alert_stock INT NOT NULL,
   pro_color VARCHAR(10),
   pro_label VARCHAR(20) NOT NULL,
   pro_description TEXT NOT NULL,
   pro_date_created DATETIME NOT NULL,
   pro_date_updated DATETIME,
   pro_picture_file_name VARCHAR(20) NOT NULL,
   pro_on_sale LOGICAL NOT NULL,
   sup_id INT NOT NULL,
   sub_id SMALLINT NOT NULL,
   PRIMARY KEY(pro_id),
   UNIQUE(pro_name),
   UNIQUE(pro_reference),
   UNIQUE(pro_ean),
   FOREIGN KEY(sup_id) REFERENCES suppliers(sup_id),
   FOREIGN KEY(sub_id) REFERENCES subcategories(sub_id)
);

CREATE TABLE contain(
   pro_id INT,
   ord_id INT,
   ord_pro_quantity SMALLINT NOT NULL,
   ord_pro_discount DECIMAL(5,2),
   PRIMARY KEY(pro_id, ord_id),
   FOREIGN KEY(pro_id) REFERENCES products(pro_id),
   FOREIGN KEY(ord_id) REFERENCES orders(ord_id)
);
