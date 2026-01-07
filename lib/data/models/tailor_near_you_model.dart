import 'package:tailor_design_app/domain/entity/tailor_near_you_entity.dart.dart';

class TailorNearYouModel extends TailorNearYouEntity {
  const TailorNearYouModel({
    required super.sectionTitle,
    required super.profile,
  });

  factory TailorNearYouModel.fromJson(Map<String, dynamic> json) {
    return TailorNearYouModel(
      sectionTitle: json['section_title'] ?? '',
      profile: TailorProfileModel.fromJson(json['profile'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'section_title': sectionTitle,
      'profile': (profile as TailorProfileModel).toJson(),
    };
  }
}

class TailorProfileModel extends TailorProfileEntity {
  const TailorProfileModel({
    required super.name,
    required super.designation,
    required super.image,
    required super.hasFollowButton,
    required super.hasLikeButton,
    required super.hasShareButton,
    required super.viewMore,
  });

  factory TailorProfileModel.fromJson(Map<String, dynamic> json) {
    return TailorProfileModel(
      name: json['name'] ?? '',
      designation: json['designation'] ?? '',
      image: json['image'] ?? '',
      hasFollowButton: json['has_follow_button'] ?? false,
      hasLikeButton: json['has_like_button'] ?? false,
      hasShareButton: json['has_share_button'] ?? false,
      viewMore: json['view_more'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'designation': designation,
      'image': image,
      'has_follow_button': hasFollowButton,
      'has_like_button': hasLikeButton,
      'has_share_button': hasShareButton,
      'view_more': viewMore,
    };
  }
}
