import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Ui/Dashboard Screen.dart';

class Popular_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 250.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/banner1_dashboard.jpg",
            image_caption: 'Dune',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/Shang-chi.jpeg',
            image_caption: 'Shang-chi',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: "assets/banner1_dashboard.jpg",
            image_caption: 'Dune',
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/Shang-chi.jpeg',
            image_caption: 'Shang-chi',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String? image_caption;
  final Function? function;

  Category({
    required this.image_location,
    this.image_caption,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashboardScreen(
                            image_location: image_location,
                            image_caption: image_caption)));
              },
              child: Container(
                height: 200.h,
                width: 170.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(image_location, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 170,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      image_caption!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "8.2",
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
              "2021",
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
