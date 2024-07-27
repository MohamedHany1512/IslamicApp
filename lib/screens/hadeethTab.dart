import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:islamicapp/screens/hadeethNameConst.dart';

class Hadeeth extends StatelessWidget {
  Hadeeth({super.key});
  List<String> hadeethName = [
    'الحد يث الاول',
    'الحد يث الثاني',
    'الحد يث الـثـالـث',
    'الحد يث الـرابع',
    'الحد يث الخامس',
    'الحد يث السادس',
    'الحد يث السابع',
    'الحد يث الثامن',
    'الحديث التاسع',
    'الحديث العاشر',
    'الحديث الحادي عشر',
    'الحد يث الثاني عشر',
    'الحد يث الثالث عشر',
    'الحد يث الرابع عشر',
    'الحد يث الخامس عشر',
    'الحديث السادس عشر',
    'الحديث السابع عشر',
    'الحديث الثامن عشر',
    'الحديث التاسع عشر',
    'الحد يث العشرون',
    'الحديث الحادي والعشرون',
    'الحديث الثاني والعشرون',
    'الحديث الثالث والعشرون',
    'الـحديث الرابع والعشرون',
    'الحديث الخامس والعشرون',
    'الحد يث السادس والعشرون',
    'الحد يث السابع والعشرون',
    'الحد يث الثامن والعشرون',
    'الحد يث التاسع والعشرون',
    'الحديث الثلا ثــون',
    'الـحديث الحادي والثلاثون',
    'الحديث الثاني والثلاثون',
    'الحد يث الثالث والثلاثون',
    'الحد يث الرابع والثلاثون',
    'الحد يث الخامس والثلاثون',
    'الحد يث السادس والثلاثون',
    'الحديث السابع والثلاثون',
    'الـحديث الثامن والثلاثون',
    'الحديث التاسع والثلاثون',
    'الحد يث الأربعون',
    'الحد يث الحادي والأربعون',
    'الحد يث الثاني والأربعـون',
    'الحد يث الثالث والأربعون',
    'الحديث الرابع والأربعون',
    ' الـحديث الخامس والأربعون',
    'الحديث السادس والأربعون',
    'الحديث السابع والأربعون',
    'الـحديث الثامن والأربعون',
    'الحديث التاسع والأربعون',
    'الحديث الخمسون'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'dark mode/dark_bg.png',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'إسلامي',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Image.asset('dark mode/hadeth_logo.png'),
                Divider(
                  color: Colors.yellow,
                  thickness: 3,
                  height: 3.h,
                ),
                Text(
                  'الأحاديث',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.sp,
                      color: Colors.white),
                ),
                Divider(
                  color: Colors.yellow,
                  thickness: 3,
                  height: 3.h,
                ),
                 Expanded(
          child: ListView.separated(separatorBuilder: (context,index){
            return Divider(
          color: Colors.yellow,
          thickness: 2,
          height: 3.h,
        );
        
          },
          itemBuilder: (context, index){
               return hadeethNames(name: hadeethName[index], index: index);
          },
          itemCount: hadeethName.length,
          ),
          )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
