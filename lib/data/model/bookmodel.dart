class Bookdata {
  String title, author, price, image, description;
  int color;
  List genre;

  Bookdata(
    this.title,
    this.author,
    this.price,
    this.image,
    this.color,
    this.description,
    this.genre,
  );
}

List<Bookdata> bookdata = bookData
    .map((item) => Bookdata(
          item['title'],
          item['author'],
          item['price'],
          item['image'],
          item['color'],
          item['description'],
          item['genre'],
        ))
    .toList();

class GenreData {
  late String name;

  GenreData(this.name);
}

List bookData = [
  {
    "title": "You’re A Miracle",
    "author": "Mike McHargue",
    "price": "10",
    "image": "assets/images/underland.jpg",
    "color": 0xFFFFD3B6,
    "description":
        "“Holding brain science in one hand and rich emotional presence in the other, this book feels timely and necessary.”—Shauna Niequist, New York Times bestselling author of Present Over Perfect\n\nWhy is there such a gap between what you want to do and what you actually do? The host of Ask Science Mike explains why our desires and our real lives are so wildly different—and what you can do to close the gap.\n\nFor thousands of years, scientists, philosophers, and self-help gurus have wrestled with one of the basic conundrums of human life: Why do we do the things we do? Or, rather, why do we so often not do the things we want to do? As a podcast host whose voice goes out to millions each month, Mike McHargue gets countless emails from people seeking to understand their own misbehavior—why we binge on Netflix when we know taking a walk outside would be better for us, or why we argue politics on Facebook when our real friends live just down the street. Everyone wants to be a good person, but few of us, twenty years into the new millennium, have any idea how to do that.\n\nIn You’re a Miracle (and a Pain in the Ass), McHargue addresses these issues. We like to think we’re in control of our thoughts and decisions, he writes, but science has shown that a host of competing impulses, emotions, and environmental factors are at play in every action we undertake. Touching on his podcast listeners’ most pressing questions, from relationships and ethics to stress and mental health, and sharing some of the biggest triumphs and hardships from his own life, McHargue shows us how some of our qualities that seem most frustrating—including “negative” emotions like sadness, anger, and anxiety—are actually key to helping humans survive and thrive. In doing so, he invites us on a path of self-understanding and, ultimately, self-acceptance.\n\nYou’re a Miracle (and a Pain in the Ass) is a guided tour through the mystery of human consciousness, showing readers how to live more at peace with themselves in a complex world.",
    "genre": [
      "Adventure",
      "Romance",
      "Drama",
    ]
  },
  {
    "title": "Far From Home",
    "author": "Jasmine Warga",
    "price": "50",
    "image": "assets/images/other_words_for_home.jpg",
    "color": 0xFFFFD3B6,
    "description":
        "Jude never thought she’d be leaving her beloved older brother and father behind, all the way across the ocean in Syria. But when things in her hometown start becoming volatile, Jude and her mother are sent to live in Cincinnati with relatives. At first, everything in America seems too fast and too loud. The American movies that Jude has always loved haven’t quite prepared her for starting school in the US—and her new label of 'Middle Eastern,' an identity she’s never known before. But this life also brings unexpected surprises—there are new friends, a whole new family, and a school musical that Jude might just try out for. Maybe America, too, is a place where Jude can be seen as she really is.",
    "genre": [
      "Adventure",
      "Drama",
    ]
  },
  {
    "title": "The Metropolis",
    "author": "Seith Fried",
    "price": "30",
    "image": "assets/images/the_metropolist.jpg",
    "color": 0xFFFFD3B6,
    "description":
        "In Metropolis, the gleaming city of tomorrow, the dream of the great American city has been achieved. But all that is about to change, unless a neurotic, rule-following bureaucrat and an irreverent, freewheeling artificial intelligence can save the city from a mysterious terrorist plot that threatens its very existence. Henry Thompson has dedicated his life to improving America's infrastructure as a proud employee of the United States Municipal Survey. So when the agency comes under attack, he dutifully accepts his unexpected mission to visit Metropolis looking for answers. But his plans to investigate quietly, quickly, and carefully are interrupted by his new partner: a day-drinking know-it-all named OWEN, who also turns out to be the projected embodiment of the agency's supercomputer. Soon, Henry and OWEN are fighting to save not only their own lives and those of the city's millions of inhabitants, but also the soul of Metropolis. The Municipalists is a thrilling, funny, and touching adventure story, a tour-de-force of imagination that trenchantly explores our relationships to the cities around us and the technologies guiding us into the future.",
    "genre": [
      "Adventure",
      "Romance",
    ]
  },
  {
    "title": "The Tiny Dragon",
    "author": "Ana C Bouvier",
    "price": "40",
    "image": "assets/images/the_tiny_dragon.jpg",
    "color": 0xFF2B503D,
    "description":
        "This sketchbook for kids is the perfect tool to improve your drawing skills! Designed to encourage kids around the world to express their uniqueness through drawing, sketching or doodling, this sketch book is filled with 110 high quality blank pages for creations. Add some fun markers, crayons, and art supplies and you have the perfect, easy gift for kids!",
    "genre": [
      "Adventure",
    ]
  },
];
