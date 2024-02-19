import 'package:flutter/material.dart';

class searchscreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  searchscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildSearchTextField(),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: const Center(child: Text('search  Content')),
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
}
