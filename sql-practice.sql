SELECT * from Genre; --all from genre


Select * from Artist
Order By ArtistName; --all artists ordered alphabetically by name


Select
	s.Title,
	a.ArtistName
From Song s
	Left Join Artist a on s.ArtistId = a.id; --all songs with their artist joined to them


Select Distinct Artist.ArtistName
From Artist
Join Album on Artist.Id = Album.ArtistId
Join Genre on Genre.Id = Album.GenreId
where Genre.Name = 'Rock'; --all artists with an album that has the genre "Rock"


Select Distinct Artist.ArtistName, Genre.Name
From Artist
Join Album on Artist.Id = Album.ArtistId
Join Genre on Genre.Id = Album.GenreId
where Genre.Name = 'Rock' or Genre.Name = 'Jazz'; --all artists with a Rock or Jazz album


Select Distinct Album.Title
From Album
Left Join Song on Song.AlbumId = Album.Id
where Song.AlbumId is NULL; --all albums with no songs


--Add to the Artist table
Insert Into Artist (
	ArtistName,
	YearEstablished)
	Values (
	'Avenged Sevenfold',
	1999);


--Add to the Album table
Insert into Album (
	Title,
	ReleaseDate,
	AlbumLength,
	Label,
	ArtistId,
	GenreId)
	Values (
	'Nightmare',
	'07/27/2010',
	3000,
	'Warner Bros.',
	28,
	2);
