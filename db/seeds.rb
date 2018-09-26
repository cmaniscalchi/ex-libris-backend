# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  { name: "Claudia", email: "claudia@somedomain.com", password: "pw1" },
  { name: "Jared", email: "jared@somedomain.com", password: "pw2" },
  { name: "Luke", email: "luke@somedomain.com", password: "pw3" },
  { name: "Sean", email: "sean@somedomain.com", password: "pw4" },
  { name: "Tony", email: "tony@somedomain.com", password: "pw5" }
]

users.each {|user| User.create(user)}

bookshelves = [
  { name: "Claudia's Books", user_id: User.first.id },
  { name: "Jared's Books", user_id: User.second.id },
  { name: "Luke's Books", user_id: User.third.id },
  { name: "Sean's Books", user_id: User.fourth.id },
  { name: "Tony's Books", user_id: User.fifth.id }
]

bookshelves.each {|bookshelf| Bookshelf.create(bookshelf)}

books = [
  { author: "John Steinbeck", title: "East of Eden", goodreads_book_id: 4406, publication_year: 1952, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1441547516l/4406.jpg" },
  { author: "Salman Rushdie", title: "Haroun and the Sea of Stories", goodreads_book_id: 18079519, publication_year: 1990, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1385966889l/18079519.jpg" },
  { author: "J.M. Coetzee", title: "Waiting for the Barbarians", goodreads_book_id: 6194, publication_year: 1980, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1330879044l/6194.jpg" },
  { author: "Isabel Allende", title: "The House of the Spirits", goodreads_book_id: 9331, publication_year: 1982, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1388187463l/9331.jpg" },
  { author: "Arundhati Roy", title: "The God of Small Things", goodreads_book_id: 9777, publication_year: 1997, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1436217001l/9777.jpg" },
  { author: "Marilynne Robinson", title: "Housekeeping", goodreads_book_id: 11741, publication_year: 1980, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1327882949l/11741.jpg" },
  { author: "Edward Albee", title: "Who's Afraid of Virginia Woolf?", goodreads_book_id: 14940, publication_year: 1962, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1327907414l/819711.jpg" },
  { author: "Ralph Ellison", title: "Invisible Man", goodreads_book_id: 16981, publication_year: 1952, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1352754068l/9584862.jpg" },
  { author: "Walt Whitman", title: "Leaves Of Grass", goodreads_book_id: 27498, publication_year: 1855, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1418012204l/27494.jpg" },
  { author: "Carson McCullers", title: "The Heart Is a Lonely Hunter", goodreads_book_id: 37380, publication_year: 1940, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1385265834l/37380.jpg" },
  { author: "D.H. Lawrence", title: "Sons and Lovers", goodreads_book_id: 51533, publication_year: 1913, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1389426157l/51533.jpg" },
  { author: "Richard Brautigan", title: "Trout Fishing in America", goodreads_book_id: 63913, publication_year: 1967, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1483477487l/63914.jpg" },
  { author: "Alasdair Gray", title: "Poor Things", goodreads_book_id: 72355, publication_year: 1992, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1489614116l/72355.jpg" },
  { author: "Emily Brontë", title: "Wuthering Heights", goodreads_book_id: 87798, publication_year: 1847, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1212617108l/87798.jpg" },
  { author: "Kurt Vonnegut", title: "Cat's Cradle", goodreads_book_id: 135479, publication_year: 1963, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1288718321l/386411.jpg" },
  { author: "Larry McMurtry", title: "Lonesome Dove", goodreads_book_id: 256008, publication_year: 1985, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1378573063l/256008.jpg" },
  { author: "Cormac McCarthy", title: "Blood Meridian, or the Evening Redness in the West", goodreads_book_id: 394535, publication_year: 1985, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1537969427l/8889448.jpg" },
  { author: "Tennessee Williams", title: "Cat on a Hot Tin Roof", goodreads_book_id: 430719, publication_year: 1955, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1309282800l/430719.jpg" },
  { author: "Kate Chopin", title: "The Awakening", goodreads_book_id: 35650644, publication_year: 1899, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1499746279l/35650644.jpg" },
  { author: "Cormac McCarthy", title: "All the Pretty Horses", goodreads_book_id: 469571, publication_year: 1992, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1527897458l/469571.jpg" },
  { author: "Rudyard Kipling", title: "Just So Stories", goodreads_book_id: 943103, publication_year: 1902, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1363586712l/490102.jpg" },
  { author: "Toni Morrison", title: "Beloved", goodreads_book_id: 1031607, publication_year: 1987, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1283721619l/1031607.jpg" },
  { author: "Charlotte Perkins Gilman", title: "The Yellow Wallpaper", goodreads_book_id: 286957, publication_year: 1892, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1351778524l/286957.jpg" },
  { author: "Ann-Marie MacDonald", title: "Fall on Your Knees", goodreads_book_id: 1219896, publication_year: 1996, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1484169440l/1219896.jpg" },
  { author: "Tove Jansson", title: "The Summer Book", goodreads_book_id: 2263969, publication_year: 1972, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1320565854l/2263969.jpg" },
  { author: "George Orwell", title: "1984", goodreads_book_id: 6606279, publication_year: 1949, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1327877570l/6606279.jpg" },
  { author: "Patrick deWitt", title: "The Sisters Brothers", goodreads_book_id: 9850443, publication_year: 2011, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1291999900l/9850443.jpg" },
  { author: "Simon Van Booy", title: "Everything Beautiful Began After", goodreads_book_id: 10156330, publication_year: 2011, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1302013204l/10156330.jpg" },
  { author: "Ray Bradbury", title: "The Martian Chronicles", goodreads_book_id: 10480387, publication_year: 1950, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1351085489l/10480387.jpg" },
  { author: "Helen Oyeyemi", title: "Mr. Fox", goodreads_book_id: 11093751, publication_year: 2011, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1362148611l/11093751.jpg" },
  { author: "Eowyn Ivey", title: "The Snow Child", goodreads_book_id: 11250053, publication_year: 2012, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1327098624l/11250053.jpg" },
  { author: "Thomas Berger", title: "Little Big Man", goodreads_book_id: 11555328, publication_year: 1964, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1328341091l/11506279.jpg" },
  { author: "Ted Sanders", title: "No Animals We Could Name", goodreads_book_id: 13034915, publication_year: 2012, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1344321533l/13034915.jpg" },
  { author: "George Saunders", title: "Lincoln in the Bardo", goodreads_book_id: 29906980, publication_year: 2017, bookshelf_id: Bookshelf.all.sample.id, image_url: "https://images.gr-assets.com/books/1517846156l/33916515.jpg" }
]

books.each {|book| Book.create(book)}
