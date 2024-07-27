class SlashModel {
  final String id;
  final String createdAt;
  final String updatedAt;
  final int width;
  final int height;
  final String color;
  final String blurHash;
  final int downloads;
  final int likes;
  final bool likedByUser;
  final String description;
  final SlashExifModel exif;
  final SlashLocationModel location;
  final List<CurrentUserCollectionsModel> currentUserCollections;
  final SlashUrlsModel urls;
  final SlashLinksModel links;
  final SlashUserModel user;

  SlashModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.blurHash,
    required this.downloads,
    required this.likes,
    required this.likedByUser,
    required this.description,
    required this.exif,
    required this.location,
    required this.currentUserCollections,
    required this.urls,
    required this.links,
    required this.user,
  })
};

class SlashExifModel {
  final String make;
  final String model;
  final String exposureTime;
  final String aperture;
  final String focalLength;
  final int iso;

  SlashExifModel({
    required this.make,
    required this.model,
    required this.exposureTime,
    required this.aperture,
    required this.focalLength,
    required this.iso,
  })
};

class SlashLocationModel {
  final String name;
  final String city;
  final String country;
  final SlashLocationPositionModel position;

  SlashLocationModel({
    required this.name,
    required this.city,
    required this.country,
    required this.position,
  })
};

class SlashLocationPositionModel {
  final double latitude;
  final double longitude;

  SlashLocationPositionModel({
    required this.latitude,
    required this.longitude
  })
};

class CurrentUserCollectionsModel {
  final int id;
  final String title;
  final String publishedAt;
  final String lastCollectedAt;
  final String updatedAt;
  final String coverPhoto;
  final String user;

  CurrentUserCollectionsModel({
    required this.id,
    required this.title,
    required this.publishedAt,
    required this.lastCollectedAt,
    required this.updatedAt,
    required this.coverPhoto,
    required this.user,
  })
};

class SlashUrlsModel {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  SlashUrlsModel({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  })
};

class SlashLinksModel {
  final String self;
  final String html;
  final String download;
  final String downloadLocation;

  SlashLinksModel({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  })
};

class SlashUserModel {
  final String id;
  final String updatedAt;
  final String username;
  final String name;
  final String portfolioUrl;
  final String bio;
  final String location;
  final String totalLikes;
  final String totalPhotos;
  final String totalCollections;
  final String instagramUsername;
  final String twitterUsername;
  final SlashUserLinksModel links;

  SlashUserModel({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.totalLikes,
    required this.totalPhotos,
    required this.totalCollections,
    required this.instagramUsername,
    required this.twitterUsername,
    required this.links,
  })
};

class SlashUserLinksModel {
  final String self;
  final String html;
  final String photos;
  final String likes;
  final String portfolio;

  SlashUserLinksModel({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
  })
};
