import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant File/Genres_container_constant.dart';
import '../Constant File/Legendary_movies_container.dart';
import '../Constant File/Popular_Container_constant.dart';
import 'BottomNavigation bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///===============  bottom navigation ===============
  int pageIndex = 0;
  // final List<Widget> tabList = [];

  ///===================== curasal slider ===================
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'assets/home1-banner.jpg',
    'assets/home2_banner.png',
    'assets/home1-banner.jpg',
    'assets/home3-banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF211921),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 44, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hi, Melanie!",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 30.sp,
                            ),
                          ),
                          Spacer(),
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/profile_img.png'),
                            radius: 30,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF7c44c2),
                                radius: 7.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF382c3e),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Search',
                            hintStyle: const TextStyle(color: Colors.white70),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white70,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        "For You",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                ///========================= image slider ====================
                SizedBox(height: 25.h),
                Column(
                  children: [
                    CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        return buildImage(urlImage, index);
                      },
                      options: CarouselOptions(
                        height: 285.h,
                        autoPlay: false,
                        viewportFraction: 0.75,
                        // enableInfiniteScroll: false,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 60.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF382c3e),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var i = 0; i < urlImages.length; i++)
                            buildIndicator(activeIndex == i)
                        ],
                      ),
                    ),
                  ],
                ),

                ///==================================== Popular ===================
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.sp,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xFF643B9F),
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                ///========================= Popular_ container call =====-=======
                Popular_Container(),

                ///============================= Genres ========================
                SizedBox(height: 15.h),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Genres",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.sp,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xFF643B9F),
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                //=========================== Genres_Container call ===============
                Genres_Container(),

                ///============================= Legendary movies ========================
                SizedBox(height: 15.h),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Legendary movies",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.sp,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xFF643B9F),
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                //=========================== Genres_Container call ===============
                Legendary_movies_Container(),
                SizedBox(height: 52.h),
              ],
            ),
          ),

          ///======================== bottom navigation bar ==============================
          BottomNavPage(),
        ],
      ),
    );
  }
}

///===================== sarusal slider ====================
Widget buildImage(String urlImage, int index) => Container(
      width: 235.w,
      child: Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.white, width: 0.6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(urlImage, fit: BoxFit.cover)),
      ),
    );

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 10 : 8,
      width: isSelected ? 10 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Color(0xFF998396) : Colors.grey,
      ),
    ),
  );
}
