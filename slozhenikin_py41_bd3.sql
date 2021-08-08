create table if not exists Genre (
        id serial primary key,
        name VARCHAR(50) not null unique
    );
    
    create table if not exists Singer (
        id serial primary key,
        name VARCHAR(50) not null unique
    );
    
    create table if not exists SingerGenre (
    singer_id integer references Singer(id),
    genre_id integer references Genre(id),
    constraint pk primary key (singer_id, genre_id)
    );
    
    create table if not exists Album(
        id serial primary key,
        name VARCHAR(150) not null unique,
        year integer
    );
    
    create table if not exists SingerAlbum (
    singer_id integer references Singer(id),
    album_id integer references Album(id),
    constraint hz primary key (singer_id, album_id)
    );
    
    create table if not exists Collection (
        id serial primary key,
        name VARCHAR(150) not null unique,
        year integer
    );

    create table if not exists Song (
        id integer primary key references Album(id),
        name VARCHAR(150) not null unique,
        timing numeric
    );
        
    create table if not exists SongCollection (
        song_id integer references Song(id),
        collection_id integer references Collection(id),
        constraint xz primary key (song_id, collection_id)
    );    