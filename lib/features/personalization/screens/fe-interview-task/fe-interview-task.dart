import 'package:feinterview/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class FrontendInterviewTask extends StatelessWidget {
  const FrontendInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(StrollImages.sunSetBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Overlay
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Top Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stroll Bonfire',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '22h 00m',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.people, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '103',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
