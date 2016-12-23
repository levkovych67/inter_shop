INSERT INTO inter_shop.category (id, title) VALUES (1, 'Phones & Accessories');
INSERT INTO inter_shop.category (id, title) VALUES (2, 'Mobile Phones');
INSERT INTO inter_shop.category (id, title) VALUES (3, 'Phone Bags & Cases');
INSERT INTO inter_shop.category (id, title) VALUES (4, 'Mobile Phone Accessories');
INSERT INTO inter_shop.category (id, title) VALUES (5, 'Mobile Phone Parts');

INSERT INTO inter_shop.category (id, title) VALUES (6, 'Computer & Office');
INSERT INTO inter_shop.category (id, title) VALUES (7, 'Tablets');
INSERT INTO inter_shop.category (id, title) VALUES (8, 'Tablet & Laptop Accessories');
INSERT INTO inter_shop.category (id, title) VALUES (9, 'Office Electronics');
INSERT INTO inter_shop.category (id, title) VALUES (10, 'Storage Devices');

INSERT INTO inter_shop.category (id, title) VALUES (11, 'Consumer Electronics');
INSERT INTO inter_shop.category (id, title) VALUES (12, 'Camera & Photo');
INSERT INTO inter_shop.category (id, title) VALUES (13, 'Smart Electronics');
INSERT INTO inter_shop.category (id, title) VALUES (14, 'Portable Audio & Video');

INSERT INTO inter_shop.category (id, title) VALUES (15, 'Jewelry & Watches');
INSERT INTO inter_shop.category (id, title) VALUES (16, 'Men''s Watches');
INSERT INTO inter_shop.category (id, title) VALUES (17, 'Women''s Watches');

INSERT INTO inter_shop.category (id, title) VALUES (18, 'Toys, Kids & Baby');
INSERT INTO inter_shop.category (id, title) VALUES (19, 'Baby Clothing');
INSERT INTO inter_shop.category (id, title) VALUES (20, 'Toys & Hobbies');

INSERT INTO inter_shop.category (id, title) VALUES (21, 'Men’s Clothing');
INSERT INTO inter_shop.category (id, title) VALUES (22, 'Winter Style');
INSERT INTO inter_shop.category (id, title) VALUES (23, 'Sunglasses');
INSERT INTO inter_shop.category (id, title) VALUES (24, 'Bottoms');

INSERT INTO inter_shop.category (id, title) VALUES (25, 'Women’s Clothing');
INSERT INTO inter_shop.category (id, title) VALUES (26, 'Outwear & Sweaters');
INSERT INTO inter_shop.category (id, title) VALUES (27, 'Accessories');

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (1, 2);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (1, 3);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (1, 4);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (1, 5);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (6, 7);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (6, 8);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (6, 9);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (6, 10);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (11, 12);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (11, 13);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (11, 14);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (15, 16);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (15, 17);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (18, 19);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (18, 20);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (21, 22);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (21, 23);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (21, 24);

INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (25, 26);
INSERT INTO inter_shop.category_subcategory (category_id, subcategory_id) VALUES (25, 27);

INSERT INTO inter_shop.address (id, apartment_number, street, street_number, zip_code, city) VALUES (1, 36, 'Lubinska', 164, 79040, 'Lviv');
INSERT INTO inter_shop.address (id, apartment_number, street, street_number, zip_code, city) VALUES (2, 23, 'Patona', 10, 79040, 'Kiyv');

INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (1, TRUE, 'user@gmail.com', 'Bohdan', 'Levkovych', '1234', '+3213123','USER', 1);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (2, FALSE , 'user1@gmail.com', 'Andriy', 'Petrovskui', '1234', '+312312323','USER', 2);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (3, TRUE, 'admin@gmail.com', 'Andriy', 'Petrovskui', '1234', '+312312323','ADMIN', 2);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (4, TRUE, 'admin1@gmail.com', 'Andriy', 'Petrovskui', '1234', '+312312323','ADMIN', 2);


INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 169.99, 'Xiaomi Redmi Note 3', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 129.99, 'Xiaomi Mi4c 256GB', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 239.99, 'Umi London Smartphone ', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 239.99, 'Meizu M3 Mini  ', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 499.99, 'Apple Iphone 4', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 549.99, 'Apple Iphone 4s Grey 16GN', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 629.99, 'Apple Iphone 5 Gold', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 699.99, 'Apple Iphone 6 White', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 629.99, 'Samsung Galaxy s5 ', 2);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 699.99, 'Samsung Galaxy s6', 2);

INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Apple Iphone 5 ', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Apple Iphone 6', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Samsung Galaxy s5 ', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Samsung Galaxy s6', 3);

INSERT INTO inter_shop.comment (id, content, user_id) VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',1);
INSERT INTO inter_shop.comment (id, content, user_id) VALUES (2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',2);
INSERT INTO inter_shop.comment (id, content, user_id) VALUES (3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',2);
INSERT INTO inter_shop.comment (id, content, user_id) VALUES (4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',2);
INSERT INTO inter_shop.comment (id, content, user_id) VALUES (5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',2);
INSERT INTO inter_shop.comment (id, content, user_id) VALUES (6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',2);

INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (1,1);
INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (2,2);
INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (2,3);
INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (3,4);
INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (4,5);
INSERT INTO inter_shop.product_comment (product_id, comment_id) VALUES (5,6);


INSERT INTO inter_shop.image (url) VALUES ('https://mdata.yandex.net/i?path=b1209194150_img_id2489234140084115963.jpeg&size=9');
INSERT INTO inter_shop.image (url) VALUES ('http://sintetiki.net/ru/media/2016/05/Xiaomi-Mi4c.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://newauctionstatic.com.ua/offer_images/2016/10/04/09/big/L/Ld61FwYLe2E/umi_london_smartfon_gps_4_jadra_1_8_gb_8_mp_5_3_g.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://kazandigital.ru/site_shop/files/f_katalog_27/f_dop_izobrajeniya_28/meizu_m3_mini_500x500_1000.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://cifromarket.com.ua/sites/default/files/imagecache/product_full/fffff.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://cifromarket.com.ua/sites/default/files/imagecache/product_full/fffff.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://mobidrive.com.ua/13822-thickbox/apple-iphone-5s-16gb-gold.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/f4/31/428962.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('https://www.romelas.com/image/data/1/samsung/samsung_s5_java/1036061_1.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://gadgetgrocery.com/image/cache/data/Samsung%20Galaxy%20S6%20Edge/Samsung%20Galaxy%20S6%20Edge%2002-600x600.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://ae01.alicdn.com/kf/HTB1xxfuKVXXXXX0XFXXq6xXFXXXP/-font-b-Lenovo-b-font-ZUK-Z1-font-b-Case-b-font-High-Quality-with.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://ae01.alicdn.com/kf/HTB1xxfuKVXXXXX0XFXXq6xXFXXXP/-font-b-Lenovo-b-font-ZUK-Z1-font-b-Case-b-font-High-Quality-with.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://ae01.alicdn.com/kf/HTB1xxfuKVXXXXX0XFXXq6xXFXXXP/-font-b-Lenovo-b-font-ZUK-Z1-font-b-Case-b-font-High-Quality-with.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://ae01.alicdn.com/kf/HTB1xxfuKVXXXXX0XFXXq6xXFXXXP/-font-b-Lenovo-b-font-ZUK-Z1-font-b-Case-b-font-High-Quality-with.jpg');

INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (1,1);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (2,2);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (3,3);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (4,4);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (5,5);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (6,6);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (7,7);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (8,8);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (9,9);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (10,10);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (11,11);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (12,12);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (13,13);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (14,14);
