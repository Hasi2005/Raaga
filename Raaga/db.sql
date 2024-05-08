create database music7;
use music7;
CREATE TABLE User (
  Username VARCHAR(255) PRIMARY KEY,
  Email VARCHAR(255) NOT NULL,
  Age INT,
  Country VARCHAR(255),
  Password VARCHAR(255) NOT NULL
);
INSERT INTO User (Username, Email, Age, Country, Password) VALUES
('johndoe', 'johndoe@example.com', 28, 'USA', 'johnsPassword123'),
('janedoe', 'janedoe@example.com', 32, 'Canada', 'janesPass321'),
('mikebloom', 'mikeb@example.com', 25, 'UK', 'mikesSecret'),
('emilyrose', 'emilyr@example.com', 29, 'Australia', 'emilysPass'),
('chrisblack', 'chrisb@example.com', 34, 'Germany', 'chrisPass123'),
('laurawhite', 'lauraw@example.com', 22, 'France', 'laurasPassword'),
('alexsmith', 'alexs@example.com', 30, 'Japan', 'alexsPass321'),
('sarahgreen', 'sarahg@example.com', 27, 'South Korea', 'sarahsSecret'),
('davidlee', 'davidl@example.com', 35, 'Brazil', 'davidsPass'),
('lisakim', 'lisak@example.com', 24, 'Italy', 'lisasPassword123');
CREATE TABLE Artist (
  ArtistID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,
  Style VARCHAR(255),
  Country VARCHAR(255)
);
INSERT INTO Artist (Name, Style, Country) VALUES
('The Cosmic Rays', 'Psychedelic Rock', 'USA'),
('Luna Shadows', 'Electropop', 'USA'),
('Aurora Borealis', 'Ambient', 'Norway'),
('Solar Echoes', 'Electronic', 'UK'),
('The Mountain Streams', 'Folk', 'Ireland');
CREATE TABLE Album (
  AlbumID INT PRIMARY KEY AUTO_INCREMENT,
  ArtistID INT NOT NULL,
  ReleaseYear INT,
  Genre VARCHAR(255),
  NumberOfSongs INT,
  FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);
alter table Album add column AlbumName varchar(255);
-- Albums for The Cosmic Rays (ArtistID = 1) - Rock
INSERT INTO Album (ArtistID, ReleaseYear, Genre, NumberOfSongs, AlbumName) VALUES
(1, 2018, 'Rock', 10, 'Galactic Vibrations'),
(1, 2019, 'Rock', 8, 'Stellar Echoes'),
(1, 2020, 'Rock', 9, 'Cosmic Dust'),
(1, 2021, 'Rock', 11, 'Nebula Dreams'),
(1, 2022, 'Rock', 12, 'Orbit Decay');

-- Albums for Luna Shadows (ArtistID = 2) - Pop Music
INSERT INTO Album (ArtistID, ReleaseYear, Genre, NumberOfSongs, AlbumName) VALUES
(2, 2017, 'Pop Music', 9, 'Moonlit Phase'),
(2, 2018, 'Pop Music', 10, 'Shadow Play'),
(2, 2019, 'Pop Music', 8, 'Eclipsed Hearts'),
(2, 2020, 'Pop Music', 11, 'Nocturnal Reflections'),
(2, 2021, 'Pop Music', 7, 'Twilight Whispers');

-- Alb ums for Aurora Borealis (ArtistID = 3) - Electronic Music
INSERT INTO Album (ArtistID, ReleaseYear, Genre, NumberOfSongs, AlbumName) VALUES
(3, 2016, 'Electronic Music', 10, 'Northern Lights'),
(3, 2017, 'Electronic Music', 9, 'Quiet Storms'),
(3, 2018, 'Electronic Music', 11, 'Aurora Awakens'),
(3, 2019, 'Electronic Music', 12, 'Frost Patterns'),
(3, 2020, 'Electronic Music', 8, 'Midnight Sun Jazz');

-- Albums for Solar Echoes (ArtistID = 4) - Hip Hop Music
INSERT INTO Album (ArtistID, ReleaseYear, Genre, NumberOfSongs, AlbumName) VALUES
(4, 2015, 'Hip Hop Music', 10, 'Soulful Orbits'),
(4, 2016, 'Hip Hop Music', 11, 'Celestial Rhymes'),
(4, 2017, 'Hip Hop Music', 9, 'Gravity Waves'),
(4, 2018, 'Hip Hop Music', 8, 'Bass Nebula'),
(4, 2019, 'Hip Hop Music', 12, 'Stellar Grooves');

