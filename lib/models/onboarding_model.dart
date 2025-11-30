import 'package:movies_app/core/resources/image_assets.dart';

class OnBoardingModel {
  String image;
  String title;
  String description;
  String buttonLabel;
  bool isFirstPage;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
    required this.buttonLabel,
    this.isFirstPage = false,
  });

  static List<OnBoardingModel> onBoardingScreens = [
    OnBoardingModel(image: ImageAssets.onBoarding1,
        title: "Find Your Next\n Favorite Movie Here",
        description: "Get access to a huge library of movies to suit all tastes. You will surely like it.",
        buttonLabel: "Explore Now"),

    OnBoardingModel(image: ImageAssets.onBoarding2,
        title: "Discover Movies",
        description: "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
        buttonLabel: "Next"),

    OnBoardingModel(image: ImageAssets.onBoarding3,
        title: "Explore All Genres",
        description: "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
        buttonLabel: "Next"),

    OnBoardingModel(image: ImageAssets.onBoarding4,
        title: "Create Watchlists",
        description: "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
        buttonLabel: "Next"),

    OnBoardingModel(image: ImageAssets.onBoarding5,
        title: "Rate, Review, and Learn",
        description: "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
        buttonLabel: "Next"),

    OnBoardingModel(image: ImageAssets.onBoarding6,
        title: "Start Watching Now",
        description: "",
        buttonLabel: "Finish"),
  ];


}
