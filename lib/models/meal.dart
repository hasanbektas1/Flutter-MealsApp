class Meal {
  const Meal(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.imageUrl,
      required this.ingredients,
      this.prepare = ""});

  final String id;
  final String categoryId;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final String prepare;
}
