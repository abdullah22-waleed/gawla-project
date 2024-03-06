import 'package:flutter/material.dart';
import 'package:gawla/screens/video.dart';
import 'package:gawla/utils/colors.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isFavorite = false;
  int selectedTabIndex = 0;
  int selected = 0;

  void navigateToVideoScreen() {

  }

  Widget getContent() {
    if (selectedTabIndex == 0) {
      return Container(
        padding: const EdgeInsets.all(10),
        height: 171,
        width: MediaQuery.sizeOf(context).width,
        child: const Text(
          'You must travel to the desert to discover what is believed to be the best location for dune skating in the entire world, as it is full of soft and deep sand dunes, some of which reach a height of 140 metres. And if thats not enough for you, there are breathtaking views of the vast desert landscapes that surround you from every direction while you ski.',
          maxLines: 5,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
        ),
      );
    } else if (selectedTabIndex == 1) {
      return Container(
        padding: const EdgeInsets.all(10),
        height: 300,
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('39.C', style: TextStyle(fontSize: 50)),
                Text('7km', style: TextStyle(fontSize: 50)),
                Text('4.9', style: TextStyle(fontSize: 50)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'evaluation''sunny',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  'distance',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  'sunny',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'The best time to visit Siwa Morsi Matrouh depends on the type of tourism you are interested in. If you are looking for therapeutic tourism with salt and sand, then summer is the suitable choice, as temperatures are high, and the water is warm. If you want to enjoy natural scenery, historical sites, and cultural traditions, then winter is the ideal time, with moderate temperatures and clear skies. Some special seasons in Siwa include the harvest season in November, where the oasis celebrates date harvesting, and the Sheikh El-Dekhila Festival in January, featuring sports and artistic competitions between tribes.You can find more information about Siwa Morsi Matrouh and the available tourist activities through the following links:Best Time to Visit Marsa Matrouh Siwa EgyptBest Time to Go to Siwa OasisSiwa Oasis: An Unforgettable Journey with Salt and Sand Offering Healing for PeopleI wish you a happy and enjoyable trip! 😊',
              maxLines: 8,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      );
    } else if (selectedTabIndex == 2) {
      return Container(


        child:ElevatedButton(

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VideoScreen()),
            );

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
              'See Video',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );


    } else {
      return SizedBox(
        height: 171,
        width: MediaQuery.sizeOf(context).width,
        child: const Text(
          'Default content goes here.',
          maxLines: 5,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 359,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2 1.png'),
                        fit: BoxFit.fill,
                      ),
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

                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTabIndex = 0;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'Overview',
                          style: TextStyle(
                            color: selectedTabIndex == 0
                                ? App_color.application_color
                                : Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.assessment_rounded,
                          color: selectedTabIndex == 0
                              ? App_color.application_color
                              : Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'The weather',
                          style: TextStyle(
                            color: selectedTabIndex == 1
                                ? App_color.application_color
                                : Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.sunny,
                          color: selectedTabIndex == 1
                              ? App_color.application_color
                              : Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTabIndex = 2;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'Video',
                          style: TextStyle(
                            color: selectedTabIndex == 2
                                ? App_color.application_color
                                : Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.video_collection_outlined,
                          color: selectedTabIndex == 2
                              ? App_color.application_color
                              : Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on,
                      color: App_color.application_color,
                    ),
                  ),
                  const SizedBox(width: 2),
                  const Text('Siwa Morsi Matrouh'),
                  const SizedBox(height: 14),
                ],
              ),
              getContent(),

            ],
          ),
        ),
      ),
    );
  }
}

