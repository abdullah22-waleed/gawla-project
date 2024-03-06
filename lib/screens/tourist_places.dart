import 'package:flutter/material.dart';
import 'package:gawla/screens/details_screen.dart';
import 'package:gawla/utils/colors.dart';
import 'package:gawla/utils/rate.dart';

List<String> images = [
  'assets/images/2 1.png',
  'assets/images/Rectangle 2052.png',
  'assets/images/pexels-photo-6010281.jpeg',
  'assets/images/istockphoto-1397759783-170667a.webp',
];

List<String> texts = [
  'التزحلق على الرمال',
  'محمية وادي الريان',
  'بحيرة قـــارون',
  'محمية وادي الحيتان',
];
List<String> text_fay = [
  'واحة سيوة مرسي مطروح',
  'وادي الريان . الفيوم',
  'يوسف الصديق . الفيوم',
  'يوسف الصديق. الفيوم',
];

class TouristPlaces extends StatefulWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  State<TouristPlaces> createState() => _TouristPlacesState();
}

class _TouristPlacesState extends State<TouristPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: App_color.application_color,
        title: Image.asset(
          'assets/images/app_bar_photo.jpeg',
          height: 72,
          width: 150,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: List.generate(
              images.length,
              (index) => GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Details(),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Wadi_Screen(),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QarunLakeScreen(),
                      ),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mahmait_Screen(),
                      ),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 242, 229),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 113,
                        height: 145,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: const TextStyle(fontSize: 16),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.location_on,
                                    color: App_color.application_color,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Rate(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'جيد . 1050رد',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Icon(Icons.accessible_forward_rounded),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Wadi_Screen extends StatelessWidget {
  const Wadi_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('وادي الريان'),
      ),
      body: const Center(
        child: Text('محتوى الشاشة الجديدة هنا'),
      ),
    );
  }
}

class QarunLakeScreen extends StatelessWidget {
  const QarunLakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بحيرة قـــارون'),
      ),
      body: const Center(
        child: Text('محتوى الشاشة الجديدة هنا'),
      ),
    );
  }
}

class Mahmait_Screen extends StatelessWidget {
  const Mahmait_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('محمية وادي الحيتان'),
      ),
      body: const Center(
        child: Text('محتوى الشاشة الجديدة هنا'),
      ),
    );
  }
}