-- Albums for The Mountain Streams (ArtistID = 5) - Jazz
INSERT INTO Album (ArtistID, ReleaseYear, Genre, NumberOfSongs, AlbumName) VALUES
(5, 2018, 'Jazz', 9, 'Riverside Ballads'),
(5, 2019, 'Jazz', 11, 'Highland Echoes'),
(5, 2020, 'Jazz', 10, 'Woodland Chords'),
(5, 2021, 'Jazz', 8, 'Mountain Harmonies'),
(5, 2022, 'Jazz', 7, 'Oceanic Blues');
CREATE TABLE Song (
  SongID INT PRIMARY KEY AUTO_INCREMENT,
  AlbumID INT NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Duration VARCHAR(255),
  Mood VARCHAR(255),
  FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID)
);

-- Songs for AlbumID = 1
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(1, 'Joyful Sunrise', '3:30', 'joy'),
(1, 'Rainy Days', '4:15', 'sad'),
(1, 'City Rush', '3:50', 'anxious'),
(1, 'Dreamy Nights', '5:00', 'dreamy'),
(1, 'Euphoric Heights', '3:25', 'euphoric');

-- Songs for AlbumID = 2
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(2, 'Bright Smiles', '3:40', 'joy'),
(2, 'Melancholic Echo', '4:05', 'sad'),
(2, 'The Waiting Game', '3:55', 'anxious'),
(2, 'Cloudy Imaginations', '5:10', 'dreamy'),
(2, 'Summit Bliss', '3:30', 'euphoric');

-- Songs for AlbumID = 3
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(3, 'Morning Laughter', '3:35', 'joy'),
(3, 'Solitary Reflection', '4:25', 'sad'),
(3, 'Nervous Heartbeat', '3:45', 'anxious'),
(3, 'Lunar Drift', '5:05', 'dreamy'),
(3, 'Rapture Waves', '3:20', 'euphoric');

-- Assume continuation for AlbumIDs 4 through 25
-- Songs for AlbumID = 4
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(4, 'Laughter in the Meadow', '3:45', 'joy'),
(4, 'Twilight Mourning', '4:30', 'sad'),
(4, 'Racing Thoughts', '3:35', 'anxious'),
(4, 'Whispers of the Forest', '5:15', 'dreamy'),
(4, 'Peak of Elation', '3:20', 'euphoric');

-- Songs for AlbumID = 5
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(5, 'Sunrise Serenade', '3:50', 'joy'),
(5, 'Evening Sighs', '4:10', 'sad'),
(5, 'Hustle of Dreams', '3:40', 'anxious'),
(5, 'Misty Visions', '5:20', 'dreamy'),
(5, 'Gleeful Dance', '3:15', 'euphoric');

-- Songs for AlbumID = 6
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(6, 'Harbor Joy', '3:50', 'joy'),
(6, 'Lost in the Rain', '4:00', 'sad'),
(6, 'Crowded Silence', '3:30', 'anxious'),
(6, 'Celestial Dreams', '5:00', 'dreamy'),
(6, 'Triumph Call', '3:20', 'euphoric');

-- Songs for AlbumID = 10
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(10, 'Festival of Joy', '3:55', 'joy'),
(10, 'Shadows Retreat', '4:05', 'sad'),
(10, 'Edge of Thoughts', '3:25', 'anxious'),
(10, 'Nebula Dream', '4:50', 'dreamy'),
(10, 'Victory Lap', '3:10', 'euphoric');

-- Songs for AlbumID = 15
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(15, 'Morning Glory', '3:45', 'joy'),
(15, 'Evening Blues', '4:15', 'sad'),
(15, 'Anticipation', '3:35', 'anxious'),
(15, 'Lullaby of the Moon', '5:05', 'dreamy'),
(15, 'Summit Joy', '3:25', 'euphoric');

