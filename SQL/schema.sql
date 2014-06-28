DROP DATABASE IF EXISTS `chat`;


CREATE DATABASE chat;

USE chat;

CREATE TABLE room (
  /* Describe your table here.*/
  `id` INTEGER  NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE user (
  /* Describe your table here.*/
  `id` INTEGER  NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE message (
  /* Describe your table here.*/
  `id` INTEGER  NOT NULL AUTO_INCREMENT,
  `text` TEXT NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `room_id` INTEGER NOT NULL,
  `user_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (room_id)
    REFERENCES room(id)
    ON DELETE CASCADE,
  FOREIGN KEY (`user_id`)
    REFERENCES user(id)
    ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/



