import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 145.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/cast1.webp",
            image_caption: 'Timothée Chalamet',
          ),
          SizedBox(width: 8.w),
          Category(
            image_location: 'assets/cast2.jpeg',
            image_caption: 'Zendaya',
          ),
          SizedBox(width: 8.w),
          Category(
            image_location: 'assets/cast3.jpg',
            image_caption: 'Rebecca Ferguson',
          ),
          SizedBox(width: 8.w),
          Category(
            image_location: 'assets/cast4.jpg',
            image_caption: 'Oscar Isaac',
          ),
          SizedBox(width: 8.w),
          Category(
            image_location: 'assets/cast5.png',
            image_caption: 'Jason Momoa',
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
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width: 115,
          // color: Colors.cyanAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    // color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage(image_location), fit: BoxFit.cover)),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: 70,
                child: Text(
                  textAlign: TextAlign.center,
                  image_caption,
                  style: TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Tenor Sans',
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