-- Songs for AlbumID = 20
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(20, 'Spring Awakening', '3:40', 'joy'),
(20, 'Nightfall Mourning', '4:10', 'sad'),
(20, 'The Rush Within', '3:20', 'anxious'),
(20, 'Stargazer Dreams', '5:10', 'dreamy'),
(20, 'Euphoria Rise', '3:15', 'euphoric');

-- Songs for AlbumID = 25
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(25, 'Sunset Smiles', '3:50', 'joy'),
(25, 'Rainy Reflections', '4:20', 'sad'),
(25, 'Whirlwind Thoughts', '3:40', 'anxious'),
(25, 'Dreams of the Deep', '4:55', 'dreamy'),
(25, 'Blissful Summit', '3:30', 'euphoric');

-- Songs for AlbumID = 7
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(7, 'Joy at Dawn', '3:45', 'joy'),
(7, 'Misty Mornings', '4:10', 'sad'),
(7, 'Anxious Shadows', '3:50', 'anxious'),
(7, 'Dreamy Horizons', '5:15', 'dreamy'),
(7, 'Euphoric Light', '3:25', 'euphoric');

-- Songs for AlbumID = 8
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(8, 'Bright Day Joy', '3:40', 'joy'),
(8, 'Evening Lows', '4:05', 'sad'),
(8, 'Rustling Fears', '3:55', 'anxious'),
(8, 'Gentle Dreams', '5:10', 'dreamy'),
(8, 'Euphoric Nights', '3:30', 'euphoric');

-- Songs for AlbumID = 9
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(9, 'Sunrise Laughter', '3:35', 'joy'),
(9, 'Raindrop Blues', '4:00', 'sad'),
(9, 'Pacing Thoughts', '3:45', 'anxious'),
(9, 'Starry Dreams', '5:05', 'dreamy'),
(9, 'Euphoric Echoes', '3:20', 'euphoric');

-- Songs for AlbumID = 11
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(11, 'Morning Joy', '3:30', 'joy'),
(11, 'Twilight Sadness', '4:15', 'sad'),
(11, 'Anxious Beats', '3:40', 'anxious'),
(11, 'Dreamy Glow', '5:00', 'dreamy'),
(11, 'Euphoric Rhythms', '3:25', 'euphoric');

INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(12, 'Gleeful Daybreak', '3:50', 'joy'),
(12, 'Dusk Sorrows', '4:10', 'sad'),
(12, 'Worry Waves', '3:55', 'anxious'),
(12, 'Lullabies of Light', '5:00', 'dreamy'),
(12, 'Summit Bliss', '3:30', 'euphoric');

-- Songs for AlbumID = 13
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(13, 'Joyous Journey', '3:45', 'joy'),
(13, 'Solace in Shadows', '4:05', 'sad'),
(13, 'Echoes of Anxiety', '3:50', 'anxious'),
(13, 'Dream Weaver', '5:10', 'dreamy'),
(13, 'Euphoria Unleashed', '3:25', 'euphoric');

-- Songs for AlbumID = 14
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(14, 'Laughter Lines', '3:55', 'joy'),
(14, 'Serenade for the Sorrowful', '4:00', 'sad'),
(14, 'The Edge of Restlessness', '3:45', 'anxious'),
(14, 'Nebulous Nights', '5:05', 'dreamy'),
(14, 'Euphoric Heights', '3:20', 'euphoric');

-- Songs for AlbumID = 17
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(17, 'Morning Merriment', '3:40', 'joy'),
(17, 'Evening Regrets', '4:15', 'sad'),
(17, 'Turbulent Thoughts', '3:35', 'anxious'),
(17, 'Dreams of the Abyss', '5:00', 'dreamy'),
(17, 'Blissful Zenith', '3:30', 'euphoric');

-- Songs for AlbumID = 18
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(18, 'Daylight Delight', '3:50', 'joy'),
(18, 'Nocturnal Tears', '4:20', 'sad'),
(18, 'Anxiety’s Grip', '3:55', 'anxious'),
(18, 'Dreamscape', '5:15', 'dreamy'),
(18, 'Euphoric Odyssey', '3:25', 'euphoric');

-- Songs for AlbumID = 19
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(19, 'Radiant Revelry', '3:45', 'joy'),
(19, 'Mournful Moon', '4:10', 'sad'),
(19, 'Pensive Pulse', '3:40', 'anxious'),
(19, 'Dreamy Drift', '5:10', 'dreamy'),
(19, 'Euphoria Eclipse', '3:35', 'euphoric');

