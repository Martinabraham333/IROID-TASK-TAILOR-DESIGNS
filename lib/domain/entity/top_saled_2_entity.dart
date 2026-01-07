class TopSaled2Entity {
  final String sectionTitle;
  final List<TopSaled2ProductEntity> products;

  const TopSaled2Entity({
    required this.sectionTitle,
    required this.products,
  });
}

class TopSaled2ProductEntity {
  final int id;
  final String name;
  final String description;
  final String image;
  final int price;
  final int originalPrice;
  final String currency;
  final double rating;
  final String reviewsCount;
  final bool hasWishlist;

  const TopSaled2ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.originalPrice,
    required this.currency,
    required this.rating,
    required this.reviewsCount,
    required this.hasWishlist,
  });
}
