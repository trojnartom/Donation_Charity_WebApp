INSERT IGNORE INTO institutions (id, name, description) VALUES (1, 'Fundacja "Dbam o Zdrowie"', 'Pomoc dzieciom z ubogich rodzin.');
INSERT IGNORE INTO institutions (id, name, description) VALUES (2, 'Fundacja "A kogo"', 'Pomoc wybudzaniu dzieci ze śpiączki.');
INSERT IGNORE INTO institutions (id, name, description) VALUES (3, 'Fundacja "Dla dzieci"', 'Pomoc osobom znajdującym się w trudnej sytuacji życiowej.');
INSERT IGNORE INTO institutions (id, name, description) VALUES (4, 'Fundacja "Bez domu"', 'Pomoc dla osób nie posiadających miejsca zamieszkania.');
INSERT IGNORE INTO institutions (id, name, description) VALUES (5, 'Fundacja "DIOZ"', 'Pomoc zwierzętom pokrzywdzonym przez ich właścicieli.');


INSERT IGNORE INTO categories (id, name) VALUES (1, 'Ubrania');
INSERT IGNORE INTO categories (id, name) VALUES (2, 'Artykuły dla zwierząt');
INSERT IGNORE INTO categories (id, name) VALUES (3, 'Chemia domowa');
INSERT IGNORE INTO categories (id, name) VALUES (4, 'Zabawki');
INSERT IGNORE INTO categories (id, name) VALUES (5, 'Meble');


INSERT IGNORE INTO donations (id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES (1,'Rzeszów', 'Koment 1', 20220830, 170000, 10, 'Paderewskiego', '35-086', 1);
INSERT IGNORE INTO donations (id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES (2,'Rzeszów', 'koment 2', 20220730, 123000, 7, 'Lwowska', '35-058', 2);
INSERT IGNORE INTO donations (id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES (3,'Rzeszów', 'koment 3', 20220915, 173000, 1, 'Paderewskiego', '35-086', 3);
INSERT IGNORE INTO donations (id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES (4,'Rzeszów', 'koment 4', 20221001, 151500, 3, 'Paderewskiego', '35-086', 4);
INSERT IGNORE INTO donations (id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES (5,'Rzeszów', 'koment 5', 20220912, 095000, 20, 'Paderewskiego', '35-086', 5);

# INSERT IGNORE INTO donations_categories VALUES (1,5);
# INSERT IGNORE INTO donations_categories VALUES (2,4);
# INSERT IGNORE INTO donations_categories VALUES (3,3);
# INSERT IGNORE INTO donations_categories VALUES (4,2);
# INSERT IGNORE INTO donations_categories VALUES (5,1);