-- Songs for AlbumID = 21
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(21, 'Bubbling Bliss', '3:55', 'joy'),
(21, 'Sorrow’s Symphony', '4:05', 'sad'),
(21, 'Restless Reverie', '3:50', 'anxious'),
(21, 'Dreamy Depths', '5:00', 'dreamy'),
(21, 'Euphoric Expedition', '3:20', 'euphoric');

-- Songs for AlbumID = 22
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(22, 'Joyous Peaks', '3:40', 'joy'),
(22, 'Twilight Tears', '4:15', 'sad'),
(22, 'Anxious Awakening', '3:45', 'anxious'),
(22, 'Dreamland Dive', '5:05', 'dreamy'),
(22, 'Peak of Pleasure', '3:30', 'euphoric');

-- Songs for AlbumID = 23
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(23, 'Dawn’s Delight', '3:50', 'joy'),
(23, 'Silent Sobs', '4:00', 'sad'),
(23, 'Waves of Worry', '3:55', 'anxious'),
(23, 'Dreamy Dales', '5:15', 'dreamy'),
(23, 'Euphoric Escape', '3:25', 'euphoric');

-- Songs for AlbumID = 24
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(24, 'Exuberant Echoes', '3:45', 'joy'),
(24, 'Soothing Sadness', '4:10', 'sad'),
(24, 'Anxiety in the Air', '3:40', 'anxious'),
(24, 'Dreams of Dawn', '5:00', 'dreamy'),
(24, 'Euphoria in the Ether', '3:35', 'euphoric');
-- Songs for AlbumID = 25
INSERT INTO Song (AlbumID, Title, Duration, Mood) VALUES
(25, 'Sunrise Serenity', '3:50', 'joy'),
(25, 'Evening Elegy', '4:20', 'sad'),
(25, 'Whirls of Worry', '3:45', 'anxious'),
(25, 'Nocturnal Nostalgia', '5:10', 'dreamy'),
(25, 'Zenith of Zeal', '3:30', 'euphoric');

CREATE TABLE Playlist (
  PlaylistID INT PRIMARY KEY AUTO_INCREMENT,
  Username VARCHAR(255) NOT NULL,
  Name VARCHAR(255) NOT NULL,
  FOREIGN KEY (Username) REFERENCES User(Username)
);

INSERT INTO Playlist (Username, Name) VALUES
('johndoe', 'Johns Chill Vibes'),
('johndoe', 'Johns Workout Hits'),

('janedoe', 'Janes Travel Tunes'),
('janedoe', 'Janes Study Music'),

('mikebloom', 'Mikes Party Playlist'),
('mikebloom', 'Mikes Relaxation'),

('emilyrose', 'Emilys Favorites'),
('emilyrose', 'Emilys Throwback'),

('chrisblack', 'Chris Road Trip'),
('chrisblack', 'Chris Classic Rock'),

('laurawhite', 'Lauras Pop Hits'),
('laurawhite', 'Lauras Sleep Sounds'),

('alexsmith', 'Alexs Indie Mix'),
('alexsmith', 'Alexs Jazz Journey'),

('sarahgreen', 'Sarahs Workout Playlist'),
('sarahgreen', 'Sarahs K-Pop Collection'),

('davidlee', 'Davids Samba Rhythms'),
('davidlee', 'Davids Chillout Sessions'),

('lisakim', 'Lisas Top Charts'),
('lisakim', 'Lisas Classical Moods');

CREATE TABLE Friendship (
  Username VARCHAR(255) NOT NULL,
  FriendUsername VARCHAR(255) NOT NULL,
  FOREIGN KEY (Username) REFERENCES User(Username),
  FOREIGN KEY (FriendUsername) REFERENCES User(Username)
);

INSERT INTO Friendship (Username, FriendUsername) VALUES
('johndoe', 'janedoe'),
('johndoe', 'mikebloom'),
('johndoe', 'emilyrose'),
('johndoe', 'chrisblack'),
('johndoe', 'laurawhite'),

('janedoe', 'johndoe'),
('janedoe', 'mikebloom'),
('janedoe', 'emilyrose'),
('janedoe', 'alexsmith'),
('janedoe', 'sarahgreen'),

