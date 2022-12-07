DROP TABLE IF EXISTS `travel_place`;

ALTER TABLE gps ADD COLUMN travel_place_id BIGINT;

CREATE TABLE travel_place(
    travel_place_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    place_name VARCHAR(255) NOT NULL,
    photo VARCHAR(255),
    intro VARCHAR(255),
    context LONGTEXT
) engine=InnoDB;

ALTER TABLE gps ADD FOREIGN KEY(travel_place_id) REFERENCES travel_place(travel_place_id);
