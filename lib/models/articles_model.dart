class ArticlesModel {
  final String? image;
  final String title;
  final String? description;

  ArticlesModel(
      {required this.image, required this.title, required this.description});

  factory ArticlesModel.fromJson({required jsonData}) {
    return ArticlesModel(
        image: jsonData['urlToImage'],
        title: jsonData['title'],
        description: jsonData['description']);
  }
}
