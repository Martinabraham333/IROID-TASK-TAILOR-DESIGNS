class TailorNearYouEntity {
  final String sectionTitle;
  final TailorProfileEntity profile;

  const TailorNearYouEntity({
    required this.sectionTitle,
    required this.profile,
  });
}

class TailorProfileEntity {
  final String name;
  final String designation;
  final String image;
  final bool hasFollowButton;
  final bool hasLikeButton;
  final bool hasShareButton;
  final bool viewMore;

  const TailorProfileEntity({
    required this.name,
    required this.designation,
    required this.image,
    required this.hasFollowButton,
    required this.hasLikeButton,
    required this.hasShareButton,
    required this.viewMore,
  });
}
