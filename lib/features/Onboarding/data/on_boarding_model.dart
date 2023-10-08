import 'package:cleancare_app/core/utils/app_assets.dart';

class OnBoardingModel {
  final String img;
  final String title;
  final String description;

  OnBoardingModel(
      {required this.img, required this.title, required this.description});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    img: Assets.onBoarding1, 
  title: "Cleaning Service", 
  description: "For your company or your home, you will get the best cleaning service which will meet your needs and expectations."),
  OnBoardingModel(
    img: Assets.onBoarding2, 
  title: "Car Washing", 
  description: "A car wash service is more than just adding a shine to your vehicle. A full-service car wash provides a thorough cleansing to both the inside and the outside of your car."),
  OnBoardingModel(
    img: Assets.onBoarding3, 
  title: "laundry service ", 
  description: "We wash, dry, and fold your everyday laundry ... Our laundry cleaning service gives you time back for the things you enjoy."),



];
