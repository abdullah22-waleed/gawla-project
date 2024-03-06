import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gawla/utils/colors.dart';
import 'package:gawla/utils/rate.dart';
import 'package:slide_rating_dialog/slide_rating_dialog.dart';

final List<String> _imagePaths = [
  'assets/images/bahiya.jpg',
  'assets/images/bahiya2.jpg',
  'assets/images/bahiya3.jpg',
];

class Bahiya_restorant extends StatefulWidget {
  const Bahiya_restorant({
    Key? key,
  }) : super(key: key);

  @override
  _Bahiya_restorantState createState() => _Bahiya_restorantState();
}

class _Bahiya_restorantState extends State<Bahiya_restorant> {
  bool isFavorite = false;
  double borderRadius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gawla',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFFFCA28),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                Positioned(
                  left: 16,
                  top: 16,
                  child: IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: App_color.application_color,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        // Add your favorite button logic here
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Left side text
                  Expanded(
                    child: Text(
                      'Bahia Grill Restaurant',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F1A29),
                      ),
                    ),
                  ),
                  // Right side rating and location
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Use the Rate widget here
                      Rate(),
                      SizedBox(height: 8),
                      // Text next to rating
                      Text(
                        'very good. 1500 reviews',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Location icon and text on the left
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: App_color.application_color,
                    size: 16,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Fayoum',
                    style: TextStyle(
                      fontSize: 12,
                      color: App_color.application_color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Container with description text
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: App_color.text_color,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bahia Restaurant...original Egyptian food, grilled birds,'
                    ' casseroles, restaurants specializing in serving oriental'
                    ' dishes between Egyptian and Arabic. We prepare it with perfection'
                    ' and precision to give you the authentic taste and provide you with '
                    'high-level service in all our branches. Egyptian food, Bahia Hadayek Al-Ahram,'
                    ' Bahia Al Mohandiseen, Bahia October, Al Hosary ',
                    style: TextStyle(
                      fontSize: 18,
                      color: App_color.text_color,
                    ),
                    maxLines: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const (),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff00000059),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.accessible_forward),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    // Wrap the Row with Expanded to prevent overflow
                    Expanded(
                      child: Text(
                        'There are places equipped for people with mobility disabilities',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext cont) => SlideRatingDialog(
                                onRatingChanged: (rating) {
                                  print(rating.toString());
                                },
                                buttonOnTap: () {
                                  // Do your Business Logic here;
                                },
                              ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: App_color.application_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: const Text(
                        'rate the place',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: App_color.application_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: const Text(
                        'food menu',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: GestureDetector(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: const Color(0xffFFCA28),
                  ),
                  child: const Center(
                    child: Text(
                      'Go to him',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
