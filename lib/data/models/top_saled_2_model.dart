
import 'package:tailor_design_app/domain/entity/top_saled_2_entity.dart';

class TopSaled2Model extends TopSaled2Entity {
  const TopSaled2Model({
    required super.sectionTitle,
    required super.products,
  });

  factory TopSaled2Model.fromJson(Map<String, dynamic> json) {
    return TopSaled2Model(
      sectionTitle: json['section_title'] ?? '',
      products: (json['products'] as List<dynamic>)
          .map((e) => TopSaled2ProductModel.fromJson(e))
          .toList(),
    );
  }
}

class TopSaled2ProductModel extends TopSaled2ProductEntity {
  const TopSaled2ProductModel({
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

  factory TopSaled2ProductModel.fromJson(Map<String, dynamic> json) {
    return TopSaled2ProductModel(
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
