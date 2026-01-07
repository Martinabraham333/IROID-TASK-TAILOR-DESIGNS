

import 'package:tailor_design_app/domain/entity/top_saled_entity.dart';

class TopSaledModel extends TopSaledEntity {
  const TopSaledModel({
    required super.sectionTitle,
    required super.products,
  });

  factory TopSaledModel.fromJson(Map<String, dynamic> json) {
    return TopSaledModel(
      sectionTitle: json['section_title'] ?? '',
      products: (json['products'] as List<dynamic>)
          .map((e) => TopSaledProductModel.fromJson(e))
          .toList(),
    );
  }
}

class TopSaledProductModel extends TopSaledProductEntity {
  const TopSaledProductModel({
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

  factory TopSaledProductModel.fromJson(Map<String, dynamic> json) {
    return TopSaledProductModel(
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
