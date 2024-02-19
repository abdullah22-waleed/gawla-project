import 'package:flutter/material.dart';
import 'package:gawla/utils/colors.dart';

class HotelsReservationscreen extends StatefulWidget {
  const HotelsReservationscreen({Key? key}) : super(key: key);

  @override
  _HotelsReservationscreenState createState() =>
      _HotelsReservationscreenState();
}

class _HotelsReservationscreenState extends State<HotelsReservationscreen> {
  double borderRadius = 50.0;

  int selectedAdultsNum = 1;
  int selectedChildNum = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Your Hotel',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFCA28),
        leading: IconButton(
          icon: const Icon(
            Icons.bed_outlined,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: screenWidth,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                TextFormField(
                  cursorColor: App_color.application_color,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: App_color.application_color),
                    ),
                    labelText: 'Name',
                    labelStyle: const TextStyle(
                      color: App_color.application_color,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  cursorColor: App_color.application_color,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: App_color.application_color),
                    ),
                    labelText: 'Mobile number',
                    labelStyle: const TextStyle(
                      color: App_color.application_color,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  cursorColor: App_color.application_color,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: App_color.application_color),
                    ),
                    labelText: 'Coming Date',
                    labelStyle: const TextStyle(
                      color: App_color.application_color,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  cursorColor: App_color.application_color,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: App_color.application_color),
                    ),
                    labelText: 'Leaving Date',
                    labelStyle: const TextStyle(
                      color: App_color.application_color,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildDropdownButton(
                      labelText: 'Adults',
                      selectedValue: selectedAdultsNum,
                      onChanged: (value) {
                        setState(() {
                          selectedAdultsNum = value as int;
                        });
                      },
                    ),
                    _buildDropdownButton(
                      labelText: 'childs',
                      selectedValue: selectedChildNum,
                      onChanged: (value) {
                        setState(() {
                          selectedChildNum = value as int;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 52,
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
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
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
                          'Pay Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton({
    required String labelText,
    required int selectedValue,
    required ValueChanged<dynamic> onChanged,
  }) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.4,
      child: DropdownButtonFormField<int>(
        value: selectedValue,
        onChanged: onChanged,
        items: List.generate(6, (index) {
          return DropdownMenuItem<int>(
            value: index + 1,
            child: Text((index + 1).toString()),
          );
        }),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: App_color.application_color,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: App_color.application_color),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
