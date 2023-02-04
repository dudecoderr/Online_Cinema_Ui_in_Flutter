import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavPage extends StatefulWidget {
  BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home_outlined,
    Icons.explore_outlined,
    Icons.video_call_outlined,
    Icons.person_outline,
  ];

  ///===============  bottom navigation ===============

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF382c3e).withOpacity(0.95),
          child: Container(
            height: 65,
            alignment: Alignment.center,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (ctx, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 50,
                    decoration: BoxDecoration(
                      border: i == selectedIndex
                          ? Border(
                              top: BorderSide(
                                  width: 3.0, color: Colors.orange.shade200))
                          : null,
                      gradient: i == selectedIndex
                          ? LinearGradient(
                              colors: [Colors.grey.shade800, Color(0xFF382c3e)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          : null,
                    ),
                    child: Icon(
                      data[i],
                      size: 30.sp,
                      color: i == selectedIndex
                          ? Colors.orange.shade200
                          : Colors.white70,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
