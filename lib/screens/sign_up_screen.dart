import 'package:flutter/material.dart';
import 'package:gawla/screens/sign_in_screen.dart';
import 'package:gawla/utils/colors.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  double borderRadius = 50.0;
  bool is_pass = true;
  String selectedAccountType = 'natural';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

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
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: screenWidth,
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const SizedBox(
                    height: 56,
                    width: 262,
                    child: Text(
                      'Sign in to continue',
                      style: TextStyle(
                        color: App_color.text_color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 83,
                  ),
                  TextFormField(
                    cursorColor: App_color.application_color,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: App_color.application_color),
                      ),
                      labelText: 'User Name',
                      labelStyle: const TextStyle(
                        color: App_color.application_color,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: App_color.application_color,
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
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: App_color.application_color,
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
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: App_color.application_color),
                      ),
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        color: App_color.application_color,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: App_color.application_color,
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
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: is_pass,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: App_color.application_color),
                      ),
                      labelText: 'password',
                      labelStyle: const TextStyle(
                        color: App_color.application_color,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: App_color.application_color,
                      ),
                      suffixIcon: IconButton(
                        color: App_color.application_color,
                        onPressed: () {
                          setState(() {
                            is_pass = !is_pass;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  TextFormField(
                    cursorColor: App_color.application_color,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: App_color.application_color),
                      ),
                      labelText: 'account type',
                      labelStyle: const TextStyle(
                        color: App_color.application_color,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: App_color.application_color,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _showAccountTypeDialog();
                        },
                        icon: const Icon(Icons.arrow_downward),
                        color: App_color.application_color,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'have a account?',
                        style: TextStyle(
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Sign_in_screen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: App_color.application_color),
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 343,
                    height: 21,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 150,
                            height: 1,
                            color: const Color(0xffEBF0FF),
                          ),
                        ),
                        const SizedBox(
                          width: 28,
                        ),
                        const Text(
                          'OR',
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 23,
                        ),
                        Expanded(
                          child: Container(
                            width: 120,
                            height: 1,
                            color: const Color(0xffEBF0FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(screenWidth, 50),
                      ),
                      icon: const Icon(Icons.facebook),
                      label: const Center(
                        child: Text(
                          'Login with facebook',
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(screenWidth, 50),
                    ),
                    icon: Image.asset(
                      'assets/images/google.png',
                      height: 24,
                      width: 24,
                    ),
                    label: const Center(
                      child: Text(
                        'Login with Google',
                        style: TextStyle(
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to show the dropdown list
  Future<void> _showAccountTypeDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Account Type'),
          content: DropdownButton<String>(
            value: selectedAccountType,
            onChanged: (String? newValue) {
              setState(() {
                selectedAccountType = newValue!;
              });
              Navigator.of(context).pop();
            },
            items: <String>[
              'natural',
              'tour guide',
              'With a mobility disability',
              'With a hearing disability',
              'Other'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
