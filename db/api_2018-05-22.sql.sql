----
-- phpLiteAdmin database dump (http://www.phpliteadmin.org/)
-- phpLiteAdmin version: 1.9.7.1
-- Exported: 3:58pm on May 22, 2018 (UTC)
-- database file: F:\sqlite\api.sqlite
----
BEGIN TRANSACTION;

----
-- Drop table for migrations
----
DROP TABLE IF EXISTS "migrations";

----
-- Table structure for migrations
----
CREATE TABLE "migrations" ("id" integer not null primary key autoincrement, "migration" varchar not null, "batch" integer not null);

----
-- Data dump for migrations, a total of 4 rows
----
INSERT INTO "migrations" ("id","migration","batch") VALUES ('1','2014_10_12_000000_create_users_table','1');
INSERT INTO "migrations" ("id","migration","batch") VALUES ('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO "migrations" ("id","migration","batch") VALUES ('3','2018_05_21_214241_create_products_table','2');
INSERT INTO "migrations" ("id","migration","batch") VALUES ('4','2018_05_21_214448_create_reviews_table','2');

----
-- Drop table for users
----
DROP TABLE IF EXISTS "users";

----
-- Table structure for users
----
CREATE TABLE "users" ("id" integer not null primary key autoincrement, "name" varchar not null, "email" varchar not null, "password" varchar not null, "remember_token" varchar null, "created_at" datetime null, "updated_at" datetime null);

----
-- Data dump for users, a total of 0 rows
----

----
-- Drop table for password_resets
----
DROP TABLE IF EXISTS "password_resets";

----
-- Table structure for password_resets
----
CREATE TABLE "password_resets" ("email" varchar not null, "token" varchar not null, "created_at" datetime null);

----
-- Data dump for password_resets, a total of 0 rows
----

----
-- Drop table for products
----
DROP TABLE IF EXISTS "products";

----
-- Table structure for products
----
CREATE TABLE "products" ("id" integer not null primary key autoincrement, "name" varchar not null, "detail" text not null, "price" integer not null, "stock" integer not null, "discount" integer not null, "created_at" datetime null, "updated_at" datetime null);

----
-- Data dump for products, a total of 0 rows
----

----
-- Drop table for reviews
----
DROP TABLE IF EXISTS "reviews";

----
-- Table structure for reviews
----
CREATE TABLE "reviews" ("id" integer not null primary key autoincrement, "customer" varchar not null, "review" text not null, "star" integer not null, "product_id" integer not null, "created_at" datetime null, "updated_at" datetime null, foreign key("product_id") references "products"("id") on delete cascade);

----
-- Data dump for reviews, a total of 0 rows
----

----
-- Drop index for users_email_unique
----
DROP INDEX IF EXISTS "users_email_unique";

----
-- structure for index users_email_unique on table users
----
CREATE UNIQUE INDEX "users_email_unique" on "users" ("email");

----
-- Drop index for password_resets_email_index
----
DROP INDEX IF EXISTS "password_resets_email_index";

----
-- structure for index password_resets_email_index on table password_resets
----
CREATE INDEX "password_resets_email_index" on "password_resets" ("email");

----
-- Drop index for reviews_product_id_index
----
DROP INDEX IF EXISTS "reviews_product_id_index";

----
-- structure for index reviews_product_id_index on table reviews
----
CREATE INDEX "reviews_product_id_index" on "reviews" ("product_id");
COMMIT;
