class BookModel {
  String bookName;
  String author;
  String imageUrl;
  double rating;
  double price;
  String genre;
  String publishDate;
  String reviews;

  BookModel({
    required this.bookName,
    required this.author,
    required this.rating,
    required this.price,
    required this.genre,
    required this.publishDate,
    required this.reviews,
    required this.imageUrl,
  });
}
