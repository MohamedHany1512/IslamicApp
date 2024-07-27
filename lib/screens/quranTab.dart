import 'package:islamicapp/main.dart';
import 'package:flutter/material.dart';
import 'package:islamicapp/screens/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:islamicapp/screens/suraNameConstant.dart';

class quranTab extends StatelessWidget {
 List<String> suraNames = [
     "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  
  ];
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          'إسلامي',
          style: TextStyle(fontSize: 24.sp, color: Colors.white),
        ),
        Image.asset('dark mode/qur2an_screen_logo.png',height: 20.h,),
        Divider(
          color: Colors.yellow,
          thickness: 3,
          height: 3.h,
        ),
        Text(
          'سور القرآن الكريم',
          style: TextStyle(fontSize: 26.sp, color: Colors.white),
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
            itemBuilder: (context,index){
            return suraName(name: suraNames[index],index: index,);
          },
          itemCount: suraNames.length,
          ),
        )
      ]),
    );
  }
}