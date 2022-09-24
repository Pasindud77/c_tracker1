import 'package:flutter/material.dart';
import 'package:c_tracker/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();
  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (i) {
              setState(() {
                currentPageIndex = i;
              });
            },
            controller: _pageController,
            children: [

              Container(
                color: Colors.green.shade200,
                child: _page("images/intro1.png", "Easiest Way to Calculate Your Carbon Footprint ",
                    "Calculate your carbon footpeint by just adding daily habbits."),
              ),
              Container(
                color: Colors.orange.shade200,
                child: _page("images/intro2.png", "R3 Can Reduce Your  Carbon Footprint ",
                    "Reuse, Reduce & Recycle help to reduce your personal carbon footprint"),
              ),
              Container(
                color: Colors.blue.shade100,
                child: _page("images/intro3.png", "Do Your Part For The Planet ",
                    "Reduce solid wast reduce the Carbon emission and it help to Save The Planet Earth "),
              ),
            ],
          ),
          if (currentPageIndex != 2)
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap:() { _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn,);
                      },
                      child: Text('Next',style: TextStyle(height: 5, fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: SwapEffect(
                        activeDotColor: Colors.teal,
                        spacing: 14,
                      ),
                      onDotClicked: (index) {
                        _pageController.jumpToPage(index);
                      },
                    ),
                    GestureDetector(
                        onTap:() { _pageController.jumpToPage(2);
                        },
                        child: Text('Skip',style: TextStyle(height: 5, fontSize: 18, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
          ),
          if (currentPageIndex == 2)
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(64),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text("Get Started")),

                )
            )

        ],
      ),
    );
  }

  Widget _page(String imagePath, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 300,
          ),
          SizedBox(
            height: 80,
          ),
          Text(title,
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.teal.shade800,
                  fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(
            height: 20,
          ),
          Text(subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              )),
        ],
      ),
    );
  }
}