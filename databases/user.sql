\c lab2018


CREATE TABLE users(
    username VARCHAR(50) PRIMARY KEY,
    nama_awal VARCHAR(50) NOT NULL,
    nama_akhir VARCHAR(50),
    nim CHAR(8),
    email VARCHAR(50) NOT NULL,
    password VARCHAR(150) NOT NULL,
    status INT NOT NULL
);

CREATE TABLE sessions(
    username VARCHAR(50) REFERENCES users(username),
    token VARCHAR(200) NOT NULL,
    expired TIME NOT NULL,
);
