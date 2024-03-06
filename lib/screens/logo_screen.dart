import 'package:flutter/material.dart';
import 'package:gawla/screens/onboarding_screen.dart';

class Logo_Screen extends StatefulWidget
{
  const Logo_Screen({super.key});

  @override
  State<Logo_Screen> createState() => _Logo_ScreenState();
}

class _Logo_ScreenState extends State<Logo_Screen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const OnboardingScreen(),
    ),
    );
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCA28),
      body: Center(

        child: Image.asset('assets/images/logo_one.jpeg',width:300 ,height: 300,),
      ),

    );
  }
}