import 'package:flutter/material.dart';
import 'package:gawla/screens/home_screen.dart';
import 'package:gawla/screens/sign_up_screen.dart';
import 'package:gawla/utils/colors.dart';

class Sign_in_screen extends StatefulWidget {
  const Sign_in_screen({super.key});

  @override
  State<Sign_in_screen> createState() => _Sign_in_screenState();
}

class _Sign_in_screenState extends State<Sign_in_screen> {
  double borderRadius = 50.0;

  bool is_pass = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFCA28),
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
              width: MediaQuery.sizeOf(context).width,
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
                      ' Welcome back,\n Log in to continue',
                      style: TextStyle(
                        color: App_color.text_color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 89,
                  ),

                  TextFormField(
                    //   style: TextStyle(color: App_color.application_color),
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
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: App_color.application_color,
                    obscureText: is_pass,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: App_color.application_color),
                      ),
                      fillColor: const Color(0xffFFCA28),
                      counterStyle:
                          const TextStyle(color: App_color.application_color),
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
                          icon: const Icon(
                            Icons.remove_red_eye,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
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
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 52,
                  ),

                  // Container(
                  //   width: double.infinity,
                  //   height: 57,
                  //   color: App_color.application_color,
                  //   child: TextButton(onPressed: () {},
                  //     child: Text('Log In',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //
                  //       ),
                  //     ),
                  //
                  //   ),
                  //
                  // ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an acount?',
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
                                    return const Sign_up();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: App_color.application_color,
                              ),
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
}
