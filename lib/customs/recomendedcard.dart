import 'package:flutter/material.dart';

class Recomendedcard extends StatelessWidget {
  final String title;
  final String imagePath;

  const Recomendedcard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
          width: MediaQuery.of(context).size.width * 0.29,
          height: MediaQuery.of(context).size.height * 0.22,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 99,
          height: 32,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Akatab',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
