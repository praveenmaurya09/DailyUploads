import 'package:flutter/material.dart';

import 'package:port/utils/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text("praveenmaurya.in")
        ],
      ),
    );
  }
}