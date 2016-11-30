# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admins = User.create([{username: 'Asma', name: 'Asma Al-Hemaidi', email: 'ahemaidi@qatar.cmu.edu', password: '12345678', admin: true}, 
	{username: 'Noor', name: 'Noor Al-Ansari', email: 'nansari@qatar.cmu.edu', password: '12345678', admin: true},
	{username: 'Shaikha', name: 'Shaikha Al-darwish', email: 'sdarwish@qatar.cmu.edu', password: '12345678', admin: true},
	{username: 'User', name: 'User', email: 'sh.aldarwish@hotmail.com', password: '12345678', admin: false}])

Genres = Genre.create([{name: 'Horror'}, 
	{name: 'Adventure'}, 
	{name: 'History'}, 
	{name: 'Mystery'},
	{name: 'Science Fiction'}, 
	{name: 'Fantasy'}, 
	{name: 'Comedy'}, 
	{name: 'Thriller'},  
	{name: 'Romance'}, 
	{name: 'Technology'},
	{name: 'classic'},
	{name: 'Drama'}, {name: 'Design'}, {name: 'Politics'}, {name: 'Philosophy'}])

Authors = Author.create([{name: 'Jojo Moyes'}, 
	{name: 'J. K. Rowling'}, 
	{name: 'John Tiffany'}, 
	{name: 'Jack Thorne'},
	{name: 'Gaston Leroux'}, 
	{name: 'Jennifer Bassett'}, 
	{name: 'Stephen King'}, 
	{name: 'F. Scott Fitzgerald'},  
	{name: 'Bram Stoker'},
	{name: 'Randy Pausch'},
	{name: 'Jodi Picoult'}, {name: 'John Stuart Mill'}, {name: 'Rob Forbes'}])


Books = Book.create([{ isbn: '9781853260865', title: 'Dracula', genre_id: 8, bookimage: 'https://s-media-cache-ak0.pinimg.com/originals/12/a4/13/12a413caf1c0429c46385531a61c91e5.jpg',
	description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'}, 
	{isbn: '9781853260414', title: 'The Great Gatsby', genre_id: 6, bookimage: 'https://images-na.ssl-images-amazon.com/images/I/51dUu6CPuqL.jpg',
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'}, 
	{isbn: '9781444720686', title: 'Bag of Bones', genre_id: 1, bookimage: 'https://i.jeded.com/i/bag-of-bones-2011.7530.jpg',
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9780194794398', title: 'Les Miserables, Stage 1', genre_id: 12, bookimage: 'http://www.eltbooks.com/cover/9780194794404.jpg',
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9780194620345', title: 'The Phantom of the Opera Audio Pack', genre_id: 11, bookimage: 'http://image5.casadellibro.com/a/l/t0/45/9780194620345.jpg',
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9781416549178', title: 'My Sisters Keeper', genre_id: 12, bookimage: 'https://d39ttiideeq0ys.cloudfront.net/assets/images/book/large/9781/4165/9781416549178.jpg',
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9780718157838', title: 'Me Before You', genre_id: 9, bookimage: 'http://www.bibdsl.co.uk/imagegallery2/bds/201201/9780718157838.JPG', 
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9780751565355', title: 'Harry Potter and The Cursed Child, Part I & II - The Eight Story, Nineteen Years Later', genre_id: 2, bookimage: 'https://pictures.abebooks.com/isbn/9780751565355-us.jpg', 
		description: 'It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children. 
		While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and 
		son learn the uncomfortable truth: sometimes, darkness comes from unexpected places'},
	{isbn: '9781401309657', title: 'The Last Lecture', genre_id: 5, bookimage: 'https://images-na.ssl-images-amazon.com/images/I/51ty7GIItcL.jpg',
		description: 'A lot of professors give talks titled "The Last Lecture." Professors are asked to consider their demise and to ruminate on what matters most to them. And while they speak, audiences cant 
		help but mull the same question: What wisdom would we impart to the world if we knew it was our last chance? If we had to vanish tomorrow, what would we want as our legacy?'},
	{isbn: '9780631233527', title: 'Utilitarianism and On Liberty', genre_id: 15, bookimage: 'https://images-na.ssl-images-amazon.com/images/I/41gcPZmAtcL._SX346_BO1,204,203,200_.jpg',
		description: 'Including three of his most famous and important essays, Utilitarianism, On Liberty, and Essay on Bentham, along with formative selections from Jeremy Bentham and John Austin, this volume provides 
		a uniquely perspicuous view of Mills ethical and political thought. Includes selections from Bentham and John Austin, the two thinkers who most influenced Mill. Introduction written by Mary Warnock, a highly 
		respected figure in 20th-century ethics in her own right. Provides an extensive, up-to-date bibliography with the best scholarship on Mill, Bentham and Utilitarianism.'},
	{isbn: '9781452117140', title: 'See For Yourself', genre_id: 13, bookimage: 'http://www.chroniclebooks.com/media/catalog/product/cache/1/large_image/9df78eab33525d08d6e5fb8d27136e95/9/7/9781452117140_350_3.jpg',
		description: 'This accessible handbook from design guru and Design Within Reach founder Rob Forbes uncovers the beauty in the commonplace and reveals how visual thinking can enrich our lives. In friendly 
		text complemented by photographs taken on his travels around the world, Forbes explains how to appreciate the design elements that surround us in the built environment. Linking broad concepts such as composition
		 and materiality to quotidian details such as the play of color in hanging laundry or the repeated forms in a row of ice cream scoops, Forbes reveals how an appreciation of the hues, patterns, and textures that 
		 surround us can enhance a life well lived. See for Yourself is essential reading to see more clearly, think more visually, and enjoy the world more deeply.'}])


Bookstores = Bookstore.create([{name: 'Aldana'}, 
	{name: 'Jarir'}, 
	{name: 'virgin'},
	{name: 'Qatar National Library'}])

Locations = Location.create([{book_id: 1, bookstore_id: 2}, 
	{book_id: 2, bookstore_id: 2}, 
	{book_id: 3, bookstore_id: 2},
	{book_id: 4, bookstore_id: 2},
	{book_id: 5, bookstore_id: 2},
	{book_id: 6, bookstore_id: 2},
	{book_id: 7, bookstore_id: 2},
	{book_id: 8, bookstore_id: 2},
	{book_id: 9, bookstore_id: 2},
	{book_id: 7, bookstore_id: 3},
	{book_id: 10, bookstore_id: 4},
	{book_id: 11, bookstore_id: 2}])


Authorbooks = Authorbook.create([{book_id: 1, author_id: 9}, 
	{book_id: 2, author_id: 8}, 
	{book_id: 3, author_id: 7},
	{book_id: 4, author_id: 6},
	{book_id: 5, author_id: 5},
	{book_id: 6, author_id: 11},
	{book_id: 7, author_id: 1},
	{book_id: 8, author_id: 2},
	{book_id: 8, author_id: 3},
	{book_id: 8, author_id: 4},
	{book_id: 9, author_id: 10},
	{book_id: 10, author_id: 12},
	{book_id: 11, author_id: 13}])
     







