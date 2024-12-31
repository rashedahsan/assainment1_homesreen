import 'package:assainment1_homesreen/customs/movieviwcaerd.dart';
import 'package:assainment1_homesreen/customs/recomendedcard.dart';
import 'package:flutter/material.dart';

import '../customs/moviecard.dart';

class Homesreen extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Action",
    "Anime",
    "Sci-fi",
    "Thriller"
  ];
  int selectedCategoryIndex = 0;
  int currentPage = 0;

  final List<String> movieImages = [
    'assets/image.png',
    'assets/image.png',
    'assets/image.png',
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 50.0, left: 16.0, right: 32.0, bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Greeting Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Rafsan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Let’s watch today',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                width: 49,
                height: 47,
                child: Stack(
                  children: [
                    Positioned(
                      left: 1.0,
                      top: 0,
                      child: Opacity(
                        opacity: 0.60,
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/profile.png"),
                                fit: BoxFit.cover),
                            gradient: LinearGradient(
                              begin: Alignment(0.71, -0.71),
                              end: Alignment(-0.71, 0.71),
                              colors: [Color(0xFFFF008B), Color(0xFF00FFD2)],
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 3, color: Color(0xFFD35198)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Profile Picture
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 16.0, left: 16.0, right: 0.0, bottom: 8.0),
              child: Container(
                width: 290,
                height: 43,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF888A8F)),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 14,
                          fontFamily: 'Akatab',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.all(24),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/Search.png'), // Path to your image
                            fit: BoxFit
                                .cover, // Adjust how the image is displayed
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.24,
            ),
            Container(
              width: 43,
              height: 43,
              decoration: ShapeDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/adjust.png"), fit: BoxFit.cover),
                color: Color(0xFFFF3440),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0, bottom: .4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Akatab',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'See More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            children: categories.map((category) {
              int index = categories.indexOf(category);
              bool isSelected = index == selectedCategoryIndex;
              return GestureDetector(
                onTap: () {
                  // setState(() {
                  //   selectedCategoryIndex = index;
                  // });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 8,
                  ),
                  padding: EdgeInsets.only(
                      top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0x80FF3440) : Color(0xFF221821),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Akatab',
                      fontWeight: FontWeight.w400,
                      color: isSelected ? Colors.white : Colors.grey[400],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.28,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image.png"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            movieImages.length,
            (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentPage == index ? Colors.white : Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 4.0, left: 16.0, right: 0.0, bottom: .0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trending Movies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Akatab',
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to "See More" page
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MovieCard(
              title: "Yes I Do",
              imagePath: "assets/ye.png",
            ),
            MovieCard(
              title: "Soul Mate",
              imagePath: "assets/so.png",
            ),
            MovieCard(
              title: "UB's Secret",
              imagePath: "assets/uv.png",
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 4.0, left: 16.0, right: 0.0, bottom: .0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'continue watching',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Akatab',
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to "See More" page
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WideMovieCard(
              title: " Wednesday I Season - 1I\nEpisode - 3",
              imagePath: "assets/wed.png",
            ),
            WideMovieCard(
              title: "Emily in Paris I\nSeason - 1I Episode ",
              imagePath: "assets/ep.png",
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 4.0, left: 16.0, right: 0.0, bottom: .0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended For You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Akatab',
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to "See More" page
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Recomendedcard(
              title: "Double Love",
              imagePath: "assets/dl.png",
            ),
            Recomendedcard(
              title: "Curse Of The\nRiver",
              imagePath: "assets/cu.png",
            ),
            Recomendedcard(
              title: "Sunita",
              imagePath: "assets/su.png",
            ),
          ],
        ),
      ],
    );
  }
}