('mikebloom', 'johndoe'),
('mikebloom', 'janedoe'),
('mikebloom', 'davidlee'),
('mikebloom', 'lisakim'),
('mikebloom', 'laurawhite'),

('emilyrose', 'johndoe'),
('emilyrose', 'chrisblack'),
('emilyrose', 'alexsmith'),
('emilyrose', 'sarahgreen'),
('emilyrose', 'davidlee'),

('chrisblack', 'johndoe'),
('chrisblack', 'emilyrose'),
('chrisblack', 'alexsmith'),
('chrisblack', 'sarahgreen'),
('chrisblack', 'davidlee'),

('laurawhite', 'johndoe'),
('laurawhite', 'janedoe'),
('laurawhite', 'mikebloom'),
('laurawhite', 'emilyrose'),
('laurawhite', 'chrisblack'),

('alexsmith', 'janedoe'),
('alexsmith', 'emilyrose'),
('alexsmith', 'chrisblack'),
('alexsmith', 'sarahgreen'),
('alexsmith', 'davidlee'),

('sarahgreen', 'janedoe'),
('sarahgreen', 'mikebloom'),
('sarahgreen', 'emilyrose'),
('sarahgreen', 'alexsmith'),
('sarahgreen', 'davidlee'),

('davidlee', 'mikebloom'),
('davidlee', 'emilyrose'),
('davidlee', 'chrisblack'),
('davidlee', 'alexsmith'),
('davidlee', 'sarahgreen'),

('lisakim', 'johndoe'),
('lisakim', 'janedoe'),
('lisakim', 'mikebloom'),
('lisakim', 'emilyrose'),
('lisakim', 'chrisblack');

CREATE TABLE Favourites (
  Username VARCHAR(255) NOT NULL,
  SongID INT NOT NULL,
  FOREIGN KEY (Username) REFERENCES User(Username),
  FOREIGN KEY (SongID) REFERENCES Song(SongID)
);

INSERT INTO Favourites (Username, SongID) VALUES
('johndoe', 1),
('johndoe', 12),
('johndoe', 23),
('johndoe', 34),
('johndoe', 45),

('janedoe', 2),
('janedoe', 13),
('janedoe', 24),
('janedoe', 35),
('janedoe', 46),

('mikebloom', 3),
('mikebloom', 14),
('mikebloom', 25),
('mikebloom', 36),
('mikebloom', 47),

('emilyrose', 4),
('emilyrose', 15),
('emilyrose', 26),
('emilyrose', 37),
('emilyrose', 48),

('chrisblack', 5),
('chrisblack', 16),
('chrisblack', 27),
('chrisblack', 38),
('chrisblack', 49),

('laurawhite', 6),
('laurawhite', 17),
('laurawhite', 28),
('laurawhite', 39),
('laurawhite', 50),

('alexsmith', 7),
('alexsmith', 18),
('alexsmith', 29),
('alexsmith', 40),
('alexsmith', 51),

('sarahgreen', 8),
('sarahgreen', 19),
('sarahgreen', 30),
('sarahgreen', 41),
('sarahgreen', 52),

('davidlee', 9),
('davidlee', 20),
('davidlee', 31),
('davidlee', 42),
('davidlee', 53),

('lisakim', 10),
('lisakim', 21),
('lisakim', 32),
('lisakim', 43),
('lisakim', 54);


CREATE TABLE song_playlist(
songID INT not null,
PlaylistID INT,
FOREIGN KEY (songID) REFERENCES song(songID),
FOREIGN KEY(PlaylistID) REFERENCES Playlist(PlaylistID)
 );

-- PlaylistID = 1
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- PlaylistID = 2
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2);

-- PlaylistID = 3
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3);

-- PlaylistID = 4
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4);

INSERT INTO song_playlist (songID, PlaylistID) VALUES
(96, 20),
(97, 20),
(98, 20),
(99, 20),
(100, 20);
-- PlaylistID = 5
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5);

-- PlaylistID = 6
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6);

-- PlaylistID = 7
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7);

-- PlaylistID = 8
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8);

-- PlaylistID = 9
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9);

-- PlaylistID = 10
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10);

