import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant File/Comment_container_constant.dart';
import '../Constant File/cast_container_constant.dart';

class DashboardScreen extends StatefulWidget {
  final String? image_location;
  final String? image_caption;
  const DashboardScreen({
    Key? key,
    this.image_location,
    this.image_caption,
  }) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color(0xFF211921),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 445.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image_location!),
                          fit: BoxFit.fill)),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFF211921).withOpacity(1),
                            Color(0xFF211921).withOpacity(0),
                            Color(0xFF211921).withOpacity(0),
                            Color(0xFF211921).withOpacity(0),
                          ]),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///================== text ======================
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 435),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.image_caption!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "8.2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5.w),
                              Icon(
                                Icons.star,
                                color: Colors.orange.shade200,
                              )
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "2021,Denis Villeneuve",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),

                          ///==================== 3 buton in container ================

                          Row(
                            children: [
                              Container(
                                height: 35.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF382c3e),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    "Epis",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 35.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF382c3e),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    "Fantasy",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                height: 35.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF382c3e),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: Text(
                                    "Drama",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          ///=========== PERAGRAPH CODE ======================
                          SizedBox(height: 20.h),
                          RichText(
                            maxLines: 3,
                            text: TextSpan(
                                text:
                                    "Paul Atreides. a brilliant and gifted young man born into a great destiny beyond understanding, must travel to the most dangerous plane....",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' More',
                                      style: const TextStyle(
                                          color: Colors.white70, fontSize: 15),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // navigate to desired screen
                                        })
                                ]),
                          ),

                          SizedBox(height: 25.h),
                        ],
                      ),
                    ),

                    ///=============== cast ===================
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Cast",
                        style: TextStyle(fontSize: 25.sp),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    ///================== CAST CONTAINER CALL ===============

                    CastContainer(),
                    SizedBox(height: 20.h),

                    ///===================== video =================
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Trailer",
                        style: TextStyle(fontSize: 25.sp),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 176.h,
                        width: 375.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: AssetImage("assets/Fantasy_img.png"),
                                fit: BoxFit.cover)),
                        child: const Center(
                          child: Icon(
                            Icons.play_circle_filled_outlined,
                            color: Colors.white70,
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    ///==================  comments ==============
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Comments",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF7c44c2),
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),

                    ///=================================================
                    CommentContainer(),

                    SizedBox(height: 80.h),

                    ///======================= elevated but ==================================
                  ],
                ),
                Positioned(
                    top: 50,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 18,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 55.h,
              width: 330.w,
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Splash_Screen()));`
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7c44c2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Watch Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 19.sp),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
