import 'package:pergi_makan/shared/models/model_food.dart';

class ModelDestination {
  ModelDestination({
    required this.name,
    required this.location,
    required this.locationDetail,
    required this.image,
    required this.imageDetail,
    required this.tags,
    required this.foods,
  });

  final String name;
  final String location;
  final String locationDetail;
  final String image;
  final String imageDetail;
  final List<String> tags;
  final List<ModelFood> foods;
}
