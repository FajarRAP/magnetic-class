import 'package:magnetic_class/constants.dart';

String getImageItemPath(Item item) {
  String match(Match? match) => '-';
  final url = item.imageUrl;
  final loweredTitle = item.title.toLowerCase();
  final slug = loweredTitle.splitMapJoin(' ', onMatch: match);

  return '$url$slug.png';
}
