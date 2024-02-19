import 'package:flutter/material.dart';

import 'package:gawla/utils/colors.dart';
import 'package:gawla/utils/rate.dart';
import 'package:gawla/widgets/drawer/custom_drawer.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> images = [
    'assets/images/hotels1.jpg',
    'assets/images/hotels2.jpg',
    'assets/images/hotels3.jpg',
    'assets/images/hotels4.jpg',
  ];

  List<String> texts = [
    'Panorama Hotel ',
    'Oasis Hotel ',
    'Loaloa Hotel',
    'Tones Hotel',
  ];
  List<String> text_fay = [
    'Egypt, Fayoum',
    'Egypt, Fayoum',
    'Egypt, Fayoum',
    'Egypt, Fayoum',
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: _buildSearchTextField(),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconButtonWithText('Sort', Icons.sort),
                _buildIconButtonWithText('Filter', Icons.filter),
                _buildIconButtonWithText('Map', Icons.map),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromARGB(
                            255, 244, 242, 229), // Adjust the color
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 113,
                                    height: 200,
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  // Text on the right
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          texts[index],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: App_color.application_color,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Text(
                                              text_fay[index],
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.location_on,
                                                color:
                                                    App_color.application_color,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Rate(),
                                        Row(
                                          children: [
                                            Container(
                                              child: const Text(
                                                'very good. 1500 reviews',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            const Icon(Icons
                                                .accessible_forward_rounded),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '1 bed',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              'Price for 1 night, 2 adults',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              'EGP 2,143 +EGP 620 taxes and fees',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return SizedBox(
      width: 300,
      height: 60, // Adjust the height as needed
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 6), // Adjust vertical padding
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.amber, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.amber, width: 1.0),
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.amber),
            prefixIcon: null,
            suffixIcon: const Icon(Icons.search, color: Colors.amber),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButtonWithText(String text, IconData icon) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            // Implement the action for the button
          },
          icon: Icon(
            icon,
            color: const Color(0xFFFFCA28), // Set the icon color
          ),
        ),
        const SizedBox(height: 2),
        Text(
          text,
          style: const TextStyle(
            color: const Color(0xFFFFCA28), // Set the text color
          ),
        ),
      ],
    );
  }
}