-- PlaylistID = 11
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(51, 11),
(52, 11),
(53, 11),
(54, 11),
(55, 11);

-- PlaylistID = 12
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(56, 12),
(57, 12),
(58, 12),
(59, 12),
(60, 12);

-- PlaylistID = 13
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(61, 13),
(62, 13),
(63, 13),
(64, 13),
(65, 13);

-- PlaylistID = 14
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(66, 14),
(67, 14),
(68, 14),
(69, 14),
(70, 14);

-- PlaylistID = 15
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(71, 15),
(72, 15),
(73, 15),
(74, 15),
(75, 15);

-- PlaylistID = 16
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(76, 16),
(77, 16),
(78, 16),
(79, 16),
(80, 16);

-- PlaylistID = 17
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(81, 17),
(82, 17),
(83, 17),
(84, 17),
(85, 17);

-- PlaylistID = 18
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(86, 18),
(87, 18),
(88, 18),
(89, 18),
(90, 18);

-- PlaylistID = 19
INSERT INTO song_playlist (songID, PlaylistID) VALUES
(91, 19),
(92, 19),
(93, 19),
(94, 19),
(95, 19);

update artist set name='Taylor Swift' where Artistid=1;
update artist set name='Eminem' where Artistid=2;
update artist set name='Weekend' where Artistid=3;
update artist set name='Adele' where Artistid=4;
update artist set name='Lana Del ray' where Artistid=5;

CREATE TABLE education_hub (
    mentor_id INT AUTO_INCREMENT PRIMARY KEY,
    Username varchar(255),
    tutorials VARCHAR(100),
    virtualworkshops VARCHAR(100),
    interactivelessons VARCHAR(100),
    FOREIGN KEY (Username) REFERENCES User(Username)
);

INSERT INTO education_hub (mentor_id, Username, tutorials, virtualworkshops, interactivelessons)
VALUES
(1, (SELECT Username FROM User WHERE Username = 'johndoe'), 'Introduction to Music Theory', 'Virtual Workshop: Basics of Piano', 'Interactive Lesson: Understanding Chords'),
(2, (SELECT Username FROM User WHERE Username = 'janedoe'), 'Advanced Music Composition Techniques', 'Virtual Workshop: Jazz Improvisation', 'Interactive Lesson: Composition Analysis'),
(3, (SELECT Username FROM User WHERE Username = 'mikebloom'), 'Mastering Rhythm and Timing', 'Virtual Workshop: Drumming Techniques', 'Interactive Lesson: Metronome Exercises'),
(4, (SELECT Username FROM User WHERE Username = 'emilyrose'), 'Fundamentals of Harmony', 'Virtual Workshop: Vocal Techniques', 'Interactive Lesson: Harmonic Progressions'),
(5, (SELECT Username FROM User WHERE Username = 'chrisblack'), 'Music Notation and Sight-Reading', 'Virtual Workshop: Guitar Techniques', 'Interactive Lesson: Reading Sheet Music'),
(6, (SELECT Username FROM User WHERE Username = 'laurawhite'), 'Music Production Essentials', 'Virtual Workshop: Mixing and Mastering', 'Interactive Lesson: MIDI Programming'),
(7, (SELECT Username FROM User WHERE Username = 'alexsmith'), 'Songwriting Fundamentals', 'Virtual Workshop: Lyric Writing', 'Interactive Lesson: Melody Construction'),
(8, (SELECT Username FROM User WHERE Username = 'sarahgreen'), 'Exploring World Music Traditions', 'Virtual Workshop: African Drumming', 'Interactive Lesson: Indian Classical Music'),
(9, (SELECT Username FROM User WHERE Username = 'davidlee'), 'Understanding Music Technology', 'Virtual Workshop: DAW Basics', 'Interactive Lesson: Synthesizer Fundamentals'),
(10, (SELECT Username FROM User WHERE Username = 'lisakim'), 'Music Business and Marketing Strategies', 'Virtual Workshop: Building Your Brand', 'Interactive Lesson: Copyright Law');

-- Create the podcast table
CREATE TABLE podcast (
    podcast_id INT AUTO_INCREMENT PRIMARY KEY,
    podcaster_name VARCHAR(50),
    podcast_name VARCHAR(100)
);

