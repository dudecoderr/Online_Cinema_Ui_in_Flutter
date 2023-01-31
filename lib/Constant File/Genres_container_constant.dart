import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Genres_Container extends StatelessWidget {
  const Genres_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.cyanAccent,
      height: 170.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/Horror.png",
            image_caption: 'Horror',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/Fantasy_img.png',
            image_caption: 'Fantasy',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: "assets/History.png",
            image_caption: 'History',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/comics.png',
            image_caption: 'Comics',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/Detective.png',
            image_caption: 'Detective',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/Action.png',
            image_caption: 'Action',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
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
              height: 140.h,
              width: 200.w,
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
                child: Text(
                  image_caption,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
