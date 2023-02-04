import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentContainer extends StatelessWidget {
  const CommentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 128.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/cast1.webp",
            name: 'Cody Fisher',
            Comments:
                "Great movie i will review it more than once Special thanks to the operator!....",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/cast2.jpeg',
            name: 'Zendaya',
            Comments:
                "Great movie i will review it more than once Special thanks to the operator!....",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/cast3.jpg',
            name: 'Rebecca Ferguson',
            Comments:
                "Great movie i will review it more than once Special thanks to the operator!....",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/cast4.jpg',
            name: 'Oscar Isaac',
            Comments:
                "Great movie i will review it more than once Special thanks to the operator!....",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/cast5.png',
            name: 'Jason Momoa',
            Comments:
                "Great movie i will review it more than once Special thanks to the operator!....",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  final String name;
  final String Comments;

  Category({
    required this.image_location,
    required this.name,
    required this.Comments,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 128.h,
          width: 290.w,
          decoration: BoxDecoration(
            color: Color(0xFF382c3e),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image_location),
                    radius: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "june 14, 2021",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "5.0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Icon(
                    Icons.star,
                    color: Colors.orange.shade200,
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                Comments,
                style: TextStyle(fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
