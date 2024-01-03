class ArticlesModels {
  final String? image;
  final String title;
  final String? description;

  ArticlesModels({required this.image, required this.title, required this.description});

  factory ArticlesModels.fromJson({required json}) {
    return ArticlesModels(
        image: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
