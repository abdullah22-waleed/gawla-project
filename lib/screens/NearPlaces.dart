import 'package:flutter/material.dart';

final List<Map<String, String>> placesData = [
  {
    'title': 'Gabal Almodora',
    'imagePath': 'assets/images/near4.jpg',
  },
  {
    'title': 'Wadi Alrayaan',
    'imagePath': 'assets/images/near2.jpg',
  },
  {
    'title': 'Buhayrat Qarun',
    'imagePath': 'assets/images/near1.jpg',
  },
  {
    'title': 'Wadi Alhaytan',
    'imagePath': 'assets/images/hotels4.jpg',
  },
  // Add more places as needed
];

class NearPlaces extends StatelessWidget {
  const NearPlaces({
    super.key,
  });

  void navigateToPlaceDetails(BuildContext context, int index) {
    // Navigate to another screen with place details
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlaceDetailsScreen(index: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nearby Places',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFCA28),
        leading: IconButton(
          icon: const Icon(
            Icons.location_on,
            color: Colors.orange,
          ),
          onPressed: () {
            // Add the logic for the location icon press
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigate back to the previous screen
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: placesData.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                // Navigate to place details screen when card is pressed
                //navigateToPlaceDetails(context, index);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Hero(
                    tag: 'placeImage_$index',
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(placesData[index]['imagePath']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      placesData[index]['title']!,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceDetailsScreen extends StatelessWidget {
  final int index;

  const PlaceDetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement the UI for place details based on the index
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Details'),
      ),
      body: Center(
        child: Text('Details for Place $index'),
      ),
    );
  }
}
