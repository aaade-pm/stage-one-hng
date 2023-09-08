import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Center(
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey[500],
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage('assets/images/profile-img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
