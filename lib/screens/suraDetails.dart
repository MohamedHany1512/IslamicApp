import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/screens/item_Sura_Details.dart';

class suraDetails extends StatefulWidget {
  suraDetails({super.key});
  static String id = 'suraDetails';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
      List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as suraDetailsArgs;
   if(verses.isEmpty){
    loadFile(args.index);}
    return Scaffold( 
       floatingActionButton: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_forward,color: Colors.yellow,)),
    
     body :Stack(fit: StackFit.expand, children: [
        Image.asset(
          'dark mode/dark_bg.png',
          fit: BoxFit.fill,
        ),
      verses.isEmpty ?
       Center(child:CircularProgressIndicator() ,):
        Container(
     
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          
                  ),
          child: ListView.separated(
            separatorBuilder: (context,Builder){ return  Divider(color: Colors.yellow,thickness: 3,height: 3,);},
            itemBuilder: (context,index){
            return  itemSuraDetails(name: verses[index],index: index,);
          },
          itemCount: verses.length,
          ),
        )
    
    ],
      )
    );
  }

  void loadFile(int index)async{
  String content =await rootBundle.loadString('assets/${index+1}.txt');
  List <String> lines = content.split('\n');
  verses = lines;
  setState(() {
    
  });
  }
}
class suraDetailsArgs{
  String name;
  int index;
  suraDetailsArgs({required this.name,required this.index});
}
