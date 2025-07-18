-- This SQL script creates staging tables for Stripe data.

-- Table: staging_charges
CREATE TABLE finance.staging_charges (
    id VARCHAR PRIMARY KEY,
    status VARCHAR,
    invoice_id VARCHAR,
    created TIMESTAMP,
    currency VARCHAR,
    amount BIGINT
);

-- Table: staging_invoice_line_items
CREATE TABLE finance.staging_invoice_line_items (
    id VARCHAR PRIMARY KEY,
    invoice_id VARCHAR,
    price_id VARCHAR
); 

-- Table: staging_prices
CREATE TABLE finance.staging_prices (
    id VARCHAR PRIMARY KEY,
    product_id VARCHAR  
);          

-- Table: staging_products
CREATE TABLE finance.staging_products (
    id VARCHAR PRIMARY KEY,
    name VARCHAR
);  

-- Table: staging_customers
CREATE TABLE finance.staging_customers (
    id VARCHAR PRIMARY KEY,
    account_balance BIGINT,
    address_city VARCHAR,
    address_country VARCHAR,
    address_line1 VARCHAR,
    address_line2 VARCHAR,
    address_postal_code VARCHAR,
    address_state VARCHAR,
    balance BIGINT,
    batch_timestamp TIMESTAMP,
    business_vat_id VARCHAR,
    created TIMESTAMP,
    currency VARCHAR,
    default_source_id VARCHAR,
    deleted BOOLEAN,
    delinquent BOOLEAN,
    description VARCHAR,
    discount_checkout_session VARCHAR,
    discount_coupon_id VARCHAR,
    discount_customer_id VARCHAR,
    discount_end TIMESTAMP,
    discount_invoice VARCHAR,
    discount_invoice_item VARCHAR,
    discount_promotion_code_id VARCHAR,
    discount_start TIMESTAMP,
    discount_subscription VARCHAR,
    discount_subscription_item VARCHAR,
    email VARCHAR,
    invoice_credit_balance VARCHAR,
    invoice_settings_default_payment_method_id VARCHAR,
    name VARCHAR,
    phone VARCHAR,
    preferred_locales VARCHAR,
    shipping_address_city VARCHAR,
    shipping_address_country VARCHAR,
    shipping_address_line1 VARCHAR,
    shipping_address_line2 VARCHAR,
    shipping_address_postal_code VARCHAR,
    shipping_address_state VARCHAR,
    shipping_name VARCHAR,
    shipping_phone VARCHAR,
    sources_data_id VARCHAR,
    tax_exempt VARCHAR,
    tax_info_tax_id VARCHAR,
    tax_info_type VARCHAR,
    tax_ip_address VARCHAR
);