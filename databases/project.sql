\c lab2018

CREATE TABLE projects(
    id VARCHAR(50) PRIMARY KEY,
    nama VARCHAR(150) NOT NULL,
    manager VARCHAR(50) REFERENCES users(username),
    deadline TIME NOT NULL,
    keterangan TEXT NOT NULL,
    status INT NOT NULL,    
);

CREATE TABLE members(
    id VARCHAR(100) PRIMARY KEY,
    project_id VARCHAR(50) REFERENCES projects(id),
    username VARCHAR(50) REFERENCES users(username),
    point INT NOT NULL,
);


CREATE TABLE schedules(
    project_id VARCHAR(50) REFERENCES projects(id),
    task VARCHAR(200) NOT NULL,
    start_projects TIME NOT NULL,
    end_projects TIME NOT NULL,
    status INT NOT NULL,
    members ARRAY NOT NULL,
    keterangan TEXt NOT NULL
);

CREATE TABLE barang (
   project_id VARCHAR(50) REFERENCES projects(id),
   nama VARCHAR(150) NOT NULL,
   harga NUMBER NOT NULL,
   status INT NOT NULL,
   keterangan TEXT
);


