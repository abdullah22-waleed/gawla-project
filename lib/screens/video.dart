import 'package:flutter/material.dart';
import 'package:gawla/utils/colors.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_color.application_color,
        title:  Image.asset('assets/images/app_bar_photo.jpeg',height: 72,width: 150,),
      ),
      body: Column(

        children:
        [
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoAiC2kLnAOpDhYfejHwEVLhotHcM4dVsgTA&usqp=CAU',height: 500,width: 500,),
     ]
      ),
    );
  }
}
