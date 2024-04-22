-- Tabla de hechos de KC_April24

SET CLIENT_ENCODING TO 'UTF8';

CREATE TABLE IF NOT EXISTS KC_April24 (
	id SERIAL PRIMARY KEY,
	player_id INT NOT NULL,
	deck_id INT NOT NULL,
	skill_id INT NOT NULL,
	ndmax DATE NOT NULL,
	zerotg BOOLEAN NOT NULL,
	zephra BOOLEAN NOT NULL,
	bryan BOOLEAN NOT NULL,
	xenoblur BOOLEAN NOT NULL,
	yamiglen BOOLEAN NOT NULL,
	latino_vania BOOLEAN NOT NULL,
	updater_label VARCHAR(32) NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

-- Crear llaves foráneas

ALTER TABLE KC_April24
ADD CONSTRAINT fk_KC_April24_player_id 
	FOREIGN KEY (player_id) 
	REFERENCES players (player_id),
ADD CONSTRAINT fk_KC_April24_deck_id 
	FOREIGN KEY (deck_id) 
	REFERENCES decks (deck_id),
ADD CONSTRAINT fk_KC_April24_skill_id
	FOREIGN KEY (skill_id)
	REFERENCES skills (skill_id);

SET datestyle TO 'European';