import 'package:flutter/material.dart';
import 'package:gawla/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageNumber = 0;
  PageController nextpage = PageController();

  Widget dotPageView() {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: i == pageNumber ? 25 : 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: i == pageNumber
                    ? Colors.black
                    : const Color.fromARGB(255, 38, 38, 38),
              ),
            ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCA28),
        actions: [
          TextButton(
            onPressed: () {
              // Add any logic for the "skip" button here
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 10), // Add some spacing if needed
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  pageNumber = value;
                });
              },
              controller: nextpage,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/1.png',
                        height: screenHeight * 0.2),
                    const SizedBox(height: 10),
                    Text(
                      'Do Not Stop !!',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Traveling is always a good idea..\nWe make the idea a reality.',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        nextpage.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        width: screenWidth * 0.9,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFCA28),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    dotPageView(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/2.png',
                        height: screenHeight * 0.2),
                    const SizedBox(height: 30),
                    Text(
                      'Make Your Plan',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Find adventure and create lasting\nmemories in the most unexpected places',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        nextpage.animateToPage(2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        width: screenWidth * 0.9,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFCA28),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    dotPageView(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/3.png',
                        height: screenHeight * 0.2),
                    const SizedBox(height: 10),
                    Text(
                      'We plan. You pack',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Experience the world beauty and\ndiversity in a whole new way',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: screenWidth * 0.9,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFCA28),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    dotPageView(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
