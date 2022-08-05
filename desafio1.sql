DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    nome_usuario VARCHAR(20) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    plano_id_U INT NOT NULL,
    FOREIGN KEY (plano_id_U) REFERENCES Plano(plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    valor DECIMAL(3,2) NOT NULL,
    plano_nome VARCHAR(100) NOT NULL UNIQUE
) engine = InnoDB;

CREATE TABLE SpotifyClone.Historico(
    data_reproducao DATETIME NOT NULL,
    usuario_id_H INT NOT NULL,
    FOREIGN KEY (usuario_id_H) REFERENCES Usuario(usuario_id),
    musica_id_H INT NOT NULL,
    FOREIGN KEY (musica_id_H) REFERENCES Musica(musica_id),
    CONSTRAINT PRIMARY KEY (usuario_id_H, musica_id_H)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Seguindo(
    usuario_id_S INT NOT NULL,
    FOREIGN KEY (usuario_id_S) REFERENCES Usuario(usuario_id)
    artistas_seguidos INT NUT NULL,
    FOREIGN KEY (artistas_seguidos) REFERENCES Artista(artista_id),
    CONSTRAINT PRIMARY KEY (usuario_id_S, artistas_seguidos),
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_nome VARCHAR(100) NOT NULL,
    artista_id_A INT NOT NULL,
    FOREIGN KEY (artista_id_A) REFERENCES Artista(artista_id),
    ano_lancamento YEAR NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Musica(
    id_musica INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    musica_nome VARCHAR(100) NOT NULL,
    duracao_seg INT NOT NULL,
    album_id_M INT NOT NULL,
    FOREIGN KEY (album_id_M) REFERENCES Albuns(album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Usuario (nome_usuario, idade, plano_id_U, data_assinatura)
VALUES
  VALUES
	  ('Thati', 23, 1,"2019-10-20"),
    ('Cintia', 35, 2, "2017-12-30"),
    ('Bill', 20, 3, "2019-06-05"),
    ('Roger', 45, 4, "2020-05-13"),
    ('Norman', 58, 4, "2017-02-17"),
    ('Patrick', 33, 2, "2017-01-06"),
    ('Vivian', 26, 3, "2018-01-05"),
    ('Carol', 19, 3, "2018-02-14"),
    ('Angelina', 42, 2, "2018-04-29"),
    ('Paul', 46, 2, "2017-01-17");

INSERT INTO SpotifyClone.Plano (valor, plano_nome)
VALUES
	  (0.00, 'gratuito'),
    (7.99, 'familiar'),
    (5.99, 'universitário'),
    (6.99, 'pessoal');

INSERT INTO SpotifyClone.Historico (data_reproducao, musica_id_H, usuario_id_H)
VALUES
  ("2020-02-28 10:45:55", 36, 1),
	("2020-05-02 05:30:35", 25, 1),
	("2020-03-06 11:22:33", 23, 1),
	("2020-08-05 08:05:17", 14, 1),
	("2020-09-14 16:32:22", 15, 1),
	("2020-01-02 07:40:33", 34, 2),
	("2020-05-16 06:16:22", 24, 2),
	("2020-10-09 12:27:48", 21, 2),
	("2020-09-21 13:14:46", 39, 2),
	("2020-11-13 16:55:13", 6, 3),
	("2020-12-05 18:38:30", 3, 3),
	("2020-07-30 10:00:00", 26, 3),
	("2021-08-15 17:10:10", 2, 4),
	("2021-07-10 15:20:30", 35, 4),
	("2021-01-09 01:44:33", 27, 4),
	("2020-07-03 19:33:28", 7, 5),
	("2017-02-24 21:14:22", 12, 5),
	("2020-08-06 15:23:43", 14, 5),
	("2020-11-10 13:52:27", 1, 5),
	("2019-02-07 20:33:48", 38, 6),
	("2017-01-24 00:31:17", 29, 6),
	("2017-10-12 12:35:20", 30, 6),
	("2018-05-29 14:56:41", 22, 6),
	("2018-05-09 22:30:49", 5, 7),
	("2020-07-27 12:52:58", 4, 7),
	("2018-01-16 18:40:43", 11, 7),
	("2018-03-21 16:56:40", 39, 8),
	("2020-10-18 13:38:05", 40, 8),
	("2019-05-25 08:14:03", 32, 8),
	("2021-08-15 21:37:09", 33, 8),
	("2021-05-24 17:23:45", 16, 9),
	("2018-12-07 22:48:52", 17, 9),
	("2021-03-14 06:14:26", 8, 9),
	("2020-04-01 03:36:00", 9, 9),
	("2017-02-06 08:21:34", 20, 10),
	("2017-12-04 05:33:43", 21, 10),
	("2017-07-27 05:24:49", 12, 10),
	("2017-12-25 01:03:57", 13, 10);

INSERT INTO SpotifyClone.Seguindo (artistas_seguidos, usuario_id_S)
VALUES
	  (1,1),
    (4,1),
    (3,1),
    (1,2),
    (3,2),
    (2,3),
    (1,3),
    (4,4),
    (5,5),
    (6,5),
    (6,6),
    (3,6),
    (1,6),
    (2,7),
    (5,7),
    (1,8),
    (5,8),
    (6,9),
    (4,9),
    (3,9),
    (2,10),
    (6,10);

INSERT INTO SpotifyClone.Artista (artista_nome)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon'),
    ('Tyler Isle'),
    ('Fog');

INSERT INTO SpotifyClone.Albuns (album_nome, ano_lancamento, artista_id_A)
VALUES
    ('Envious', 1990, 1),
    ('Exuberant', 1993, 1),
    ('Hallowed Steam', 1995, 2),
    ('Incandescent', 1998, 3),
    ('Temporary Culture', 2001, 4),
    ('Library of liberty', 2003, 4),
    ('Chained Down', 2007, 5),
    ('Cabinet of fools', 2012, 5),
    ('No guarantees', 2015, 5),
    ('Apparatus', 2015, 6);

INSERT INTO SpotifyClone.Musica (musica_nome,duracao_seg,album_id_M)
VALUES
      ("Soul For Us", 200, 1),
    ("Reflections Of Magic", 163, 1),
    ("Dance With Her Own", 116, 1),
	  ("Troubles Of My Inner Fire", 203, 2),
    ("Time Firework", 152, 2),
	  ("Magic Circus", 105, 3),
    ("Honey, So Do I", 207, 3),
    ("Sweetie, Let's Go Wild", 139, 3),
    ("She Knows", 244, 3),
	  ("Fantasy For Me", 100, 4),
    ("Celebration Of More", 146, 4),
    ("Rock His Everything", 223, 4),
    ("Home Forever", 231, 4),
    ("Diamond Power", 241, 4),
    ("Let's Be Silly", 132, 4),
	  ("Thang Of Thunder", 240, 5),
    ("Words Of Her Life", 185, 5),
    ("Without My Streets", 176, 5),
	  ("Need Of The Evening", 190, 6),
    ("History Of My Roses", 222, 6),
    ("Without My Love", 111, 6),
    ("Walking And Game", 123, 6),
    ("Young And Father", 197, 6),
	  ("Finding My Traditions", 179, 7),
    ("Walking And Man", 229, 7),
    ("Hard And Time", 135, 7),
    ("Honey, I'm A Lone Wolf", 150, 7),
	  ("She Thinks I Won't Stay Tonight", 166, 8),
    ("He Heard You're Bad For Me", 154, 8),
    ("He Hopes We Can't Stay", 210, 8),
    ("I Know I Know", 117, 8),
  	("He's Walking Away", 159, 9),
    ("He's Trouble", 138, 9),
    ("I Heard I Want To Bo Alone", 120, 9),
    ("I Ride Alone", 151, 9),
  	("Honey", 79, 10),
    ("You Cheated On Me", 95, 10),
    ("Wouldn't It Be Nice", 213, 10),
    ("Baby", 136, 10),
    ("You Make Me Feel So..", 83, 10);