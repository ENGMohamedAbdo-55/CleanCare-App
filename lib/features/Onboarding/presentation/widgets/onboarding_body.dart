import 'package:cleancare_app/core/utils/app_assets.dart';
import 'package:cleancare_app/core/utils/app_colors.dart';
import 'package:cleancare_app/features/Auth/presentation/views/screens/welcome_view.dart';
import 'package:cleancare_app/features/Onboarding/data/on_boarding_model.dart';
import 'package:cleancare_app/features/Onboarding/presentation/widgets/custom_smoothpagee_indiactor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _pageController = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          currentIndex = index;
        },
        controller: _pageController,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                onBoardingData[index].title,
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 45,
              ),
              Image.asset(
                onBoardingData[index].img,
                width: 320,
              ),
              const SizedBox(
                height: 45,
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Image.asset(
                      Assets.onBoardingCircle,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          onBoardingData[index].description,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSmoothPageIndicator(pageController: _pageController),
                    FloatingActionButton(
                      onPressed: () {
                        if (currentIndex == onBoardingData.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeView()),
                          );
                        } else {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        }
                      },
                      backgroundColor: AppColors.mainColor,
                      child: const Icon(
                        CupertinoIcons.forward,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
