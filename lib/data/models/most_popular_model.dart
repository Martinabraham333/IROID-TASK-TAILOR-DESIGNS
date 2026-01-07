import 'package:tailor_design_app/domain/entity/most_popular_entity.dart';

class MostPopularModel extends MostPopularEntity {
  const MostPopularModel({
    required super.sectionTitle,
    required super.products,
  });

  factory MostPopularModel.fromJson(Map<String, dynamic> json) {
    return MostPopularModel(
      sectionTitle: json['section_title'] ?? '',
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e))
          .toList() ,
    );
  }
}

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.name,
    required super.description,
    required super.image,
    required super.price,
    required super.originalPrice,
    required super.currency,
    required super.rating,
    required super.reviewsCount,
    required super.hasWishlist,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      price: json['price'] ?? 0,
      originalPrice: json['original_price'] ?? 0,
      currency: json['currency'] ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewsCount: json['reviews_count'] ?? '',
      hasWishlist: json['has_wishlist'] ?? false,
    );
  }
}
