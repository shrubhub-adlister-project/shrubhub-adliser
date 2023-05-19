USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(35) NOT NULL UNIQUE,
    email VARCHAR(65) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(65) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     user_id INT UNSIGNED NOT NULL,
     category_id INT UNSIGNED NOT NULL,
     title VARCHAR (65) NOT NULL,
     description VARCHAR(360) NOT NULL,
     PRIMARY KEY (id),
     CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES users (id),
     CONSTRAINT category_id_fk FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO users (username, email, password) VALUES
    ('KelvynM', 'KelvynM@codedown.com', '$2a$12$Eub0YQqMj1CyYUSpYUU9dep.MwpzPE9ZCRsBw89XLiudSmZCU7/rC'),
    ('LennoxB','LennoxB@Codeleft.com','$2a$12$kNbXmA.Wtm45A04GKuhRru3WD4RjBEJSTcXijlZ6IZshzI3BAstx.'),
    ('QuentinW','QuentinW@Codeup.com','$2a$12$.oHXIioJjEMLNdnmehi4YeuAQMCZGRSH.EjRvtczWftdPJcswz6Jy'),
    ('SarahB','SarahB@Coderight.com','$2a$12$d//kw8U8Ns.IGGx1UI0r7.9QqY0bGX4eOJ6d.24xQk3AckYnS5m7W'),
    ('davidbrown', 'davidbrown@example.com', '$2a$12$Eub0YQqMj1CyYUSpYUU9dep.MwpzPE9ZCRsBw89XLiudSmZCU7/rC'),
    ('sarahsmith', 'sarahsmith@example.com','$2a$12$kNbXmA.Wtm45A04GKuhRru3WD4RjBEJSTcXijlZ6IZshzI3BAstx.'),
    ('alexturner', 'alexturner@example.com','$2a$12$.oHXIioJjEMLNdnmehi4YeuAQMCZGRSH.EjRvtczWftdPJcswz6Jy'),
    ('amandawilliams', 'amandawilliams@example.com','$2a$12$d//kw8U8Ns.IGGx1UI0r7.9QqY0bGX4eOJ6d.24xQk3AckYnS5m7W'),
    ('chrisjohnson', 'chrisjohnson@example.com', '$2a$12$Eub0YQqMj1CyYUSpYUU9dep.MwpzPE9ZCRsBw89XLiudSmZCU7/rC'),
    ('laurasmith', 'laurasmith@example.com','$2a$12$kNbXmA.Wtm45A04GKuhRru3WD4RjBEJSTcXijlZ6IZshzI3BAstx.'),
    ('michaeljackson', 'michaeljackson@example.com','$2a$12$.oHXIioJjEMLNdnmehi4YeuAQMCZGRSH.EjRvtczWftdPJcswz6Jy'),
    ('jenniferdavis', 'jenniferdavis@example.com','$2a$12$d//kw8U8Ns.IGGx1UI0r7.9QqY0bGX4eOJ6d.24xQk3AckYnS5m7W'),
    ('stevenwilson', 'stevenwilson@example.com', '$2a$12$Eub0YQqMj1CyYUSpYUU9dep.MwpzPE9ZCRsBw89XLiudSmZCU7/rC'),
    ('lisasmith', 'lisasmith@example.com','$2a$12$kNbXmA.Wtm45A04GKuhRru3WD4RjBEJSTcXijlZ6IZshzI3BAstx.'),
    ('robertbrown', 'robertbrown@example.com','$2a$12$d//kw8U8Ns.IGGx1UI0r7.9QqY0bGX4eOJ6d.24xQk3AckYnS5m7W');

INSERT INTO categories (name) VALUES
    ('Mushrooms'),
    ('Flowers'),
    ('Plants'),
    ('Services');

