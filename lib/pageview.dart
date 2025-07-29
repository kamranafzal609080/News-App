import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wahid_project/signup.dart';
import 'package:wahid_project/wellcome.dart';

class OnBoardingModel {
  final String title;
  final String image;

  OnBoardingModel({required this.title, required this.image});
}

class PageViweDome extends StatefulWidget {
  const PageViweDome({super.key});

  @override
  State<PageViweDome> createState() => _PageViweDomeState();
}

class _PageViweDomeState extends State<PageViweDome> {
  final PageController controller = PageController();
  int _currentIndex = 0;

  List<OnBoardingModel> onboardingList = [
    OnBoardingModel(
      title: 'Trending News',
      image: 'assets/Images/khan.png',
    ),
    OnBoardingModel(
      title: 'React, Save & Share News',
      image: 'assets/Images/Group-2.png',
    ),
    OnBoardingModel(
      title: 'Videos & Live News From \nYouTube',
      image: 'assets/Images/Group-3.png',
    ),
    OnBoardingModel(
      title: 'Browse News From Variety\nOf Categories',
      image: 'assets/Images/Group-1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Skipped")),
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>wellconeDome()));
                },
                child: const Text("Skip", style: TextStyle(fontSize: 16)),
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingList.length,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboardingList[index].image, height: 250),
                      const SizedBox(height: 40),
                      Text(
                        onboardingList[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
             SizedBox(height: 10),
            // Page Indicator
            SmoothPageIndicator(
              controller: controller,
              count: onboardingList.length,
              effect:  WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.black,
              ),
            ),

             SizedBox(height: 50),

            // Email Button
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(80),
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpDome())

                      );
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Icon(Icons.email, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Continue with Email',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Social Icons Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSocialIcon(FontAwesomeIcons.facebookF, Colors.blue),
                  _buildSocialIcon(FontAwesomeIcons.google, Colors.black),
                  _buildSocialIcon(FontAwesomeIcons.twitter, Colors.lightBlue),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }
}
