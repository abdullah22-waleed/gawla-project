import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gawla/screens/NearPlaces.dart';
import 'package:gawla/screens/hotelsReservation.dart';
import 'package:gawla/utils/colors.dart';
import 'package:gawla/utils/rate.dart';

final List<String> _imagePaths = [
  'assets/images/hotels1.jpg',
  'assets/images/hotels2.jpg',
  'assets/images/hotels3.jpg',
  'assets/images/hotels4.jpg',
];

final List<Map<String, IconData>> mapList = [
  {'Smoke Free': Icons.smoke_free},
  {'Family rooms': Icons.family_restroom},
  {'Wifi': Icons.wifi},
  {'Private Bath': Icons.bathtub_rounded},
  {'Air conditioner': Icons.air},
  {'Restaurants': Icons.fastfood},
  {'Pools': Icons.pool},
  {'Free trips': Icons.train_sharp},
  {'Child care': Icons.child_care},
];

class HotelsDetails extends StatefulWidget {
  const HotelsDetails({
    Key? key,
  }) : super(key: key);

  @override
  _HotelsDetailsState createState() => _HotelsDetailsState();
}

class _HotelsDetailsState extends State<HotelsDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gawla',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFFFCA28),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_rounded, color: Colors.white),
            onPressed: () {
              // Add your back button logic here
              Navigator.pop(context);
            },
          ),
        ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Left side text
                  const Expanded(
                    child: Text(
                      'Helen Hotels\nObarge Fayoum',
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
                      const SizedBox(height: 8),
                      // Text next to rating
                      const Text(
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
                    ' '
                    'It is the luxury hotel that has been the official host of celebrities and prominent figures over the years. It was founded in 1937. '
                    'Extending on the shores of the wonderful Lake Qarun, it was formerly a hunting lodge for King Farouk.'
                    'It provides you with an elegant atmosphere and a wide range of activities.Enjoy the pristine countryside and stroll along the golden sandy beach. Fish, windsurf or windsurf. Take a short excursion to visit the seven famous waterwheels or explore the unique rock formations in Wadi El Hitan. Whatever you choose to do, the Auberge is the perfect place that also offers you luxurious, tastefully furnished rooms. Relax in the peaceful atmosphere of your room and enjoy the stunning scenery. This is a true oasis and an ideal place for you to unwind.',
                    style: TextStyle(
                      fontSize: 18,
                      color: App_color.text_color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Horizontally scrollable map list with icons and names
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: mapList.length,
                itemBuilder: (context, index) {
                  final iconName = mapList[index].keys.first;
                  final iconData = mapList[index].values.first;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(iconData, color: App_color.application_color),
                        const SizedBox(height: 4),
                        Text(iconName, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Row with two text buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HotelsReservationscreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: App_color.application_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: const Text(
                        'Book now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NearPlaces(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: App_color.application_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: const Text(
                        'Near tourist places',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
