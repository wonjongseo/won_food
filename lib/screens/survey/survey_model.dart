class SurveyModel {
  String surveyTitle;
  List<SurveyItem> items;
  SurveyModel({
    required this.surveyTitle,
    required this.items,
  });

  static List<SurveyModel> dummy = [
    SurveyModel(
      surveyTitle: 'What is your\nFavorite food?',
      items: [
        SurveyItem(
          name: 'Japanese Food',
          description: 'Eat with the fresh food from japan.',
          imageURL: 'https://i.imgur.com/LiVMyhg.png',
        ),
        SurveyItem(
          name: 'American food',
          description: 'Keep healthy with the vegetables food.',
          imageURL: 'https://i.imgur.com/1wH4k70.png',
        ),
        SurveyItem(
          name: 'Italian food',
          description: 'Make your day always sweet.',
          imageURL: 'https://i.imgur.com/OcPYKcb.png',
        ),
        SurveyItem(
          name: 'Indonesian food',
          description: 'Try a variety of typical Indonesian food.',
          imageURL: 'https://i.imgur.com/jGaC1Cd.png',
        ),
      ],
    ),

    /// Another Model
    SurveyModel(
      surveyTitle: 'What is your\nFavorite flavour?',
      items: [
        SurveyItem(
          name: 'Spicy Food',
          description: 'Burn your day with spicy delicious food.',
          imageURL: 'https://i.imgur.com/asBwrrj.png',
        ),
        SurveyItem(
          name: 'Tasteful Food',
          description: 'Fill your lunch with various flavors.',
          imageURL: 'https://i.imgur.com/ceVIuqj.png',
        ),
        SurveyItem(
          name: 'Sweat Food',
          description: 'Make your day always sweet.',
          imageURL: 'https://i.imgur.com/SygOVGs.png',
        ),
        SurveyItem(
          name: 'Any Foof',
          description: 'Try a variety of typical food in the world.',
          imageURL: 'https://i.imgur.com/Wy7lbh2.png',
        ),
      ],
    ),

    /// Another Model
    SurveyModel(
      surveyTitle: 'What is your\nFood Style?',
      items: [
        SurveyItem(
          name: 'Vegan',
          description: 'Stay eat with uniqur vegan menu.',
          imageURL: 'https://i.imgur.com/p8z7GSB.png',
        ),
        SurveyItem(
          name: 'Vegeterian',
          description: 'We recommend the best food for you.',
          imageURL: 'https://i.imgur.com/MlrgSjh.png',
        ),
        SurveyItem(
          name: 'Meat Lover',
          description: 'Meat lover gonna love the special resto.',
          imageURL: 'https://i.imgur.com/xY2OPKU.png',
        ),
        SurveyItem(
          name: 'Random',
          description: 'Try a variety of typical food in the world.',
          imageURL: 'https://i.imgur.com/Wy7lbh2.png',
        ),
      ],
    ),
  ];
}

class SurveyItem {
  String name;
  String description;
  String imageURL;
  bool isSelected = false;
  SurveyItem({
    required this.name,
    required this.description,
    required this.imageURL,
  });
}
