CREATE USER ingd WITH PASSWORD 'ingd';

drop table if exists Ingredient;
drop sequence if exists INGREDIENT_SEQ;
create sequence INGREDIENT_SEQ start with 1 increment by 1;
create table Ingredient (
    id bigint not null,
		name varchar(255),
		kcal double precision not null,
		fat double precision not null,
		cholesterol double precision not null,
		protein double precision not null,
		salt double precision not null
);
GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON ALL TABLES IN SCHEMA public to ingd;
GRANT SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public to ingd;
TRUNCATE TABLE INGREDIENT;

INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chocolat', 2, 5, 3, 2, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'almond', 3, 2, 1, 3, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'nuts', 3, 5, 4, 2, 3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pasta', 4, 2, 2, 4, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sugar', 10, 5, 3, 2, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'salt', 3, 2, 1, 3, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'fajitas', 3, 5, 4, 2, 3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'salad', 2, 5, 3, 2, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tomato', 3, 2, 1, 3, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'agar agar', 160, 0.2, 0, 2.4, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'agave syrup', 293, 0, 0, 0.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'almond', 593, 49.9, 1, 25.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'amaranth', 126, 2.4, 0, 5.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'appenzeller', 235, 11.4, 34, 31.2, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'apple', 55, 0.3, 0, 0.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'apricot', 275, 0.5, 0, 5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'asparagus', 27, 0.2, 0, 2.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'avocado', 144, 14.2, 0, 1.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bacon', 322, 27.6, 49, 17.8, 2.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'banana', 95, 0.3, 0, 1.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'basil', 46, 0.8, 0, 3.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bean', 252, 2, 0, 2.1, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bechamel', 147, 99, 31, 4.2, 0.7);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'beef', 134, 5.4, 53, 22.4, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'beetroot', 46, 0.1, 0, 1.5, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bell pepper', 57, 0.1, 0, 1.9, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'blackberry', 44, 0.4, 0, 1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'blueberry', 58, 0.5, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bouillon', 5, 0.3, 0, 0.3, 1.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bread', 373, 2.1, 0, 12.7, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'bresaola', 167, 3.9, 65, 32.4, 6.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'brie', 298, 23.5, 71, 21.4, 1.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'broccoli', 31, 0.4, 0, 3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'brussel sprout', 41, 0.5, 0, 3.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'butter', 391, 39.8, 140, 4.8, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cabbage', 29, 0.3, 0, 2.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'camembert', 188, 10, 30, 24.4, 1.5);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'carrot', 38, 0.3, 0, 0.8, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cashew nut', 606, 45.2, 0, 21.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cauliflower', 26, 0.3, 0, 2.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'celeriac', 138, 5.8, 58, 4.9, 0.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'celery', 15, 0.1, 0, 0.9, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cervelat', 249, 21.5, 51, 13.4, 2.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chanterelle', 29, 0.6, 0, 2.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cherry', 74, 0.5, 0, 1.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chicken breast', 105, 1.2, 44, 23.1, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chicken leg', 121, 4.3, 94, 20.6, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chicken', 168, 10.3, 77, 18.8, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chickpea', 131, 2, 0, 7.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chives', 30, 0.6, 0, 3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'dark chocolate', 537, 31.8, 1, 5.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chocolate powder', 398, 7.8, 0, 5.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'chop', 250, 14.4, 81, 30, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cider', 32, 0, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cinnamon', 490, 24.9, 1, 14.1, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cocoa powder', 419, 24.5, 0, 22.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'coconut', 479, 42, 0, 4.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cod', 95, 0.5, 74, 22.6, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'coffee', 2, 0, 0, 0.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'coleslaw', 120, 10.3, 19, 1.6, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'condensed milk', 339, 10, 36, 8, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'coppa', 319, 22.5, 81, 28.8, 3.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cordon  bleu', 249, 12.2, 105, 24, 0.9);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'corn germ oil', 810, 90, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cottage cheese', 100, 4.5, 14, 12.4, 0.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cow milk', 33, 0.1, 0, 3.3, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cranberry', 40, 0.5, 0, 0.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cream', 334, 34.8, 101, 2, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cream cheese', 351, 32.1, 96, 11.1, 1.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'croissant', 408, 23, 71, 8.3, 2.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'cucumber', 14, 0.1, 0, 0.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'date', 305, 0.5, 0, 2.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'dulce de leche', 299, 7.3, 28, 5.7, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'durum', 353, 1.4, 0, 1.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'eggplant', 23, 0.2, 0, 1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'egg', 142, 10.3, 457, 11.9, 0.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'emmentaler', 408, 32.6, 84, 28.4, 0.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'endives', 16, 0.2, 0, 1.8, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'escalope', 155, 3.7, 78, 30.4, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'feta', 256, 20.7, 62, 16, 3.7);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'fig', 74, 0.3, 0, 0.9, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'fish', 170, 7.7, 59, 25.3, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sardine', 163, 9, 100, 20.4, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sole', 85, 1.1, 50, 18.7, 0.3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tuna', 149, 6.2, 38, 23.4, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'french fries', 232, 9.1, 0, 3.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'garlic', 137, 0.5, 0, 0.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'goat', 149, 7.9, 70,19.5, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'gorgonzola', 357, 31.2, 94, 19, 3.6);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'grapefruit', 30, 0.1, 0, 0.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'ham', 229, 11.5, 78, 31, 4.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'hare', 111, 1.5, 51, 24.3, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'hazelnut', 648, 59.5, 0, 16.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'honey', 306, 0, 0, 0.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'ice cream', 185, 8, 26, 35, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'jam', 246, 0.5, 0, 0.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'kaki', 71, 0.2, 0, 0.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'ketchup', 117, 0.4, 0, 2, 2.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'kiwi', 54, 0.6, 0, 1.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'lamb', 134, 5.8, 67, 20.5, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'leek', 30, 0.3, 0, 1.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'lemon', 23, 0.5, 0, 0.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'lentil', 334, 1.5, 0, 27, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'mango', 62, 0.2, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'mayonnaise', 742, 81.7, 150, 1.1, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'millet', 360, 3.9, 0, 10.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sel', 3, 2, 1, 3, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'molluscs', 85, 2.7, 108, 11.7, 0.7);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'morel', 29, 0.3, 0, 2.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'mortadella', 314, 23.7, 75, 16.1, 2.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'mozzarella', 256, 19.5, 46, 19.5, 0.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'mushroom', 29, 0.4, 0, 3.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'nectarine', 51, 0.2, 0, 0.9, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'lobster', 93, 1.3, 95, 19.6, 0.9);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'oat flakes', 381, 7.5, 0, 13.5, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'black olive', 152, 14, 0, 1.4, 8.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'green olive', 126, 12.5, 0, 1.3, 4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'olive oil', 810, 90, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'onion', 39, 0.2, 0, 1.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'orange', 44, 0.2, 0, 1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'palm oil', 799, 88.8, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pancetta', 467, 43, 80, 19.5, 4.6);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'paprika', 358, 13, 0, 14.8, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'parmesan', 370, 25.6, 77, 34.9, 1.6);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'passion fruit', 92, 0.5, 0, 2.2, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pâté de campagne', 391, 36.9, 119, 13.1, 2.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peach', 48, 0.3, 0, 0.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pea', 313, 1.7, 0, 21.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peanut', 601, 48.5, 0, 26.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peanut butter', 638, 53.7, 0, 22.6, 0.9);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pear', 58, 0.3, 0, 0.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peppermint', 49, 0.7, 0, 3.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pike', 81, 0.9, 63, 18.4, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pineapple', 52, 0.2, 0, 0.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pistachio', 594, 45.4, 0, 23.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'plum', 48, 0.2, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'polenta', 114, 4.7, 12, 4.2, 1.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'fajitas', 3, 5, 4, 2, 3);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tofu', 4, 2, 2, 4, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'salade', 2, 5, 3, 2, 1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tomates', 3, 2, 1, 3, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'passion fruit', 92, 0.5, 0, 2.2, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pâté de campagne', 391, 36.9, 119, 13.1, 2.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peach', 48, 0.3, 0, 0.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pea', 313, 1.7, 0, 21.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peanut', 601, 48.5, 0, 26.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peanut butter', 638, 53.7, 0, 22.6, 0.9);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pear', 58, 0.3, 0, 0.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'peppermint', 49, 0.7, 0, 3.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pike', 81, 0.9, 63, 18.4, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pineapple', 52, 0.2, 0, 0.4, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pistachio', 594, 45.4, 0, 23.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'plum', 48, 0.2, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'polenta', 114, 4.7, 12, 4.2, 1.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pork', 160, 8.3, 63, 21.4, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'potato', 76, 0.1, 0, 2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'prune', 43, 0.1, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'quinoa', 368, 5, 0, 14.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'radish', 18, 0.3, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'raspberry', 52, 0.6, 0, 1.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'reblochon', 307, 25.2, 76, 19.9, 2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'rhubarb', 12, 0.1, 0, 0.6, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'rice', 356, 1, 0, 7.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'rocket', 28, 0.7, 0, 2.6, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'lettuce', 16, 0.3, 0, 1.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'roquefort', 363, 31.7, 95, 19.2, 4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'salami', 422, 37.1, 76, 22, 3.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'salmon', 182, 11.5, 50, 19.7, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'saucisson', 467, 44.2, 71, 16.7, 2.5);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sausage', 228, 19.2, 53, 12.5, 1.9);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'shellfish', 75, 1, 123, 15.5, 0.7);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'shrimp', 56, 0.6, 150, 11.4, 0.5);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'soya drink', 336, 35, 105, 2.4, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'spinach', 23, 0.4, 0, 2.7, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'squid', 83, 1.1, 150, 16, 0.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'strawberry', 43, 0.5, 0, 0.7, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sugar', 390, 0, 0, 0, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sunflower oil', 810, 90, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'surimi', 81, 0.7, 35, 12.6, 1.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sweet corn', 93, 1.2, 0, 3.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'sweet potato', 81, 0.1, 0, 1.6, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tea', 0, 0, 0, 0, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'thyme', 52, 1.2, 0, 1.5, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tofu', 81, 4.8, 0, 8.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tomato', 21, 0.3, 0, 0.8, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'tortilla', 509, 27.2, 0, 7.8, 2.4);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'trout', 127, 7, 0, 16, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'turkey', 108, 1.3, 37, 24, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'vacherin', 370, 30.4, 91, 23.5, 1.5);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'veal', 204, 14.5, 73, 18.3, 0.2);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'vinegar', 22, 0, 0, 0.1, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'walnut', 747, 70.8, 0, 17, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'wasabi', 308, 10.6, 0, 2.9, 5.8);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'wine', 69, 0, 0, 0.2, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'yogurt', 66, 33.6, 11, 3.9, 0.1);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'pea', 313, 1.7, 0, 21.3, 0);
INSERT INTO Ingredient (id, name, kcal, fat, cholesterol, protein, salt) values ( nextval('INGREDIENT_SEQ'), 'zucchini', 19, 0.2, 0, 1.8, 0);
