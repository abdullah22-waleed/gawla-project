import 'package:flutter/material.dart';
import 'package:gawla/screens/companiesScreen.dart';
import 'package:gawla/screens/hotelsScreen.dart';
import 'package:gawla/screens/restorant_screen.dart';
import 'package:gawla/screens/shoping_screen.dart';

class CustomListTile extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String title;
  final IconData? doHaveMoreOptions;
  final int infoCount;

  const CustomListTile({
    Key? key,
    required this.isCollapsed,
    required this.icon,
    required this.title,
    this.doHaveMoreOptions,
    required this.infoCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Check if the tapped tile corresponds to "Hotels"
        if (title == 'Hoteles') {
          // Navigate to HotelScreen when "Hotels" tile is tapped
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const HotelsScreen(),
          ));
        }
        if (title == 'Tourism Companies') {
          // Navigate to HotelScreen when "Hotels" tile is tapped
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CompaniesScreen(),
          ));
        }
        if (title == 'What to eat') {
          // Navigate to HotelScreen when "Hotels" tile is tapped
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Bahiya_restorant(),
          ));
        }
        if (title == 'Shopping') {
          // Navigate to HotelScreen when "Hotels" tile is tapped
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Shoping(),
          ));
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: isCollapsed ? 300 : 80,
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      icon,
                      color: Colors.white, // Icon color
                    ),
                    if (infoCount > 0)
                      Positioned(
                        right: -5,
                        top: -5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red, // Info count color
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            if (isCollapsed) const SizedBox(width: 10),
            if (isCollapsed)
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white, // Text color
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    if (infoCount > 0)
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(
                                0xFFFFCA28), // Info count background color
                          ),
                          child: Center(
                            child: Text(
                              infoCount.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            if (isCollapsed) const Spacer(),
            if (isCollapsed)
              Expanded(
                flex: 1,
                child: doHaveMoreOptions != null
                    ? IconButton(
                        icon: Icon(
                          doHaveMoreOptions,
                          color: Colors.white, // Icon color
                          size: 12,
                        ),
                        onPressed: () {},
                      )
                    : const Center(),
              ),
          ],
        ),
      ),
    );
  }
}
