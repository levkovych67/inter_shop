INSERT INTO inter_shop.category (id, title) VALUES (1, 'Phones & Accessories');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (2, 'Mobile Phones',1);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (3, 'Phone Bags & Cases',1);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (4, 'Mobile Phone Accessories',1);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (5, 'Mobile Phone Parts',1);

INSERT INTO inter_shop.category (id, title) VALUES (6, 'Computer & Office');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (7, 'Tablets',6);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (8, 'Tablet & Laptop Accessories',6);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (9, 'Office Electronics',6);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (10, 'Storage Devices',6);

INSERT INTO inter_shop.category (id, title) VALUES (11, 'Consumer Electronics' );
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (12, 'Camera & Photo',11);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (13, 'Smart Electronics',11);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (14, 'Portable Audio & Video',11);

INSERT INTO inter_shop.category (id, title) VALUES (15, 'Jewelry & Watches');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (16, 'Men''s Watches',15);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (17, 'Women''s Watches',15);

INSERT INTO inter_shop.category (id, title) VALUES (18, 'Toys, Kids & Baby');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (19, 'Baby Clothing',18);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (20, 'Toys & Hobbies',18);

INSERT INTO inter_shop.category (id, title) VALUES (21, 'Men’s Clothing');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (22, 'Winter Style',21);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (23, 'Sunglasses',21);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (24, 'Bottoms',21);

INSERT INTO inter_shop.category (id, title) VALUES (25, 'Women’s Clothing');
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (26, 'Outwear & Sweaters',25);
INSERT INTO inter_shop.category (id, title,parent_category_id) VALUES (27, 'Accessories',25);



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

INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (1, TRUE, 'user@gmail.com', 'Bohdan', 'Levkovych', '1234', '+380636514491','USER', 1);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (2, FALSE , 'user1@gmail.com', 'Andriy', 'Petrovskui', '1234', '+380504569874','USER', 2);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (3, TRUE, 'admin@gmail.com', 'Andriy', 'Petrovskui', '1234', '+398745874495','ADMIN', 2);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (4, TRUE, 'admin1@gmail.com', 'Andriy', 'Petrovskui', '1234', '+312365478945','ADMIN', 2);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (5, TRUE, 'user2@gmail.com', 'Daniel', 'Loyenne', '1234', '+385201478963','USER', 1);
INSERT INTO inter_shop.user (id, active, email, first_name, last_name, password, phone,role, address_id) VALUES (6, TRUE, 'user3@gmail.com', 'Jack', 'Santa', '1234', '+301236547896','USER', 1);

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

INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Iphone 5 ', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Iphone 6', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Galaxy s5 ', 3);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 10.00, 'Case for Galaxy s6', 3);

INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 20.00, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 25.00, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 26.00, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 29.99, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 39.00, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 50.00, 'Men Sunglasses', 23);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 40.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 99.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (23, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 39.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 15.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 15.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 16.00, 'Women Sunglasses', 27);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (27, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 14.00, 'Toy Car', 20);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (28, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 55.00, 'Toy Car', 20);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'Toy Car', 20);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (30, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'Cannon KEK', 12);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (31, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'Cannon 322', 12);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (32, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'Cannon 1488', 12);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (33, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'Cannon 228', 12);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (34, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Man watch', 16);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (35, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Man watch', 16);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (36, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Man watch', 16);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (37, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Man watch', 16);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (38, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Woman watch', 17);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (39, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Woman watch', 17);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (40, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 69.00, 'SKMEI Woman watch', 17);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (41, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 600.00, 'SKMEI Woman watch', 17);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (42, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 700.00, 'SKMEI Woman watch', 17);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (43, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 800.00, 'Apple Ipad 4', 7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (44, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 900.00, 'Apple Ipad Air',7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (45, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 900.00, 'Apple Ipad 3', 7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (46, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 900.00, 'Apple Ipad Air',7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (47, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 900.00, 'Apple Ipad Pro', 7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (48, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 700.00, 'Apple Ipad Pro', 7);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (49, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 500.00, 'Hp Printer 1488', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (50, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 500.00, 'Hp Printer 322 ', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (51, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 500.00, 'Hp Scanner 1488', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (52, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 500.00, 'Hp Scanner 1488', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (53, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 500.00, 'Dell Inspirion Printer', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (54, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 400.00, 'Router 1488 kek', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 99.99, 'Dell qip', 9);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (56, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 99.99, 'Apple Ipod Nano', 14);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (57, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 99.99, 'Apple Ipod Classic', 14);
INSERT INTO inter_shop.product (id, description, price, title, category_id)VALUES (58, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 99.9, 'Apple Ipod', 14);

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
INSERT INTO inter_shop.image (url) VALUES ('http://image.made-in-china.com/43f34j00dKbacGjthgrv/Sports-Type-Anti-Impact-PC-Safety-Glasses-Product-SG115-.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://image.made-in-china.com/43f34j00IZutEFrWVpzh/ANSI-Z87-1-Approval-Safety-Glasses-for-Safety-Product-SG103-.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://image.made-in-china.com/43f34j00nyDEGQOzZjko/2016-New-Product-Full-Fram-Glasses-Acetate-Frame.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.scalliwags.co.za/wp-content/uploads/2016/03/Silver-rimmed-Elvis-glasses-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.shepherdstrading.com/wp-content/uploads/2014/07/16858-Glasses2-247x185.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://sethandmaud.com/wp-content/uploads/2016/08/5-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://sethandmaud.com/wp-content/uploads/2016/08/1-1-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://i2.wp.com/www.smartshopperteam.com/wp-content/uploads/Hot-New-2015-Designer-Women-Glasses-Inspired-Sun-Glasses-Cateye-Women-Oversize-Cat-Eye-Celebrity-Sunglasses.jpg?resize=300%2C300');
INSERT INTO inter_shop.image (url) VALUES ('https://i1.wp.com/onlinewholesalemarketplace.com/wp-content/uploads/2015/12/AOFLY-Fashion-Sunglasses-Women-Brand-Design-vintage-sun-glasses-female-Rivet-Shades-Flat-Top-Oversize-Shield.jpg?resize=300%2C300');
INSERT INTO inter_shop.image (url) VALUES ('http://ani.blue/wp/wp-content/uploads/2016/02/FEIDU-2015-Summer-Fashion-Round-Sunglasses-Women-Eyewear-Brand-Designer-glasses-Multi-color-Points-Sun-Glasses-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://4me.click/wopr/wp-content/uploads/2015/12/Erika-Vintage-Brand-Designer-Sunglasses-2015-fashion-women-sunglass-cat-eye-sun-glasses-for-women-oculos-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://ak1.ostkcdn.com/images/products/8368287/8368287/Gucci-Readers-Womens-GG3566-Cat-Eye-Reading-Glasses-P15674704.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://image.made-in-china.com/43f34j00eFpEiRCyEuoN/1-28-RC-Car-Kids-Games-Toy-Cars-Iw04m-with-Radio-Remote-Control.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://i.ebayimg.com/images/g/ME4AAMXQUmFSgjmC/s-l300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://cdn.bmwcase.com/2016/04/23/small_free-shipping-die-cast-model-car-for-bmw-x6-alloy-models-boy-toy-car.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.bestcameraunder500.net/wp-content/uploads/2014/12/Samsung-NX300-Digital-Camera-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('https://farm3.staticflickr.com/2372/cameras/72157604225656701_model_huge_0c10eef81a.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.bestcameraunder500.net/wp-content/uploads/2014/12/Samsung-NX300-Digital-Camera-300x300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://pngimg.com/upload/photo_camera_PNG7820.png');
INSERT INTO inter_shop.image (url) VALUES ('http://stat.homeshop18.com/homeshop18/images/productImages/868/fastrack-mens-watch-medium_bfd16f121840af3430f725c93e5c39f6.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://i.ebayimg.com/images/g/GQcAAOxy4dNSu~th/s-l300.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://cs5-2.4pda.to/6147144.png');
INSERT INTO inter_shop.image (url) VALUES ('http://cs5-2.4pda.to/6147144.png');
INSERT INTO inter_shop.image (url) VALUES ('http://i.ebayimg.com/00/s/MzAwWDMwMA==/z/DCcAAOSwRLZT~~vl/$_35.JPG?set_id=2');
INSERT INTO inter_shop.image (url) VALUES ('http://ec2.images-amazon.com/images/I/510jffDm9CL._AA300_.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://i.ebayimg.com/00/s/MTAyNFgxMDI0/z/8LkAAOSwq7JULvZP/$_35.JPG?set_id=2');
INSERT INTO inter_shop.image (url) VALUES ('https://ak1.ostkcdn.com/images/products/5142907/5142907/Timex-Womens-T2J761-Easy-Reader-Brown-Leather-Strap-Watch-P12987486.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('https://ak1.ostkcdn.com/images/products/9051728/Michael-Kors-Womens-MK2280-Parker-Goldtone-Navy-Leather-Watch-P16247905.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/89/87/431535.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.qp-apple.ru/pic/pre!!!ipad-2-wi-fi-3g-16-gb-white-1.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://lowendmac.com/wp-content/uploads/ipad-air.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/99/d2/431254.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/b4/03/431220.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/9d/fa/447242.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('http://cdn.shopclues.com/images/thumbnails/3204/320/320/24163541444121889.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://cdn02.shopclues.net/images/detailed/28680/1_1450346910.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://ak1.ostkcdn.com/images/products/7494190/Kodak-PS50-Sheetfed-Scanner-afcd7ade-4149-4b1d-9599-6f53a5856406_320.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://kw.pricenacdn.com/files/images/products/original/11/Brother-ADS-2600W-24ppm-1200dpi-A4-Wi-Fi-LAN-USB-Sheetfed-ADF-Scanner_782454_36cf8bf855bc82a016a2b08ac8be0b61_t.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://www.findscanners.com/wp-content/uploads/2014/05/fujitsu-fi-6130z-scanner.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://ecx.images-amazon.com/images/I/21t0GAHJDJL.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/a5/3f/159572.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('https://city.com.ua/images/products/s_320/34495_20294.jpg');
INSERT INTO inter_shop.image (url) VALUES ('http://stylus.ua/thumbs/320x320/48/5c/2923.jpeg');
INSERT INTO inter_shop.image (url) VALUES ('http://images.souqmobi.com/newdata/995101149.jpg');

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
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (15,15);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (16,16);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (17,17);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (18,18);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (19,19);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (20,20);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (21,21);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (22,22);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (23,23);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (24,24);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (25,25);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (26,26);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (27,27);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (28,28);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (29,29);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (30,30);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (31,31);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (32,32);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (33,33);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (34,34);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (35,35);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (36,36);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (37,37);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (38,38);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (39,39);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (40,40);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (41,41);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (42,42);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (43,43);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (44,44);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (45,45);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (46,46);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (47,47);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (48,48);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (49,49);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (50,50);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (51,51);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (52,52);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (53,53);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (54,54);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (55,55);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (56,56);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (57,57);
INSERT INTO inter_shop.product_image (product_id,image_id) VALUES (58,58);



