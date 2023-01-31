import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Legendary_movies_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 250.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/Alien.png",
            image_caption: 'Alien',
            rate: '8.2',
            year: '2023',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/300.png',
            image_caption: '300',
            rate: '5.0',
            year: '2020',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: "assets/Alien.png",
            image_caption: 'Alien',
            rate: '5.2',
            year: '2020',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/300.png',
            image_caption: '300',
            rate: '7.2',
            year: '2018',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final String rate;
  final String year;

  Category({
    required this.image_location,
    required this.image_caption,
    required this.rate,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190.h,
              width: 170.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.yellow,
                  image: DecorationImage(
                      image: AssetImage(image_location), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 170,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      image_caption,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      rate,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange.shade200,
                    )
                  ],
                ),
              ),
            ),
            Text(
              year,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
