class Item {
  final String title;
  final String imageUrl;
  final String description;

  const Item({
    required this.title,
    required this.imageUrl,
    required this.description,
  });
}

class Tool extends Item {
  const Tool({
    required super.title,
    required super.imageUrl,
    required super.description,
  });
}

class Ingredient extends Item {
  const Ingredient({
    required super.title,
    required super.imageUrl,
    required super.description,
  });
}

class StepParams {
  const StepParams({
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;
}
