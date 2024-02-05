CREATE SCHEMA IF NOT EXISTS sem_1;

DROP TABLE IF EXISTS sem_1.movies;
CREATE TABLE sem_1.movies (
    title VARCHAR(100),
    release_year INTEGER,
    duration_min INTEGER,
    genre VARCHAR,
    rating NUMERIC,
    director VARCHAR(50),
    star_1 VARCHAR(50),
    star_2 VARCHAR(50)
);

INSERT INTO sem_1.movies VALUES
('The Shawshank Redemption', 1994, 142, 'Drama', 9.3, 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman'),
('The Godfather', 1972, 175, 'Crime, Drama', 9.2, 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino'),
('The Dark Knight', 2008, 152, 'Action, Crime, Drama', 9.0, 'Christopher Nolan', 'Christian Bale', 'Heath Ledger'),
('The Godfather: Part II', 1974, 202, 'Crime, Drama', 9.0, 'Francis Ford Coppola', 'Al Pacino', 'Robert De Niro'),
('12 Angry Men', 1957, 96, 'Crime, Drama', 9.0, 'Sidney Lumet', 'Henry Fonda', 'Lee J. Cobb'),
('The Lord of the Rings: The Return of the King', 2003, 201, 'Action, Adventure, Drama', 8.9, 'Peter Jackson', 'Elijah Wood', 'Viggo Mortensen'),
('Pulp Fiction', 1994, 154, 'Crime, Drama', 8.9, 'Quentin Tarantino', 'John Travolta', 'Uma Thurman'),
('Schindler''s List', 1993, 195, 'Biography, Drama, History', 8.9, 'Steven Spielberg', 'Liam Neeson', 'Ralph Fiennes'),
('Inception', 2010, 148, 'Action, Adventure, Sci-Fi', 8.8, 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt'),
('Fight Club', 1999, 139, 'Drama', 8.8, 'David Fincher', 'Brad Pitt', 'Edward Norton'),
('The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'Action, Adventure, Drama', 8.8, 'Peter Jackson', 'Elijah Wood', 'Ian McKellen'),
('Forrest Gump', 1994, 142, 'Drama, Romance', 8.8, 'Robert Zemeckis', 'Tom Hanks', 'Robin Wright'),
('Il buono, il brutto, il cattivo', 1966, 161, 'Western', 8.8, 'Sergio Leone', 'Clint Eastwood', 'Eli Wallach'),
('The Lord of the Rings: The Two Towers', 2002, 179, 'Action, Adventure, Drama', 8.7, 'Peter Jackson', 'Elijah Wood', 'Ian McKellen'),
('The Matrix', 1999, 136, 'Action, Sci-Fi', 8.7, 'Lana Wachowski', 'Lilly Wachowski', 'Keanu Reeves'),
('Goodfellas', 1990, 146, 'Biography, Crime, Drama', 8.7, 'Martin Scorsese', 'Robert De Niro', 'Ray Liotta'),
('Star Wars: Episode V - The Empire Strikes Back', 1980, 124, 'Action, Adventure, Fantasy', 8.7, 'Irvin Kershner', 'Mark Hamill', 'Harrison Ford'),
('One Flew Over the Cuckoo''s Nest', 1975, 133, 'Drama', 8.7, 'Milos Forman', 'Jack Nicholson', 'Louise Fletcher'),
('Hamilton', 2020, 160, 'Biography, Drama, History', 8.6, 'Thomas Kail', 'Lin-Manuel Miranda', 'Phillipa Soo'),
('Gisaengchung', 2019, 132, 'Comedy, Drama, Thriller', 8.6, 'Bong Joon Ho', 'Kang-ho Song', 'Lee Sun-kyun'),
('Soorarai Pottru', 2020, 153, 'Drama', 8.6, 'Sudha Kongara', 'Suriya', 'Madhavan'),
('Interstellar', 2014, 169, 'Adventure, Drama, Sci-Fi', 8.6, 'Christopher Nolan', 'Matthew McConaughey', 'Anne Hathaway'),
('Cidade de Deus', 2002, 130, 'Crime, Drama', 8.6, 'Fernando Meirelles', 'Kátia Lund', 'Alexandre Rodrigues'),
('Sen to Chihiro no kamikakushi', 2001, 125, 'Animation, Adventure, Family', 8.6, 'Hayao Miyazaki', 'Daveigh Chase', 'Suzanne Pleshette'),
('Saving Private Ryan', 1998, 169, 'Drama, War', 8.6, 'Steven Spielberg', 'Tom Hanks', 'Matt Damon'),
('The Green Mile', 1999, 189, 'Crime, Drama, Fantasy', 8.6, 'Frank Darabont', 'Tom Hanks', 'Michael Clarke Duncan'),
('La vita è bella', 1997, 116, 'Comedy, Drama, Romance', 8.6, 'Roberto Benigni', 'Roberto Benigni', 'Nicoletta Braschi'),
('Se7en', 1995, 127, 'Crime, Drama, Mystery', 8.6, 'David Fincher', 'Morgan Freeman', 'Brad Pitt'),
('The Silence of the Lambs', 1991, 118, 'Crime, Drama, Thriller', 8.6, 'Jonathan Demme', 'Jodie Foster', 'Anthony Hopkins'),
('Star Wars', 1977, 121, 'Action, Adventure, Fantasy', 8.6, 'George Lucas', 'Mark Hamill', 'Harrison Ford'),
('Seppuku', 1962, 133, 'Action, Drama, Mystery', 8.6, 'Masaki Kobayashi', 'Tatsuya Nakadai', 'Akira Ishihama'),
('Shichinin no samurai', 1954, 207, 'Action, Adventure, Drama', 8.6, 'Akira Kurosawa', 'Toshirô Mifune', 'Takashi Shimura'),
('It''s a Wonderful Life', 1946, 130, 'Drama, Family, Fantasy', 8.6, 'Frank Capra', 'James Stewart', 'Donna Reed'),
('Joker', 2019, 122, 'Crime, Drama, Thriller', 8.5, 'Todd Phillips', 'Joaquin Phoenix', 'Robert De Niro'),
('Whiplash', 2014, 106, 'Drama, Music', 8.5, 'Damien Chazelle', 'Miles Teller', 'J.K. Simmons'),
('The Intouchables', 2011, 112, 'Biography, Comedy, Drama', 8.5, 'Olivier Nakache', 'Éric Toledano', 'François Cluzet'),
('The Prestige', 2006, 130, 'Drama, Mystery, Sci-Fi', 8.5, 'Christopher Nolan', 'Christian Bale', 'Hugh Jackman'),
('The Departed', 2006, 151, 'Crime, Drama, Thriller', 8.5, 'Martin Scorsese', 'Leonardo DiCaprio', 'Matt Damon'),
('The Pianist', 2002, 150, 'Biography, Drama, Music', 8.5, 'Roman Polanski', 'Adrien Brody', 'Thomas Kretschmann'),
('Gladiator', 2000, 155, 'Action, Adventure, Drama', 8.5, 'Ridley Scott', 'Russell Crowe', 'Joaquin Phoenix'),
('American History X', 1998, 119, 'Drama', 8.5, 'Tony Kaye', 'Edward Norton', 'Edward Furlong'),
('The Usual Suspects', 1995, 106, 'Crime, Mystery, Thriller', 8.5, 'Bryan Singer', 'Kevin Spacey', 'Gabriel Byrne'),
('Léon', 1994, 110, 'Action, Crime, Drama', 8.5, 'Luc Besson', 'Jean Reno', 'Gary Oldman'),
('The Lion King', 1994, 88, 'Animation, Adventure, Drama', 8.5, 'Roger Allers', 'Rob Minkoff', 'Matthew Broderick'),
('Terminator 2: Judgment Day', 1991, 137, 'Action, Sci-Fi', 8.5, 'James Cameron', 'Arnold Schwarzenegger', 'Linda Hamilton'),
('Nuovo Cinema Paradiso', 1988, 155, 'Drama, Romance', 8.5, 'Giuseppe Tornatore', 'Philippe Noiret', 'Enzo Cannavale'),
('Hotaru no haka', 1988, 89, 'Animation, Drama, War', 8.5, 'Isao Takahata', 'Tsutomu Tatsumi', 'Ayano Shiraishi'),
('Back to the Future', 1985, 116, 'Adventure, Comedy, Sci-Fi', 8.5, 'Robert Zemeckis', 'Michael J. Fox', 'Christopher Lloyd'),
('Once Upon a Time in the West', 1968, 165, 'Western', 8.5, 'Sergio Leone', 'Henry Fonda', 'Charles Bronson'),
('Psycho', 1960, 109, 'Horror, Mystery, Thriller', 8.5, 'Alfred Hitchcock', 'Anthony Perkins', 'Janet Leigh'),
('Casablanca', 1942, 102, 'Drama, Romance, War', 8.5, 'Michael Curtiz', 'Humphrey Bogart', 'Ingrid Bergman'),
('Modern Times', 1936, 87, 'Comedy, Drama, Family', 8.5, 'Charles Chaplin', 'Charles Chaplin', 'Paulette Goddard'),
('City Lights', 1931, 87, 'Comedy, Drama, Romance', 8.5, 'Charles Chaplin', 'Charles Chaplin', 'Virginia Cherrill'),
('Capharnaüm', 2018, 126, 'Drama', 8.4, 'Nadine Labaki', 'Zain Al Rafeea', 'Yordanos Shiferaw'),
('Ayla: The Daughter of War', 2017, 125, 'Biography, Drama, History', 8.4, 'Can Ulkay', 'Erdem Can', 'Çetin Tekindor'),
('Vikram Vedha', 2017, 147, 'Action, Crime, Drama', 8.4, 'Gayatri', 'Pushkar', 'Madhavan'),
('Kimi no na wa.', 2016, 106, 'Animation, Drama, Fantasy', 8.4, 'Makoto Shinkai', 'Ryûnosuke Kamiki', 'Mone Kamishiraishi'),
('Dangal', 2016, 161, 'Action, Biography, Drama', 8.4, 'Nitesh Tiwari', 'Aamir Khan', 'Sakshi Tanwar'),
('Spider-Man: Into the Spider-Verse', 2018, 117, 'Animation, Action, Adventure', 8.4, 'Bob Persichetti', 'Peter Ramsey', 'Rodney Rothman'),
('Avengers: Endgame', 2019, 181, 'Action, Adventure, Drama', 8.4, 'Anthony Russo', 'Joe Russo', 'Robert Downey Jr.'),
('Avengers: Infinity War', 2018, 149, 'Action, Adventure, Sci-Fi', 8.4, 'Anthony Russo', 'Joe Russo', 'Robert Downey Jr.'),
('Coco', 2017, 105, 'Animation, Adventure, Family', 8.4, 'Lee Unkrich', 'Adrian Molina', 'Anthony Gonzalez'),
('Django Unchained', 2012, 165, 'Drama, Western', 8.4, 'Quentin Tarantino', 'Jamie Foxx', 'Christoph Waltz'),
('The Dark Knight Rises', 2012, 164, 'Action, Adventure', 8.4, 'Christopher Nolan', 'Christian Bale', 'Tom Hardy'),
('3 Idiots', 2009, 170, 'Comedy, Drama', 8.4, 'Rajkumar Hirani', 'Aamir Khan', 'Madhavan'),
('Taare Zameen Par', 2007, 165, 'Drama, Family', 8.4, 'Aamir Khan', 'Amole Gupte', 'Darsheel Safary'),
('WALL·E', 2008, 98, 'Animation, Adventure, Family', 8.4, 'Andrew Stanton', 'Ben Burtt', 'Elissa Knight'),
('The Lives of Others', 2006, 137, 'Drama, Mystery, Thriller', 8.4, 'Florian Henckel von Donnersmarck', 'Ulrich Mühe', 'Martina Gedeck'),
('Oldeuboi', 2003, 101, 'Action, Drama, Mystery', 8.4, 'Chan-wook Park', 'Choi Min-sik', 'Yoo Ji-Tae'),
('Memento', 2000, 113, 'Mystery, Thriller', 8.4, 'Christopher Nolan', 'Guy Pearce', 'Carrie-Anne Moss'),
('Mononoke-hime', 1997, 134, 'Animation, Action, Adventure', 8.4, 'Hayao Miyazaki', 'Yôji Matsuda', 'Yuriko Ishida'),
('Once Upon a Time in America', 1984, 229, 'Crime, Drama', 8.4, 'Sergio Leone', 'Robert De Niro', 'James Woods'),
('Raiders of the Lost Ark', 1981, 115, 'Action, Adventure', 8.4, 'Steven Spielberg', 'Harrison Ford', 'Karen Allen'),
('The Shining', 1980, 146, 'Drama, Horror', 8.4, 'Stanley Kubrick', 'Jack Nicholson', 'Shelley Duvall'),
('Apocalypse Now', 1979, 147, 'Drama, Mystery, War', 8.4, 'Francis Ford Coppola', 'Martin Sheen', 'Marlon Brando'),
('Alien', 1979, 117, 'Horror, Sci-Fi', 8.4, 'Ridley Scott', 'Sigourney Weaver', 'Tom Skerritt'),
('Anand', 1971, 122, 'Drama, Musical', 8.4, 'Hrishikesh Mukherjee', 'Rajesh Khanna', 'Amitabh Bachchan'),
('Tengoku to jigoku', 1963, 143, 'Crime, Drama, Mystery', 8.4, 'Akira Kurosawa', 'Toshirô Mifune', 'Yutaka Sada'),
('Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 1964, 95, 'Comedy', 8.4, 'Stanley Kubrick', 'Peter Sellers', 'George C. Scott'),
('Witness for the Prosecution', 1957, 116, 'Crime, Drama, Mystery', 8.4, 'Billy Wilder', 'Tyrone Power', 'Marlene Dietrich'),
('Paths of Glory', 1957, 88, 'Drama, War', 8.4, 'Stanley Kubrick', 'Kirk Douglas', 'Ralph Meeker'),
('Rear Window', 1954, 112, 'Mystery, Thriller', 8.4, 'Alfred Hitchcock', 'James Stewart', 'Grace Kelly'),
('Sunset Blvd.', 1950, 110, 'Drama, Film-Noir', 8.4, 'Billy Wilder', 'William Holden', 'Gloria Swanson'),
('The Great Dictator', 1940, 125, 'Comedy, Drama, War', 8.4, 'Charles Chaplin', 'Charles Chaplin', 'Paulette Goddard'),
('1917', 2019, 119, 'Drama, Thriller, War', 8.3, 'Sam Mendes', 'Dean-Charles Chapman', 'George MacKay'),
('Tumbbad', 2018, 104, 'Drama, Fantasy, Horror', 8.3, 'Rahi Anil Barve', 'Anand Gandhi', 'Adesh Prasad'),
('Andhadhun', 2018, 139, 'Crime, Drama, Music', 8.3, 'Sriram Raghavan', 'Ayushmann Khurrana', 'Tabu'),
('Drishyam', 2013, 160, 'Crime, Drama, Thriller', 8.3, 'Jeethu Joseph', 'Mohanlal', 'Meena'),
('Jagten', 2012, 115, 'Drama', 8.3, 'Thomas Vinterberg', 'Mads Mikkelsen', 'Thomas Bo Larsen'),
('Jodaeiye Nader az Simin', 2011, 123, 'Drama', 8.3, 'Asghar Farhadi', 'Payman Maadi', 'Leila Hatami'),
('Incendies', 2010, 131, 'Drama, Mystery, War', 8.3, 'Denis Villeneuve', 'Lubna Azabal', 'Mélissa Désormeaux-Poulin'),
('Miracle in cell NO.7', 2019, 132, 'Drama', 8.3, 'Mehmet Ada Öztekin', 'Aras Bulut Iynemli', 'Nisa Sofiya Aksongur'),
('Babam ve Oglum', 2005, 112, 'Drama, Family', 8.3, 'Çagan Irmak', 'Çetin Tekindor', 'Fikret Kuskan'),
('Inglourious Basterds', 2009, 153, 'Adventure, Drama, War', 8.3, 'Quentin Tarantino', 'Brad Pitt', 'Diane Kruger'),
('Eternal Sunshine of the Spotless Mind', 2004, 108, 'Drama, Romance, Sci-Fi', 8.3, 'Michel Gondry', 'Jim Carrey', 'Kate Winslet'),
('Amélie', 2001, 122, 'Comedy, Romance', 8.3, 'Jean-Pierre Jeunet', 'Audrey Tautou', 'Mathieu Kassovitz'),
('Snatch', 2000, 104, 'Comedy, Crime', 8.3, 'Guy Ritchie', 'Jason Statham', 'Brad Pitt'),
('Requiem for a Dream', 2000, 102, 'Drama', 8.3, 'Darren Aronofsky', 'Ellen Burstyn', 'Jared Leto'),
('American Beauty', 1999, 122, 'Drama', 8.3, 'Sam Mendes', 'Kevin Spacey', 'Annette Bening'),
('Good Will Hunting', 1997, 126, 'Drama, Romance', 8.3, 'Gus Van Sant', 'Robin Williams', 'Matt Damon'),
('Bacheha-Ye aseman', 1997, 89, 'Drama, Family, Sport', 8.3, 'Majid Majidi', 'Mohammad Amir Naji', 'Amir Farrokh Hashemian'),
('Toy Story', 1995, 81, 'Animation, Adventure, Comedy', 8.3, 'John Lasseter', 'Tom Hanks', 'Tim Allen'),
('Braveheart', 1995, 178, 'Biography, Drama, History', 8.3, 'Mel Gibson', 'Mel Gibson', 'Sophie Marceau'),
('Reservoir Dogs', 1992, 99, 'Crime, Drama, Thriller', 8.3, 'Quentin Tarantino', 'Harvey Keitel', 'Tim Roth'),
('Full Metal Jacket', 1987, 116, 'Drama, War', 8.3, 'Stanley Kubrick', 'Matthew Modine', 'R. Lee Ermey'),
('Idi i smotri', 1985, 142, 'Drama, Thriller, War', 8.3, 'Elem Klimov', 'Aleksey Kravchenko', 'Olga Mironova'),
('Aliens', 1986, 137, 'Action, Adventure, Sci-Fi', 8.3, 'James Cameron', 'Sigourney Weaver', 'Michael Biehn'),
('Amadeus', 1984, 160, 'Biography, Drama, History', 8.3, 'Milos Forman', 'F. Murray Abraham', 'Tom Hulce'),
('Scarface', 1983, 170, 'Crime, Drama', 8.3, 'Brian De Palma', 'Al Pacino', 'Michelle Pfeiffer'),
('Star Wars: Episode VI - Return of the Jedi', 1983, 131, 'Action, Adventure, Fantasy', 8.3, 'Richard Marquand', 'Mark Hamill', 'Harrison Ford'),
('Das Boot', 1981, 149, 'Adventure, Drama, Thriller', 8.3, 'Wolfgang Petersen', 'Jürgen Prochnow', 'Herbert Grönemeyer'),
('Taxi Driver', 1976, 114, 'Crime, Drama', 8.3, 'Martin Scorsese', 'Robert De Niro', 'Jodie Foster'),
('The Sting', 1973, 129, 'Comedy, Crime, Drama', 8.3, 'George Roy Hill', 'Paul Newman', 'Robert Redford'),
('A Clockwork Orange', 1971, 136, 'Crime, Drama, Sci-Fi', 8.3, 'Stanley Kubrick', 'Malcolm McDowell', 'Patrick Magee'),
('2001: A Space Odyssey', 1968, 149, 'Adventure, Sci-Fi', 8.3, 'Stanley Kubrick', 'Keir Dullea', 'Gary Lockwood'),
('Per qualche dollaro in più', 1965, 132, 'Western', 8.3, 'Sergio Leone', 'Clint Eastwood', 'Lee Van Cleef'),
('Lawrence of Arabia', 1962, 228, 'Adventure, Biography, Drama', 8.3, 'David Lean', 'Peter O''Toole', 'Alec Guinness'),
('The Apartment', 1960, 125, 'Comedy, Drama, Romance', 8.3, 'Billy Wilder', 'Jack Lemmon', 'Shirley MacLaine'),
('North by Northwest', 1959, 136, 'Adventure, Mystery, Thriller', 8.3, 'Alfred Hitchcock', 'Cary Grant', 'Eva Marie Saint'),
('Vertigo', 1958, 128, 'Mystery, Romance, Thriller', 8.3, 'Alfred Hitchcock', 'James Stewart', 'Kim Novak'),
('Singin'' in the Rain', 1952, 103, 'Comedy, Musical, Romance', 8.3, 'Stanley Donen', 'Gene Kelly', 'Gene Kelly'),
('Ikiru', 1952, 143, 'Drama', 8.3, 'Akira Kurosawa', 'Takashi Shimura', 'Nobuo Kaneko'),
('Ladri di biciclette', 1948, 89, 'Drama', 8.3, 'Vittorio De Sica', 'Lamberto Maggiorani', 'Enzo Staiola'),
('Double Indemnity', 1944, 107, 'Crime, Drama, Film-Noir', 8.3, 'Billy Wilder', 'Fred MacMurray', 'Barbara Stanwyck'),
('Citizen Kane', 1941, 119, 'Drama, Mystery', 8.3, 'Orson Welles', 'Orson Welles', 'Joseph Cotten'),
('M - Eine Stadt sucht einen Mörder', 1931, 117, 'Crime, Mystery, Thriller', 8.3, 'Fritz Lang', 'Peter Lorre', 'Ellen Widmann'),
('Metropolis', 1927, 153, 'Drama, Sci-Fi', 8.3, 'Fritz Lang', 'Brigitte Helm', 'Alfred Abel'),
('The Kid', 1921, 68, 'Comedy, Drama, Family', 8.3, 'Charles Chaplin', 'Charles Chaplin', 'Edna Purviance'),
('Chhichhore', 2019, 143, 'Comedy, Drama', 8.2, 'Nitesh Tiwari', 'Sushant Singh Rajput', 'Shraddha Kapoor'),
('Uri: The Surgical Strike', 2018, 138, 'Action, Drama, War', 8.2, 'Aditya Dhar', 'Vicky Kaushal', 'Paresh Rawal'),
('K.G.F: Chapter 1', 2018, 156, 'Action, Drama', 8.2, 'Prashanth Neel', 'Yash', 'Srinidhi Shetty'),
('Green Book', 2018, 130, 'Biography, Comedy, Drama', 8.2, 'Peter Farrelly', 'Viggo Mortensen', 'Mahershala Ali'),
('Three Billboards Outside Ebbing, Missouri', 2017, 115, 'Comedy, Crime, Drama', 8.2, 'Martin McDonagh', 'Frances McDormand', 'Woody Harrelson'),
('Talvar', 2015, 132, 'Crime, Drama, Mystery', 8.2, 'Meghna Gulzar', 'Irrfan Khan', 'Konkona Sen Sharma'),
('Baahubali 2: The Conclusion', 2017, 167, 'Action, Drama', 8.2, 'S.S. Rajamouli', 'Prabhas', 'Rana Daggubati'),
('Klaus', 2019, 96, 'Animation, Adventure, Comedy', 8.2, 'Sergio Pablos', 'Carlos Martínez López', 'Jason Schwartzman'),
('Drishyam', 2015, 163, 'Crime, Drama, Mystery', 8.2, 'Nishikant Kamat', 'Ajay Devgn', 'Shriya Saran'),
('Queen', 2013, 146, 'Adventure, Comedy, Drama', 8.2, 'Vikas Bahl', 'Kangana Ranaut', 'Rajkummar Rao'),
('Mandariinid', 2013, 87, 'Drama, War', 8.2, 'Zaza Urushadze', 'Lembit Ulfsak', 'Elmo Nüganen'),
('Bhaag Milkha Bhaag', 2013, 186, 'Biography, Drama, Sport', 8.2, 'Rakeysh Omprakash Mehra', 'Farhan Akhtar', 'Sonam Kapoor'),
('Gangs of Wasseypur', 2012, 321, 'Action, Comedy, Crime', 8.2, 'Anurag Kashyap', 'Manoj Bajpayee', 'Richa Chadha'),
('Udaan', 2010, 134, 'Drama', 8.2, 'Vikramaditya Motwane', 'Rajat Barmecha', 'Ronit Roy'),
('Paan Singh Tomar', 2012, 135, 'Action, Biography, Crime', 8.2, 'Tigmanshu Dhulia', 'Irrfan Khan', 'Mahie Gill'),
('El secreto de sus ojos', 2009, 129, 'Drama, Mystery, Romance', 8.2, 'Juan José Campanella', 'Ricardo Darín', 'Soledad Villamil'),
('Warrior', 2011, 140, 'Action, Drama, Sport', 8.2, 'Gavin O''Connor', 'Tom Hardy', 'Nick Nolte'),
('Shutter Island', 2010, 138, 'Mystery, Thriller', 8.2, 'Martin Scorsese', 'Leonardo DiCaprio', 'Emily Mortimer'),
('Up', 2009, 96, 'Animation, Adventure, Comedy', 8.2, 'Pete Docter', 'Bob Peterson', 'Edward Asner'),
('The Wolf of Wall Street', 2013, 180, 'Biography, Crime, Drama', 8.2, 'Martin Scorsese', 'Leonardo DiCaprio', 'Jonah Hill'),
('Chak De! India', 2007, 153, 'Drama, Family, Sport', 8.2, 'Shimit Amin', 'Shah Rukh Khan', 'Vidya Malvade'),
('There Will Be Blood', 2007, 158, 'Drama', 8.2, 'Paul Thomas Anderson', 'Daniel Day-Lewis', 'Paul Dano'),
('Pan''s Labyrinth', 2006, 118, 'Drama, Fantasy, War', 8.2, 'Guillermo del Toro', 'Ivana Baquero', 'Ariadna Gil'),
('Toy Story 3', 2010, 103, 'Animation, Adventure, Comedy', 8.2, 'Lee Unkrich', 'Tom Hanks', 'Tim Allen'),
('V for Vendetta', 2005, 132, 'Action, Drama, Sci-Fi', 8.2, 'James McTeigue', 'Hugo Weaving', 'Natalie Portman'),
('Rang De Basanti', 2006, 167, 'Comedy, Crime, Drama', 8.2, 'Rakeysh Omprakash Mehra', 'Aamir Khan', 'Soha Ali Khan'),
('Black', 2005, 122, 'Drama', 8.2, 'Sanjay Leela Bhansali', 'Amitabh Bachchan', 'Rani Mukerji'),
('Batman Begins', 2005, 140, 'Action, Adventure', 8.2, 'Christopher Nolan', 'Christian Bale', 'Michael Caine'),
('Swades: We, the People', 2004, 210, 'Drama', 8.2, 'Ashutosh Gowariker', 'Shah Rukh Khan', 'Gayatri Joshi'),
('Der Untergang', 2004, 156, 'Biography, Drama, History', 8.2, 'Oliver Hirschbiegel', 'Bruno Ganz', 'Alexandra Maria Lara'),
('Hauru no ugoku shiro', 2004, 119, 'Animation, Adventure, Family', 8.2, 'Hayao Miyazaki', 'Chieko Baishô', 'Takuya Kimura'),
('A Beautiful Mind', 2001, 135, 'Biography, Drama', 8.2, 'Ron Howard', 'Russell Crowe', 'Ed Harris'),
('Hera Pheri', 2000, 156, 'Action, Comedy, Crime', 8.2, 'Priyadarshan', 'Akshay Kumar', 'Sunil Shetty'),
('Lock, Stock and Two Smoking Barrels', 1998, 107, 'Action, Comedy, Crime', 8.2, 'Guy Ritchie', 'Jason Flemyng', 'Dexter Fletcher'),
('L.A. Confidential', 1997, 138, 'Crime, Drama, Mystery', 8.2, 'Curtis Hanson', 'Kevin Spacey', 'Russell Crowe'),
('Eskiya', 1996, 128, 'Crime, Drama, Thriller', 8.2, 'Yavuz Turgul', 'Sener Sen', 'Ugur Yücel'),
('Heat', 1995, 170, 'Crime, Drama, Thriller', 8.2, 'Michael Mann', 'Al Pacino', 'Robert De Niro'),
('Casino', 1995, 178, 'Crime, Drama', 8.2, 'Martin Scorsese', 'Robert De Niro', 'Sharon Stone'),
('Andaz Apna Apna', 1994, 160, 'Action, Comedy, Romance', 8.2, 'Rajkumar Santoshi', 'Aamir Khan', 'Salman Khan'),
('Unforgiven', 1992, 130, 'Drama, Western', 8.2, 'Clint Eastwood', 'Clint Eastwood', 'Gene Hackman'),
('Indiana Jones and the Last Crusade', 1989, 127, 'Action, Adventure', 8.2, 'Steven Spielberg', 'Harrison Ford', 'Sean Connery'),
('Dom za vesanje', 1988, 142, 'Comedy, Crime, Drama', 8.2, 'Emir Kusturica', 'Davor Dujmovic', 'Bora Todorovic'),
('Tonari no Totoro', 1988, 86, 'Animation, Family, Fantasy', 8.2, 'Hayao Miyazaki', 'Hitoshi Takagi', 'Noriko Hidaka'),
('Die Hard', 1988, 132, 'Action, Thriller', 8.2, 'John McTiernan', 'Bruce Willis', 'Alan Rickman'),
('Ran', 1985, 162, 'Action, Drama, War', 8.2, 'Akira Kurosawa', 'Tatsuya Nakadai', 'Akira Terao'),
('Raging Bull', 1980, 129, 'Biography, Drama, Sport', 8.2, 'Martin Scorsese', 'Robert De Niro', 'Cathy Moriarty'),
('Stalker', 1979, 162, 'Drama, Sci-Fi', 8.2, 'Andrei Tarkovsky', 'Alisa Freyndlikh', 'Aleksandr Kaydanovskiy'),
('Höstsonaten', 1978, 99, 'Drama, Music', 8.2, 'Ingmar Bergman', 'Ingrid Bergman', 'Liv Ullmann'),
('The Message', 1976, 177, 'Biography, Drama, History', 8.2, 'Moustapha Akkad', 'Anthony Quinn', 'Irene Papas'),
('Sholay', 1975, 204, 'Action, Adventure, Comedy', 8.2, 'Ramesh Sippy', 'Sanjeev Kumar', 'Dharmendra'),
('Monty Python and the Holy Grail', 1975, 91, 'Adventure, Comedy, Fantasy', 8.2, 'Terry Gilliam', 'Terry Jones', 'Graham Chapman'),
('The Great Escape', 1963, 172, 'Adventure, Drama, History', 8.2, 'John Sturges', 'Steve McQueen', 'James Garner'),
('To Kill a Mockingbird', 1962, 129, 'Crime, Drama', 8.2, 'Robert Mulligan', 'Gregory Peck', 'John Megna'),
('Yôjinbô', 1961, 110, 'Action, Drama, Thriller', 8.2, 'Akira Kurosawa', 'Toshirô Mifune', 'Eijirô Tôno'),
('Judgment at Nuremberg', 1961, 179, 'Drama, War', 8.2, 'Stanley Kramer', 'Spencer Tracy', 'Burt Lancaster'),
('Some Like It Hot', 1959, 121, 'Comedy, Music, Romance', 8.2, 'Billy Wilder', 'Marilyn Monroe', 'Tony Curtis'),
('Smultronstället', 1957, 91, 'Drama, Romance', 8.2, 'Ingmar Bergman', 'Victor Sjöström', 'Bibi Andersson'),
('Det sjunde inseglet', 1957, 96, 'Drama, Fantasy, History', 8.2, 'Ingmar Bergman', 'Max von Sydow', 'Gunnar Björnstrand'),
('Du rififi chez les hommes', 1955, 118, 'Crime, Drama, Thriller', 8.2, 'Jules Dassin', 'Jean Servais', 'Carl Möhner'),
('Dial M for Murder', 1954, 105, 'Crime, Thriller', 8.2, 'Alfred Hitchcock', 'Ray Milland', 'Grace Kelly'),
('Tôkyô monogatari', 1953, 136, 'Drama', 8.2, 'Yasujirô Ozu', 'Chishû Ryû', 'Chieko Higashiyama'),
('Rashômon', 1950, 88, 'Crime, Drama, Mystery', 8.2, 'Akira Kurosawa', 'Toshirô Mifune', 'Machiko Kyô'),
('All About Eve', 1950, 138, 'Drama', 8.2, 'Joseph L. Mankiewicz', 'Bette Davis', 'Anne Baxter'),
('The Treasure of the Sierra Madre', 1948, 126, 'Adventure, Drama, Western', 8.2, 'John Huston', 'Humphrey Bogart', 'Walter Huston'),
('To Be or Not to Be', 1942, 99, 'Comedy, War', 8.2, 'Ernst Lubitsch', 'Carole Lombard', 'Jack Benny'),
('The Gold Rush', 1925, 95, 'Adventure, Comedy, Drama', 8.2, 'Charles Chaplin', 'Charles Chaplin', 'Mack Swain'),
('Sherlock Jr.', 1924, 45, 'Action, Comedy, Romance', 8.2, 'Buster Keaton', 'Buster Keaton', 'Kathryn McGuire'),
('Portrait de la jeune fille en feu', 2019, 122, 'Drama, Romance', 8.1, 'Céline Sciamma', 'Noémie Merlant', 'Adèle Haenel'),
('Pink', 2016, 136, 'Drama, Thriller', 8.1, 'Aniruddha Roy Chowdhury', 'Taapsee Pannu', 'Amitabh Bachchan'),
('Koe no katachi', 2016, 130, 'Animation, Drama, Family', 8.1, 'Naoko Yamada', 'Miyu Irino', 'Saori Hayami'),
('Contratiempo', 2016, 106, 'Crime, Drama, Mystery', 8.1, 'Oriol Paulo', 'Mario Casas', 'Ana Wagener'),
('Ah-ga-ssi', 2016, 145, 'Drama, Romance, Thriller', 8.1, 'Chan-wook Park', 'Kim Min-hee', 'Jung-woo Ha'),
('Mommy', 2014, 139, 'Drama', 8.1, 'Xavier Dolan', 'Anne Dorval', 'Antoine Olivier Pilon'),
('Haider', 2014, 160, 'Action, Crime, Drama', 8.1, 'Vishal Bhardwaj', 'Shahid Kapoor', 'Tabu'),
('Logan', 2017, 137, 'Action, Drama, Sci-Fi', 8.1, 'James Mangold', 'Hugh Jackman', 'Patrick Stewart'),
('Room', 2015, 118, 'Drama, Thriller', 8.1, 'Lenny Abrahamson', 'Brie Larson', 'Jacob Tremblay'),
('Relatos salvajes', 2014, 122, 'Comedy, Drama, Thriller', 8.1, 'Damián Szifron', 'Darío Grandinetti', 'María Marull'),
('Soul', 2020, 100, 'Animation, Adventure, Comedy', 8.1, 'Pete Docter', 'Kemp Powers', 'Jamie Foxx'),
('Kis Uykusu', 2014, 196, 'Drama', 8.1, 'Nuri Bilge Ceylan', 'Haluk Bilginer', 'Melisa Sözen'),
('PK', 2014, 153, 'Comedy, Drama, Musical', 8.1, 'Rajkumar Hirani', 'Aamir Khan', 'Anushka Sharma'),
('OMG: Oh My God!', 2012, 125, 'Comedy, Drama, Fantasy', 8.1, 'Umesh Shukla', 'Paresh Rawal', 'Akshay Kumar'),
('The Grand Budapest Hotel', 2014, 99, 'Adventure, Comedy, Crime', 8.1, 'Wes Anderson', 'Ralph Fiennes', 'F. Murray Abraham'),
('Gone Girl', 2014, 149, 'Drama, Mystery, Thriller', 8.1, 'David Fincher', 'Ben Affleck', 'Rosamund Pike'),
('Ôkami kodomo no Ame to Yuki', 2012, 117, 'Animation, Drama, Fantasy', 8.1, 'Mamoru Hosoda', 'Aoi Miyazaki', 'Takao Osawa'),
('Hacksaw Ridge', 2016, 139, 'Biography, Drama, History', 8.1, 'Mel Gibson', 'Andrew Garfield', 'Sam Worthington'),
('Inside Out', 2015, 95, 'Animation, Adventure, Comedy', 8.1, 'Pete Docter', 'Ronnie Del Carmen', 'Amy Poehler'),
('Barfi!', 2012, 151, 'Comedy, Drama, Romance', 8.1, 'Anurag Basu', 'Ranbir Kapoor', 'Priyanka Chopra'),
('12 Years a Slave', 2013, 134, 'Biography, Drama, History', 8.1, 'Steve McQueen', 'Chiwetel Ejiofor', 'Michael Kenneth Williams'),
('Rush', 2013, 123, 'Action, Biography, Drama', 8.1, 'Ron Howard', 'Daniel Brühl', 'Chris Hemsworth'),
('Ford v Ferrari', 2019, 152, 'Action, Biography, Drama', 8.1, 'James Mangold', 'Matt Damon', 'Christian Bale'),
('Spotlight', 2015, 129, 'Biography, Crime, Drama', 8.1, 'Tom McCarthy', 'Mark Ruffalo', 'Michael Keaton'),
('Song of the Sea', 2014, 93, 'Animation, Adventure, Drama', 8.1, 'Tomm Moore', 'David Rawle', 'Brendan Gleeson'),
('Kahaani', 2012, 122, 'Mystery, Thriller', 8.1, 'Sujoy Ghosh', 'Vidya Balan', 'Parambrata Chattopadhyay'),
('Zindagi Na Milegi Dobara', 2011, 155, 'Comedy, Drama', 8.1, 'Zoya Akhtar', 'Hrithik Roshan', 'Farhan Akhtar'),
('Prisoners', 2013, 153, 'Crime, Drama, Mystery', 8.1, 'Denis Villeneuve', 'Hugh Jackman', 'Jake Gyllenhaal'),
('Mad Max: Fury Road', 2015, 120, 'Action, Adventure, Sci-Fi', 8.1, 'George Miller', 'Tom Hardy', 'Charlize Theron'),
('A Wednesday', 2008, 104, 'Action, Crime, Drama', 8.1, 'Neeraj Pandey', 'Anupam Kher', 'Naseeruddin Shah'),
('Gran Torino', 2008, 116, 'Drama', 8.1, 'Clint Eastwood', 'Clint Eastwood', 'Bee Vang'),
('Harry Potter and the Deathly Hallows: Part 2', 2011, 130, 'Adventure, Drama, Fantasy', 8.1, 'David Yates', 'Daniel Radcliffe', 'Emma Watson'),
('Okuribito', 2008, 130, 'Drama, Music', 8.1, 'Yôjirô Takita', 'Masahiro Motoki', 'Ryôko Hirosue'),
('Hachi: A Dog''s Tale', 2009, 93, 'Biography, Drama, Family', 8.1, 'Lasse Hallström', 'Richard Gere', 'Joan Allen'),
('Mary and Max', 2009, 92, 'Animation, Comedy, Drama', 8.1, 'Adam Elliot', 'Toni Collette', 'Philip Seymour Hoffman'),
('How to Train Your Dragon', 2010, 98, 'Animation, Action, Adventure', 8.1, 'Dean DeBlois', 'Chris Sanders', 'Jay Baruchel'),
('Into the Wild', 2007, 148, 'Adventure, Biography, Drama', 8.1, 'Sean Penn', 'Emile Hirsch', 'Vince Vaughn'),
('No Country for Old Men', 2007, 122, 'Crime, Drama, Thriller', 8.1, 'Ethan Coen', 'Joel Coen', 'Tommy Lee Jones'),
('Lage Raho Munna Bhai', 2006, 144, 'Comedy, Drama, Romance', 8.1, 'Rajkumar Hirani', 'Sanjay Dutt', 'Arshad Warsi'),
('Million Dollar Baby', 2004, 132, 'Drama, Sport', 8.1, 'Clint Eastwood', 'Hilary Swank', 'Clint Eastwood'),
('Hotel Rwanda', 2004, 121, 'Biography, Drama, History', 8.1, 'Terry George', 'Don Cheadle', 'Sophie Okonedo'),
('Taegukgi hwinalrimyeo', 2004, 140, 'Action, Drama, War', 8.1, 'Je-kyu Kang', 'Jang Dong-Gun', 'Won Bin'),
('Before Sunset', 2004, 80, 'Drama, Romance', 8.1, 'Richard Linklater', 'Ethan Hawke', 'Julie Delpy'),
('Munna Bhai M.B.B.S.', 2003, 156, 'Comedy, Drama, Musical', 8.1, 'Rajkumar Hirani', 'Sanjay Dutt', 'Arshad Warsi'),
('Salinui chueok', 2003, 131, 'Crime, Drama, Mystery', 8.1, 'Bong Joon Ho', 'Kang-ho Song', 'Kim Sang-kyung'),
('Dil Chahta Hai', 2001, 183, 'Comedy, Drama, Romance', 8.1, 'Farhan Akhtar', 'Aamir Khan', 'Saif Ali Khan'),
('Kill Bill: Vol. 1', 2003, 111, 'Action, Crime, Drama', 8.1, 'Quentin Tarantino', 'Uma Thurman', 'David Carradine'),
('Finding Nemo', 2003, 100, 'Animation, Adventure, Comedy', 8.1, 'Andrew Stanton', 'Lee Unkrich', 'Albert Brooks'),
('Catch Me If You Can', 2002, 141, 'Biography, Crime, Drama', 8.1, 'Steven Spielberg', 'Leonardo DiCaprio', 'Tom Hanks'),
('Amores perros', 2000, 154, 'Drama, Thriller', 8.1, 'Alejandro G. Iñárritu', 'Emilio Echevarría', 'Gael García Bernal'),
('Monsters, Inc.', 2001, 92, 'Animation, Adventure, Comedy', 8.1, 'Pete Docter', 'David Silverman', 'Lee Unkrich'),
('Shin seiki Evangelion Gekijô-ban: Air/Magokoro wo, kimi ni', 1997, 87, 'Animation, Action, Drama', 8.1, 'Hideaki Anno', 'Kazuya Tsurumaki', 'Megumi Ogata'),
('Lagaan: Once Upon a Time in India', 2001, 224, 'Adventure, Drama, Musical', 8.1, 'Ashutosh Gowariker', 'Aamir Khan', 'Raghuvir Yadav'),
('The Sixth Sense', 1999, 107, 'Drama, Mystery, Thriller', 8.1, 'M. Night Shyamalan', 'Bruce Willis', 'Haley Joel Osment'),
('La leggenda del pianista sull''oceano', 1998, 169, 'Drama, Music, Romance', 8.1, 'Giuseppe Tornatore', 'Tim Roth', 'Pruitt Taylor Vince'),
('The Truman Show', 1998, 103, 'Comedy, Drama', 8.1, 'Peter Weir', 'Jim Carrey', 'Ed Harris'),
('Crna macka, beli macor', 1998, 127, 'Comedy, Crime, Romance', 8.1, 'Emir Kusturica', 'Bajram Severdzan', 'Srdjan ''Zika'' Todorovic'),
('The Big Lebowski', 1998, 117, 'Comedy, Crime, Sport', 8.1, 'Joel Coen', 'Ethan Coen', 'Jeff Bridges'),
('Fa yeung nin wah', 2000, 98, 'Drama, Romance', 8.1, 'Kar-Wai Wong', 'Tony Chiu-Wai Leung', 'Maggie Cheung'),
('Trainspotting', 1996, 93, 'Drama', 8.1, 'Danny Boyle', 'Ewan McGregor', 'Ewen Bremner'),
('Fargo', 1996, 98, 'Crime, Drama, Thriller', 8.1, 'Joel Coen', 'Ethan Coen', 'William H. Macy'),
('Underground', 1995, 170, 'Comedy, Drama, War', 8.1, 'Emir Kusturica', 'Predrag ''Miki'' Manojlovic', 'Lazar Ristovski'),
('La haine', 1995, 98, 'Crime, Drama', 8.1, 'Mathieu Kassovitz', 'Vincent Cassel', 'Hubert Koundé'),
('Dilwale Dulhania Le Jayenge', 1995, 189, 'Drama, Romance', 8.1, 'Aditya Chopra', 'Shah Rukh Khan', 'Kajol'),
('Before Sunrise', 1995, 101, 'Drama, Romance', 8.1, 'Richard Linklater', 'Ethan Hawke', 'Julie Delpy'),
('Trois couleurs: Rouge', 1994, 99, 'Drama, Mystery, Romance', 8.1, 'Krzysztof Kieslowski', 'Irène Jacob', 'Jean-Louis Trintignant'),
('Chung Hing sam lam', 1994, 102, 'Comedy, Crime, Drama', 8.1, 'Kar-Wai Wong', 'Brigitte Lin', 'Takeshi Kaneshiro'),
('Jurassic Park', 1993, 127, 'Action, Adventure, Sci-Fi', 8.1, 'Steven Spielberg', 'Sam Neill', 'Laura Dern'),
('In the Name of the Father', 1993, 133, 'Biography, Crime, Drama', 8.1, 'Jim Sheridan', 'Daniel Day-Lewis', 'Pete Postlethwaite'),
('Ba wang bie ji', 1993, 171, 'Drama, Music, Romance', 8.1, 'Kaige Chen', 'Leslie Cheung', 'Fengyi Zhang'),
('Dà hóng denglong gaogao guà', 1991, 125, 'Drama, History, Romance', 8.1, 'Yimou Zhang', 'Gong Li', 'Jingwu Ma'),
('Dead Poets Society', 1989, 128, 'Comedy, Drama', 8.1, 'Peter Weir', 'Robin Williams', 'Robert Sean Leonard'),
('Stand by Me', 1986, 89, 'Adventure, Drama', 8.1, 'Rob Reiner', 'Wil Wheaton', 'River Phoenix'),
('Platoon', 1986, 120, 'Drama, War', 8.1, 'Oliver Stone', 'Charlie Sheen', 'Tom Berenger'),
('Paris, Texas', 1984, 145, 'Drama', 8.1, 'Wim Wenders', 'Harry Dean Stanton', 'Nastassja Kinski'),
('Kaze no tani no Naushika', 1984, 117, 'Animation, Adventure, Fantasy', 8.1, 'Hayao Miyazaki', 'Sumi Shimamoto', 'Mahito Tsujimura'),
('The Thing', 1982, 109, 'Horror, Mystery, Sci-Fi', 8.1, 'John Carpenter', 'Kurt Russell', 'Wilford Brimley'),
('Pink Floyd: The Wall', 1982, 95, 'Drama, Fantasy, Music', 8.1, 'Alan Parker', 'Bob Geldof', 'Christine Hargreaves'),
('Fitzcarraldo', 1982, 158, 'Adventure, Drama', 8.1, 'Werner Herzog', 'Klaus Kinski', 'Claudia Cardinale'),
('Fanny och Alexander', 1982, 188, 'Drama', 8.1, 'Ingmar Bergman', 'Bertil Guve', 'Pernilla Allwin'),
('Blade Runner', 1982, 117, 'Action, Sci-Fi, Thriller', 8.1, 'Ridley Scott', 'Harrison Ford', 'Rutger Hauer'),
('The Elephant Man', 1980, 124, 'Biography, Drama', 8.1, 'David Lynch', 'Anthony Hopkins', 'John Hurt'),
('Life of Brian', 1979, 94, 'Comedy', 8.1, 'Terry Jones', 'Graham Chapman', 'John Cleese'),
('The Deer Hunter', 1978, 183, 'Drama, War', 8.1, 'Michael Cimino', 'Robert De Niro', 'Christopher Walken'),
('Rocky', 1976, 120, 'Drama, Sport', 8.1, 'John G. Avildsen', 'Sylvester Stallone', 'Talia Shire'),
('Network', 1976, 121, 'Drama', 8.1, 'Sidney Lumet', 'Faye Dunaway', 'William Holden'),
('Barry Lyndon', 1975, 185, 'Adventure, Drama, History', 8.1, 'Stanley Kubrick', 'Ryan O''Neal', 'Marisa Berenson'),
('Zerkalo', 1975, 107, 'Biography, Drama', 8.1, 'Andrei Tarkovsky', 'Margarita Terekhova', 'Filipp Yankovskiy'),
('Chinatown', 1974, 130, 'Drama, Mystery, Thriller', 8.1, 'Roman Polanski', 'Jack Nicholson', 'Faye Dunaway'),
('Paper Moon', 1973, 102, 'Comedy, Crime, Drama', 8.1, 'Peter Bogdanovich', 'Ryan O''Neal', 'Tatum O''Neal'),
('Viskningar och rop', 1972, 91, 'Drama', 8.1, 'Ingmar Bergman', 'Harriet Andersson', 'Liv Ullmann'),
('Solaris', 1972, 167, 'Drama, Mystery, Sci-Fi', 8.1, 'Andrei Tarkovsky', 'Natalya Bondarchuk', 'Donatas Banionis'),
('Le samouraï', 1967, 105, 'Crime, Drama, Mystery', 8.1, 'Jean-Pierre Melville', 'Alain Delon', 'François Périer'),
('Cool Hand Luke', 1967, 127, 'Crime, Drama', 8.1, 'Stuart Rosenberg', 'Paul Newman', 'George Kennedy'),
('Persona', 1966, 85, 'Drama, Thriller', 8.1, 'Ingmar Bergman', 'Bibi Andersson', 'Liv Ullmann'),
('Andrei Rublev', 1966, 205, 'Biography, Drama, History', 8.1, 'Andrei Tarkovsky', 'Anatoliy Solonitsyn', 'Ivan Lapikov'),
('La battaglia di Algeri', 1966, 121, 'Drama, War', 8.1, 'Gillo Pontecorvo', 'Brahim Hadjadj', 'Jean Martin'),
('El ángel exterminador', 1962, 95, 'Drama, Fantasy', 8.1, 'Luis Buñuel', 'Silvia Pinal', 'Jacqueline Andere'),
('What Ever Happened to Baby Jane?', 1962, 134, 'Drama, Horror, Thriller', 8.1, 'Robert Aldrich', 'Bette Davis', 'Joan Crawford'),
('Sanjuro', 1962, 96, 'Action, Comedy, Crime', 8.1, 'Akira Kurosawa', 'Toshirô Mifune', 'Tatsuya Nakadai'),
('The Man Who Shot Liberty Valance', 1962, 123, 'Drama, Western', 8.1, 'John Ford', 'James Stewart', 'John Wayne'),
('Ivanovo detstvo', 1962, 95, 'Drama, War', 8.1, 'Andrei Tarkovsky', 'Eduard Abalov', 'Nikolay Burlyaev'),
('Jungfrukällan', 1960, 89, 'Drama', 8.1, 'Ingmar Bergman', 'Max von Sydow', 'Birgitta Valberg'),
('Inherit the Wind', 1960, 128, 'Biography, Drama, History', 8.1, 'Stanley Kramer', 'Spencer Tracy', 'Fredric March'),
('Les quatre cents coups', 1959, 99, 'Crime, Drama', 8.1, 'François Truffaut', 'Jean-Pierre Léaud', 'Albert Rémy');

select * from sem_1.movies;

select title, release_year from sem_1.movies;

select distinct director from sem_1.movies;

select release_year from sem_1.movies
where title = 'Fight Club';

select release_year, rating from sem_1.movies
where director = 'Christopher Nolan';

select title from sem_1.movies
where star_1 ='Christian Bale' or star_2 = 'Christian Bale';

select title from sem_1.movies
where genre like '%Comedy%' and duration_min < 120 and rating >= 8.5;

select title, release_year, star_1, star_2 from sem_1.movies
where release_year < 2010 and ((star_1 = 'Leonardo DiCaprio' or star_2 = 'Leonardo DiCaprio') or (star_1 = 'Tom Hank' or star_2 = 'Tom Hank'));

select title, release_year, star_1, star_2 from sem_1.movies
where release_year < 2010 and (star_1 in ('Leonardo DiCaprio', 'Tom Hank') or star_2 in ('Leonardo DiCaprio', 'Tom Hank'));

select title, genre from sem_1.movies
where genre like 'Drama';

select distinct star_1 from sem_1.movies
where star_1 similar to '(Jack|Sam|John) %';

select distinct title from sem_1.movies
where title similar to '%(3|7)%';

select count(*) as film_counter, count(distinct director) as director_counter, min(release_year) as min_release_year from sem_1.movies;

select distinct director, count(*) as film_count_per_director from sem_1.movies
group by director
order by film_count_per_director desc;

select director, sum(duration_min) as duration_films from sem_1.movies
group by director
having director = 'Quentin Tarantino';

-- same task, different solutions

select sum(duration_min) as duration_films from sem_1.movies
where director = 'Quentin Tarantino';

select star_1, count(*) as number_roles from sem_1.movies
group by star_1
having count(*) >= 3;

-- wrong, because before we >2000, thats why to result added wrong directors
select distinct  director, min(release_year) as first_release from sem_1.movies
where release_year > 2000
group by director
order by director;


select distinct  director, min(release_year) as first_release from sem_1.movies
group by director
having min(release_year) > 2000
order by director;

select * from sem_1.movies
order by rating desc
limit 1;


select distinct on (director) director, release_year, title, rating from sem_1.movies
order by release_year, rating desc;


SELECT
    CASE WHEN release_year <= 2000 THEN '20 век'
        ELSE '21 век'
    END AS category,
    AVG(rating) AS avg_rating,
    COUNT(DISTINCT title) as film_cnt
FROM sem_1.movies
GROUP BY category;


-- CAST(AVG(rating) AS NUMERIC(3, 2)) AS avg_rating,

create table operations (
    operation_id integer,
    operation_date date,
    client_rk integer,
    operation_amt integer
);

INSERT INTO operations (operation_id, operation_date, client_rk, operation_amt) VALUES
    (1, '2023-12-01', 1, 1000),
    (2, '2024-01-01', 2, 100),
    (3, '2024-01-05', 1, 10),
    (4, '2024-01-07', 5, 50),
    (5, '2024-01-15', 7, 500),
    (6, '2024-01-21', 3, 5000),
    (7, '2024-01-31', 9, 500),
    (8, '2024-02-01', 4, 500);

select client_rk, sum(operation_amt) as sum_per_client from operations
where operation_date >= current_date - interval '1 month'
group by client_rk;

select client_rk, avg(operation_amt) as average from operations
where date_trunc('month', operation_date) = date_trunc('month', current_date)
group by client_rk;


SELECT TO_CHAR(operation_date, 'YYYY"-Q"Q') as quarter, SUM(operation_amt)
FROM operations
GROUP BY 1;

