import 'package:wasela/core/resources/asset_path.dart';
import 'package:wasela/user/data/models/image_model.dart';

class HomepageImage {
 static List<ImageModel> nearsetWorkshopImages = [
    ImageModel(image: AppAssets.wash, text: ('Car wash')),
    ImageModel(image: AppAssets.onboarding2, text: ('Mechanical')),
    ImageModel(image: AppAssets.wash, text: ('Electrician')),
    ImageModel(image: AppAssets.wash, text: ('Painting & Denting')),
    ImageModel(image: AppAssets.wash, text: ('Wheel aligment'))
  ];

 static List<ImageModel> servicesImages = [
    ImageModel(image: AppAssets.home, text: 'Fuel Delivery'),
    ImageModel(image: AppAssets.home, text: 'Engine oil change'),
    ImageModel(image: AppAssets.home, text: 'Battery service'),
    ImageModel(image: AppAssets.home, text: 'Tyre change'),
  ];
}

/// firebase 
///   the question that we will be recieved and answer it

class QuestionsList {
  static const List<String> question1 = [
    'is visa is available?',
    '',
    '',
    ' ',
    ''
  ];
  static const List<String> question2 = ['a', 'b', 'c', 'd'];
  static const List<String> question3 = ['a', 'b', 'c', 'd'];
}
