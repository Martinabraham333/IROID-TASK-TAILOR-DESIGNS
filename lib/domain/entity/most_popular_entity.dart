class MostPopularEntity {
  final String sectionTitle;
  final List<ProductEntity> products;

  const MostPopularEntity({
    required this.sectionTitle,
    required this.products,
  });
}

class ProductEntity {
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

  const ProductEntity({
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
