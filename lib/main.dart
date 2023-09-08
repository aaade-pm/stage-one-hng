import 'package:flutter/material.dart';
import 'package:stage_one_hng/utils/github_button.dart';
import 'package:stage_one_hng/utils/profile_picture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //creating the appbar
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'PROFILE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //creating the content of the app
      body: const Column(
        children: [
          //creating the profile picture
          ProfilePicture(),

          SizedBox(
            height: 30,
          ),

          //adding my slack name
          Text(
            'OLATUNJI ADEMOLA',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

          //created the button that opens my github profile
          GithubButton(),
        ],
      ),
    );
  }
}
