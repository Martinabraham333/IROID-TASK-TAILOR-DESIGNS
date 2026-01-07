class FriendlyFloralEntity {
  final String sectionTitle;
  final FriendlyFloralBannerEntity banner;

  const FriendlyFloralEntity({
    required this.sectionTitle,
    required this.banner,
  });
}

class FriendlyFloralBannerEntity {
  final int id;
  final String brand;
  final String title;
  final String image;

  const FriendlyFloralBannerEntity({
    required this.id,
    required this.brand,
    required this.title,
    required this.image,
  });
}
