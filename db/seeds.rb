users = [
  { name: "Claudia", email: "claudia@somedomain.com", password: "pw1" },
  { name: "Jared", email: "jared@somedomain.com", password: "pw2" },
  { name: "Luke", email: "luke@somedomain.com", password: "pw3" },
  { name: "Tony", email: "tony@somedomain.com", password: "pw4" }
]

users.each {|user| User.create(user)}

bookshelves = [
  { name: "Claudia's Books", user_id: User.first.id },
  { name: "Jared's Books", user_id: User.second.id },
  { name: "Luke's Books", user_id: User.third.id },
  { name: "Tony's Books", user_id: User.fourth.id }
]

bookshelves.each {|bookshelf| Bookshelf.create(bookshelf)}

books = [
  { author: "Edward Albee",
    title: "Who's Afraid of Virginia Woolf?",
    goodreads_book_id: 14940,
    goodreads_author_id: 9322,
    publication_year: 1962,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1327907414l/819711.jpg"
  },
  { title: "The People in the Castle: Selected Strange Stories",
    author: "Joan Aiken",
    publication_year: 2016,
    image_url: "https://images.gr-assets.com/books/1429098013l/25330102.jpg",
    goodreads_book_id: 25330102,
    goodreads_author_id: 12075,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Isabel Allende",
    title: "The House of the Spirits",
    goodreads_book_id: 9331,
    goodreads_author_id: 2238,
    publication_year: 1982,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1388187463l/9331.jpg"
  },
  { title: "Reservation Blues",
    author: "Sherman Alexie",
    publication_year: 1995,
    image_url: "http://books.google.com/books/content?id=OWP6AAAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 6159,
    goodreads_author_id: 4174,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Waiting for Godot",
    author: "Samuel Beckett",
    publication_year: 1952,
    image_url: "http://books.google.com/books/content?id=FGhVMc7gN0EC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 17716,
    goodreads_author_id: 1433597,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Ray Bradbury",
    title: "The Martian Chronicles",
    goodreads_book_id: 10480387,
    goodreads_author_id: 1630,
    publication_year: 1950,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1351085489l/10480387.jpg"
  },
  { author: "Richard Brautigan",
    title: "Trout Fishing in America",
    goodreads_book_id: 63913,
    goodreads_author_id: 7970,
    publication_year: 1967,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1483477487l/63914.jpg"
  },
  { title: "The Complete Stories of Leonora Carrington",
    author: "Leonora Carrington",
    publication_year: 2017,
    image_url: "https://images.gr-assets.com/books/1494254871l/33395084.jpg",
    goodreads_book_id: 33395084,
    goodreads_author_id: 26359,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "The Awakening",
    author: "Kate Chopin",
    publication_year: 1899,
    image_url: "http://books.google.com/books/content?id=NVs1DwAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 35650644,
    goodreads_author_id: 5132,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "Foe",
    author: "J.M. Coetzee",
    publication_year: 1986,
    image_url: "https://images.gr-assets.com/books/1508792026l/525544.jpg",
    goodreads_book_id: 525544,
    goodreads_author_id: 4128,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "J.M. Coetzee",
    title: "Waiting for the Barbarians",
    goodreads_book_id: 6194,
    goodreads_author_id: 4128,
    publication_year: 1980,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "http://books.google.com/books/content?id=x09pDQAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
  },
  { author: "Raymond Chandler",
    bookshelf_id: Bookshelf.all.sample.id,
    goodreads_author_id: 1377,
    goodreads_book_id: 2052,
    image_url: "https://images.gr-assets.com/books/1371584712l/2052.jpg",
    publication_year: 1939,
    title: "The Big Sleep"
  },
  { author: "Patrick deWitt",
    bookshelf_id: Bookshelf.all.sample.id,
    goodreads_author_id: 1041872,
    goodreads_book_id: 36300687,
    image_url: "https://images.gr-assets.com/books/1508961199l/36300687.jpg",
    publication_year: 2018,
    title: "French Exit"
  },
  { author: "Patrick deWitt",
    title: "Ablutions",
    goodreads_book_id: 5291478,
    goodreads_author_id: 1041872,
    publication_year: 2009,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1442205698l/5291478.jpg"
  },
  { bookshelf_id: Bookshelf.all.sample.id,
    title: "House of Leaves",
    author: "Mark Z. Danielewski",
    publication_year: 2000,
    image_url: "http://books.google.com/books/content?id=qGA_3RGqTkQC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 24800,
    goodreads_author_id: 13974
  },
  { title: "Manhattan Transfer",
    author: "John Dos Passos",
    publication_year: 1925,
    image_url: "https://images.gr-assets.com/books/1406085394l/126587.jpg",
    goodreads_book_id: 126587,
    goodreads_author_id: 4778,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Ralph Ellison",
    title: "Invisible Man",
    goodreads_book_id: 16981,
    goodreads_author_id: 7508,
    publication_year: 1952,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1352754068l/9584862.jpg"
  },
  { title: "As I Lay Dying",
    author: "William Faulkner",
    publication_year: 1930,
    image_url: "https://images.gr-assets.com/books/1451810782l/77013.jpg",
    goodreads_book_id: 77013,
    goodreads_author_id: 3535,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Charlotte Perkins Gilman",
    title: "The Yellow Wallpaper",
    goodreads_book_id: 286957,
    goodreads_author_id: 29527,
    publication_year: 1892,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1351778524l/286957.jpg"
  },
  { title: "Lord of the Flies",
    author: "William Golding",
    publication_year: 1954,
    image_url: "http://books.google.com/books/content?id=r6eoCwAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 7624,
    goodreads_author_id: 306,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "The Last Animal",
    author: "Abby Geni",
    publication_year: 2013,
    image_url: "https://images.gr-assets.com/books/1363078525l/17465720.jpg",
    goodreads_book_id: 17465720,
    goodreads_author_id: 4038495,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Poor Things",
    author: "Alasdair Gray",
    publication_year: 1992,
    image_url: "https://images.gr-assets.com/books/1489614116l/72355.jpg",
    goodreads_book_id: 72355,
    goodreads_author_id: 14870,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "Unlikely Stories, Mostly",
    author: "Alasdair Gray",
    publication_year: 1984,
    image_url: "http://books.google.com/books/content?id=7E2QXQwl1w8C&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 980540,
    goodreads_author_id: 14870,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "The Odyssey",
    author: "Homer",
    publication_year: -720,
    image_url: "http://books.google.com/books/content?id=biBRxQmHPLIC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 1381,
    goodreads_author_id: 903,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Eowyn Ivey",
    title: "The Snow Child",
    goodreads_book_id: 11250053,
    goodreads_author_id: 4823432,
    publication_year: 2012,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1327098624l/11250053.jpg"
  },
  { author: "Tove Jansson",
    title: "The Summer Book",
    goodreads_book_id: 2263969,
    goodreads_author_id: 45230,
    publication_year: 1972,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1320565854l/2263969.jpg"
  },
  { title: "Ulysses",
    author: "James Joyce",
    publication_year: 1922,
    image_url: "https://images.gr-assets.com/books/1428891345l/338798.jpg",
    goodreads_book_id: 338798,
    goodreads_author_id: 5144,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Just So Stories",
    author: "Rudyard Kipling",
    publication_year: 1902,
    image_url: "http://books.google.com/books/content?id=RwBbAAAAMAAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 34053,
    goodreads_author_id: 6989,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Barbara Kingsolver",
    bookshelf_id: Bookshelf.all.sample.id,
    goodreads_author_id: 3541,
    goodreads_book_id: 77262,
    image_url: "https://images.gr-assets.com/books/1481663395l/77262.jpg",
    publication_year: 1990,
    title: "Animal Dreams"
  },
  { title: "The Complete Stories",
    author: "Franz Kafka",
    publication_year: 1995,
    image_url: "http://books.google.com/books/content?id=YRUzCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    goodreads_book_id: 22904,
    goodreads_author_id: 5223,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Jerzy Kosinski",
    title: "Being There",
    goodreads_book_id: 6620932,
    goodreads_author_id: 11121,
    publication_year: 1970,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1344321533l/13034915.jpg"
  },
  { author: "D.H. Lawrence",
    title: "Sons and Lovers",
    goodreads_book_id: 51533,
    goodreads_author_id: 17623,
    publication_year: 1913,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1389426157l/51533.jpg"
  },
  { title: "Bobcat and Other Stories",
    author: "Rebecca Lee",
    publication_year: 2009,
    image_url: "https://images.gr-assets.com/books/1404579146l/17086102.jpg",
    goodreads_book_id: 17086102,
    goodreads_author_id: 10686848,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Fall on Your Knees",
    author: "Ann-Marie MacDonald",
    publication_year: 1996,
    image_url: "http://books.google.com/books/content?id=JSpbbA1zyz4C&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 1219896,
    goodreads_author_id: 3515,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Cormac McCarthy",
    goodreads_author_id: 4178,
    title: "Blood Meridian, or the Evening Redness in the West",
    goodreads_book_id: 394535,
    publication_year: 1985,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1537969427l/8889448.jpg"
  },
  { author: "Cormac McCarthy",
    goodreads_author_id: 4178,
    title: "All the Pretty Horses",
    goodreads_book_id: 469571,
    publication_year: 1992,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1527897458l/469571.jpg"
  },
  { author: 'Cormac McCarthy',
    bookshelf_id: Bookshelf.all.sample.id,
    goodreads_author_id: 4178,
    goodreads_book_id: 394469,
    image_url: 'https://images.gr-assets.com/books/1397600192l/394469.jpg',
    publication_year: 1992,
    title: 'Suttree'
  },
  { author: "Carson McCullers",
    title: "The Heart Is a Lonely Hunter",
    goodreads_book_id: 37380,
    goodreads_author_id: 3506,
    publication_year: 1940,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1385265834l/37380.jpg"
  },
  { author: "Toni Morrison",
    title: "Beloved",
    goodreads_book_id: 1031607,
    goodreads_author_id: 3534,
    publication_year: 1987,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1283721619l/1031607.jpg"
  },
  { title: "Lonesome Dove",
    author: "Larry McMurtry",
    publication_year: 1999,
    image_url: "http://books.google.com/books/content?id=GXYH1C_esq0C&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 256008,
    goodreads_author_id: 1055,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "The North Water",
    author: "Ian McGuire",
    publication_year: 2016,
    image_url: "https://images.gr-assets.com/books/1456351800l/25666046.jpg",
    goodreads_book_id: 25666046,
    goodreads_author_id: 3004686,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "The Sea, the Sea",
    author: "Iris Murdoch",
    publication_year: 2001,
    image_url: "http://books.google.com/books/content?id=IJ5fL72Vvs8C&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 11229,
    goodreads_author_id: 7287,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "Tropic of Cancer",
    author: "Henry Miller",
    publication_year: 1934,
    image_url: "http://books.google.com/books/content?id=WzVLPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    goodreads_book_id: 249,
    goodreads_author_id: 147,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "George Orwell",
    title: "1984",
    goodreads_book_id: 36253959,
    goodreads_author_id: 3706,
    publication_year: 1949,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1505633646l/36253959.jpg"
  },
  { title: "The Complete Stories",
    author: "Flannery O'Connor",
    publication_year: 1955,
    image_url: "https://images.gr-assets.com/books/1489956381l/284996.jpg",
    goodreads_book_id: 284996,
    goodreads_author_id: 22694,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Helen Oyeyemi",
    title: "Mr. Fox",
    goodreads_book_id: 11093751,
    goodreads_author_id: 80808,
    publication_year: 2011,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1362148611l/11093751.jpg"
  },
  { title: "Hall of Small Mammals: Stories",
    author: "Thomas Pierce",
    publication_year: 2015,
    image_url: "https://images.gr-assets.com/books/1401071523l/22309576.jpg",
    goodreads_book_id: 22309576,
    goodreads_author_id: 821199,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Thomas Pynchon",
    bookshelf_id: Bookshelf.all.sample.id,
    goodreads_author_id: 235,
    goodreads_book_id: 415,
    image_url: "https://images.gr-assets.com/books/1414969925l/415.jpg",
    publication_year: 1973,
    title: "Gravity's Rainbow"
  },
  { title: "The Crying of Lot 49",
    author: "Thomas Pynchon",
    publication_year: 1966,
    image_url: "https://images.gr-assets.com/books/1375727632l/2794.jpg",
    goodreads_book_id: 2794,
    goodreads_author_id: 235,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "The Heavenly Table",
    author: "Donald Ray Pollock",
    publication_year: 2016,
    image_url: "https://images.gr-assets.com/books/1449607559l/27245902.jpg",
    goodreads_book_id: 27245902,
    goodreads_author_id: 784866,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Fairy Tales from the Brothers Grimm: A New English Version",
    author: "Philip Pullman",
    publication_year: 2012,
    image_url: "https://images.gr-assets.com/books/1339554952l/13554713.jpg",
    goodreads_book_id: 13554713,
    goodreads_author_id: 3618,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { author: "Salman Rushdie",
    title: "Haroun and the Sea of Stories",
    goodreads_book_id: 18079519,
    goodreads_author_id: 3299,
    publication_year: 1990,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1385966889l/18079519.jpg"
  },
  { title: "Even Cowgirls Get the Blues",
    author: "Tom Robbins",
    publication_year: 1976,
    image_url: "https://images.gr-assets.com/books/1336172455l/7572.jpg",
    goodreads_book_id: 7572,
    goodreads_author_id: 197,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Arundhati Roy",
    title: "The God of Small Things",
    goodreads_book_id: 9777,
    goodreads_author_id: 6134,
    publication_year: 1997,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1436217001l/9777.jpg"
  },
  { author: "Marilynne Robinson",
    title: "Housekeeping",
    goodreads_book_id: 11741,
    goodreads_author_id: 7491,
    publication_year: 1980,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1327882949l/11741.jpg"
  },
  { title: "Vertigo",
    author: "W.G. Sebald",
    publication_year: 1990,
    image_url: "http://books.google.com/books/content?id=ONFPrOJ3Wq8C&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 730376,
    goodreads_author_id: 6580622,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Rosencrantz and Guildenstern Are Dead",
    author: "Tom Stoppard",
    publication_year: 1966,
    image_url: "http://books.google.com/books/content?id=zYhKAQAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 18545,
    goodreads_author_id: 293,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Don Quixote",
    author: "Miguel de Cervantes Saavedra",
    publication_year: 2003,
    image_url: "http://books.google.com/books/content?id=kwV-AwAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 3836,
    goodreads_author_id: 4037220,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "Picasso",
    author: "Gertrude Stein",
    publication_year: 1938,
    image_url: "https://images.gr-assets.com/books/1467323904l/588654.jpg",
    goodreads_book_id: 588654,
    goodreads_author_id: 9325,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "George Saunders",
    title: "Lincoln in the Bardo",
    goodreads_book_id: 29906980,
    goodreads_author_id: 8885,
    publication_year: 2017,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1517846156l/33916515.jpg"
  },
  { title: "Where the Wild Things Are",
    author: "Maurice Sendak",
    publication_year: 1963,
    image_url: "http://books.google.com/books/content?id=UyibVFukeDUC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 19543,
    goodreads_author_id: 4489,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "John Steinbeck",
    title: "East of Eden",
    goodreads_book_id: 4406,
    publication_year: 1952,
    goodreads_author_id: 585,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1441547516l/4406.jpg"
  },
  { author: "Kurt Vonnegut",
    title: "Cat's Cradle",
    goodreads_book_id: 135479,
    goodreads_author_id: 2778055,
    publication_year: 1963,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1288718321l/386411.jpg"
  },
  { title: "The Letters of Vincent van Gogh",
    author: "Vincent van Gogh",
    publication_year: 1914,
    image_url: "https://images.gr-assets.com/books/1328110665l/395233.jpg",
    goodreads_book_id: 395233,
    goodreads_author_id: 34583,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { title: "The Day of the Locust",
    author: "Nathanael West",
    publication_year: 1939,
    image_url: "http://books.google.com/books/content?id=ewk-BQAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 113441,
    goodreads_author_id: 65685,
    bookshelf_id: Bookshelf.all.sample.id
  },
  { author: "Walt Whitman",
    title: "Leaves Of Grass",
    goodreads_book_id: 27498,
    goodreads_author_id: 1438,
    publication_year: 1855,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1418012204l/27494.jpg"
  },
  { author: "Tennessee Williams",
    goodreads_author_id: 7751,
    title: "Cat on a Hot Tin Roof",
    goodreads_book_id: 430719,
    publication_year: 1955,
    bookshelf_id: Bookshelf.all.sample.id,
    image_url: "https://images.gr-assets.com/books/1309282800l/430719.jpg"
  },
  { title: "Spring and All",
    author: "William Carlos Williams",
    publication_year: 1923,
    image_url: "http://books.google.com/books/content?id=meHzAAAAQBAJ&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 1383945,
    goodreads_author_id: 15435,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "The Glass Menagerie",
    author: "Tennessee Williams",
    publication_year: 1945,
    image_url: "http://books.google.com/books/content?id=WwYCaTrBYFAC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 92517,
    goodreads_author_id: 7751,
    bookshelf_id: Bookshelf.all.sample.id,
  },
  { title: "To the Lighthouse",
    author: "Virginia Woolf",
    publication_year: 1927,
    image_url: "http://books.google.com/books/content?id=b9mJvdxiYZUC&printsec=frontcover&img=1&zoom=0&source=gbs_api",
    goodreads_book_id: 59716,
    goodreads_author_id: 6765,
    bookshelf_id: Bookshelf.all.sample.id
  }
]

books.each {|book| Book.create(book)}