-- Insert data for podcaster 1
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(1, 'John Doe', 'Artificial Intelligence'),
(2, 'John Doe', 'Blockchain Technology'),
(3, 'John Doe', 'Cybersecurity');

-- Insert data for podcaster 2
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(4, 'Jane Smith', 'Mental Health Awareness'),
(5, 'Jane Smith', 'Stress Management'),
(6, 'Jane Smith', 'Self-Care Techniques');

-- Insert data for podcaster 3
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(7, 'Michael Johnson', 'Football Analysis'),
(8, 'Michael Johnson', 'Basketball Highlights'),
(9, 'Michael Johnson', 'Baseball Updates');

-- Insert data for podcaster 4
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(10, 'Emily Brown', 'Classic Literature'),
(11, 'Emily Brown', 'Fantasy Novels'),
(12, 'Emily Brown', 'Mystery Thrillers');

-- Insert data for podcaster 5
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(13, 'David Garcia', 'Investment Strategies'),
(14, 'David Garcia', 'Personal Finance Tips'),
(15, 'David Garcia', 'Retirement Planning');

-- Insert data for podcaster 6
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(16, 'Samantha White', 'Nutrition Facts'),
(17, 'Samantha White', 'Fitness Workouts'),
(18, 'Samantha White', 'Wellness Trends');

-- Insert data for podcaster 7
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(19, 'Chris Adams', 'Startup Stories'),
(20, 'Chris Adams', 'Business Growth Hacks'),
(21, 'Chris Adams', 'Leadership Lessons');

-- Insert data for podcaster 8
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(22, 'Sophia Johnson', 'Destination Guides'),
(23, 'Sophia Johnson', 'Adventure Stories'),
(24, 'Sophia Johnson', 'Cultural Experiences');

-- Insert data for podcaster 9
INSERT INTO podcast (podcast_id, podcaster_name, podcast_name) VALUES
(25, 'Robert Miller', 'Ancient Civilizations'),
(26, 'Robert Miller', 'Medieval Europe'),
(27, 'Robert Miller', 'World War II');

-- Create the instruments table
CREATE TABLE instruments (
    instrument_no INT AUTO_INCREMENT PRIMARY KEY,
    instrument_name VARCHAR(50),
    song_name VARCHAR(100)
);

-- Insert data for instrument 1
INSERT INTO instruments (instrument_no, instrument_name, song_name) VALUES
(1, 'Piano', 'Moonlight Sonata'),
(2, 'Piano', 'Für Elise'),
(3, 'Piano', 'Clair de Lune'),
(4, 'Piano', 'Nocturne in E-flat Major, Op. 9, No. 2'),
(5, 'Piano', 'Prelude in C-sharp Minor, Op. 3, No. 2');

-- Insert data for instrument 2
INSERT INTO instruments (instrument_no, instrument_name, song_name) VALUES
(6, 'Guitar', 'Stairway to Heaven'),
(7, 'Guitar', 'Hotel California'),
(8, 'Guitar', 'Wonderwall'),
(9, 'Guitar', 'Sweet Child o\' Mine'),
(10, 'Guitar', 'Blackbird');

-- Insert data for instrument 3
INSERT INTO instruments (instrument_no, instrument_name, song_name) VALUES
(11, 'Violin', 'Canon in D'),
(12, 'Violin', 'The Four Seasons'),
(13, 'Violin', 'Symphony No. 5'),
(14, 'Violin', 'Carmen Suite No. 1'),
(15, 'Violin', 'Concerto for Two Violins in D minor');

-- Insert data for instrument 4
INSERT INTO instruments (instrument_no, instrument_name, song_name) VALUES
(16, 'Drums', 'In the Air Tonight'),
(17, 'Drums', 'Enter Sandman'),
(18, 'Drums', 'YYZ'),
(19, 'Drums', 'Smells Like Teen Spirit'),
(20, 'Drums', 'Back in Black');

-- Insert data for instrument 5
INSERT INTO instruments (instrument_no, instrument_name, song_name) VALUES
(21, 'Saxophone', 'Careless Whisper'),
(22, 'Saxophone', 'Baker Street'),
(23, 'Saxophone', 'Take Five'),
(24, 'Saxophone', 'Smooth Operator'),
(25, 'Saxophone', 'I Will Always Love You');