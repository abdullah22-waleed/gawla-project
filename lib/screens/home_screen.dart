import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:gawla/widgets/drawer/custom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  final List<String> _buttonNames = [
    'Explore',
    'Hotels',
    'Cuisine',
    'Transportation',
  ];

  final List<String> _imagePaths = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider4.jpg',
  ];
  List<Map<String, dynamic>> cardItems = [
    {'imagePath': 'assets/images/slider1.jpg', 'title': 'Card 1'},
    {'imagePath': 'assets/images/slider2.jpg', 'title': 'Card 2'},
    {'imagePath': 'assets/images/slider3.jpg', 'title': 'Card 3'},
    {'imagePath': 'assets/images/slider4.jpg', 'title': 'Card 4'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCA28),
        title:
            const Text('Explor Fayoum', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawerScrimColor: Colors.transparent,
      drawerEdgeDragWidth: 0,
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: _imagePaths.map((item) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1.0,
                autoPlay: true,
                aspectRatio: 16 / 9,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Welcome to Egypt\nDiscover new destinations',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: List.generate(4, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? const Color(0xFFFFCA28)
                          : Colors.white,
                      border: Border.all(color: const Color(0xFFFFCA28)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        // Add logic for button press
                        print('Button $index pressed');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(_imagePaths[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin: const EdgeInsets.only(right: 8),
                          ),
                          Text(
                            _buttonNames[index], // Use static button names
                            style: TextStyle(
                              fontSize: 16,
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : const Color(0xFFFFCA28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Trending Places',
                  style: GoogleFonts.overpass(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 268,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardItems.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> cardItem = cardItems[index];

                  return GestureDetector(
                    onTap: () {
                      // Handle the press event for cards
                      print('Card $index pressed');
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 15, right: 0),
                      margin: const EdgeInsets.all(10.0),
                      width: 195.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cardItem['imagePath']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          Positioned(
                            bottom: 15.0,
                            child: Container(
                              width: 180.0,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      cardItem['title'],
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.7,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    const Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            size: 16.0, color: Colors.grey),
                                        SizedBox(width: 4.0),
                                        Text(
                                          'Location Text',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
