class NewPostModel {
  final String? image;
  final String title;
  final String? info;
  final String? urlLink;

  const NewPostModel(
      {required this.image,
      required this.title,
      required this.info,
      required this.urlLink});

  factory NewPostModel.fromJson(json) {
    return NewPostModel(
      image: json["urlToImage"] ??
          "https://digitalfinger.id/wp-content/uploads/2019/12/no-image-available-icon-6.png",
      title: json["title"],
      info: json["description"] ?? "",
      urlLink: json["url"],
    );
  }
}