INSERT INTO ads (user_id, category_id, title, description) VALUES
    (12, 1, 'Portobello Mushroom', 'Large, meaty mushroom with a rich flavor and versatile culinary uses.'),
    (3, 1, 'Shiitake Mushroom', 'Popular mushroom with a savory taste and a meat-like texture.'),
    (9, 1, 'Morel Mushroom', 'Delicacy mushroom with a distinctive honeycomb-like appearance.'),
    (6, 1, 'Chanterelle Mushroom', 'Golden-yellow mushroom with a fruity aroma and a mild, earthy flavor.'),
    (7, 1, 'Porcini Mushroom', 'Highly prized mushroom known for its intense nutty and earthy flavor.'),
    (2, 1, 'Oyster Mushroom', 'Mushroom with a delicate texture and a mild, slightly sweet taste.'),
    (14, 1, 'Lion\'s Mane Mushroom', 'Unique mushroom with long, white tendrils resembling a lion\'s mane.'),
    (5, 1, 'Enoki Mushroom', 'Slender mushroom with a mild, slightly fruity flavor.'),
    (4, 1, 'Maitake Mushroom', 'Frilly mushroom with a rich, earthy flavor and a firm texture.'),
    (8, 1, 'King Trumpet Mushroom', 'Meaty mushroom with a mild, slightly sweet taste and a firm texture.'),
    (7, 1, 'Crimini Mushroom', 'Brown variation of the common button mushroom with a deeper flavor.'),
    (13, 1, 'Portabella Mushroom', 'Matured cremini mushroom with a meaty texture and intense flavor.'),
    (10, 1, 'Wood Ear Mushroom', 'Edible fungus with a crunchy texture and a mild, delicate taste.'),
    (1, 1, 'Black Truffle', 'Highly prized, aromatic fungus with a distinct earthy flavor.'),
    (11, 1, 'White Truffle', 'Rare and highly aromatic fungus with a pungent and musky flavor.'),
    (4, 1, 'Shimeji Mushroom', 'Small mushroom with a firm texture and a slightly nutty flavor.'),
    (9, 1, 'Hedgehog Mushroom', 'Small mushroom with a sweet and nutty flavor, resembling hedgehog spines.'),
    (3, 1, 'Coral Mushroom', 'Unique mushroom with a coral-like appearance and a delicate flavor.'),
    (8, 1, 'Chicken of the Woods Mushroom', 'Bright orange mushroom with a meaty texture and a lemony taste.'),
    (2, 1, 'Lobster Mushroom', 'Mushroom with a seafood-like flavor and a vibrant reddish-orange color.'),
    (15, 1, 'Matsutake Mushroom', 'Highly prized mushroom with a spicy and aromatic flavor.'),
    (12, 1, 'Cauliflower Mushroom', 'Distinctive mushroom with a texture resembling cauliflower and a mild flavor.'),
    (6, 1, 'Beech Mushroom', 'Small, tender mushroom with a nutty and buttery flavor.'),
    (10, 1, 'Yellowfoot Mushroom', 'Mushroom with a delicate texture and a mild, slightly fruity taste.'),
    (5, 1, 'Blue Oyster Mushroom', 'Blue-colored mushroom with a delicate flavor and a velvety texture.'),
    (13, 2, 'Rose', 'Beautiful red rose with a delightful fragrance.'),
    (1, 2, 'Tulip', 'Colorful tulip with vibrant petals.'),
    (11, 2, 'Lavender', 'Calming lavender plant known for its soothing aroma.'),
    (14, 2, 'Sunflower', 'Large sunflower with bright yellow petals.'),
    (7, 2, 'Orchid', 'Exotic orchid with intricate patterns.'),
    (3, 3, 'Cactus', 'Low-maintenance cactus that thrives in dry conditions.'),
    (9, 3, 'Fern', 'Elegant fern with lush green foliage.'),
    (2, 2, 'Jasmine', 'Fragrant jasmine plant that blooms at night.'),
    (6, 3, 'Bonsai Tree', 'Miniature tree carefully cultivated in a bonsai style.'),
    (4, 3, 'Aloe Vera', 'Succulent plant with medicinal properties.'),
    (12, 2, 'Daisy', 'Classic daisy with white petals and a yellow center.'),
    (8, 3, 'Palm Tree', 'Tropical palm tree that adds a touch of paradise.'),
    (5, 2, 'Carnation', 'Sweet-scented carnation with ruffled petals.'),
    (10, 3, 'Snake Plant', 'Hardy snake plant with tall, upright leaves.'),
    (13, 3, 'Mint', 'Refreshing mint plant, perfect for teas and garnishes.'),
    (15, 2, 'Lily', 'Graceful lily with elegant, trumpet-shaped flowers.'),
    (1, 3, 'Bamboo', 'Fast-growing bamboo plant, ideal for privacy screens.'),
    (14, 3, 'Ficus', 'Indoor ficus plant that purifies the air.'),
    (11, 2, 'Poinsettia', 'Festive poinsettia with vibrant red or white bracts.'),
    (7, 2, 'Chrysanthemum', 'Colorful chrysanthemum with a variety of petal shapes.'),
    (4, 2, 'Hydrangea', 'Hydrangea plant with clusters of delicate flowers.'),
    (9, 2, 'Peony', 'Fragrant peony with large, showy blossoms.'),
    (3, 3, 'Succulent Mix', 'Assortment of small succulent plants.'),
    (8, 3, 'Azalea', 'Azalea shrub with vibrant blooms in various shades.'),
    (2, 2, 'Marigold', 'Cheerful marigold with bright orange and yellow flowers.');