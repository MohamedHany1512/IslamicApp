import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/screens/itemHadeethDetails.dart';

class hadeethDetails extends StatefulWidget {
  hadeethDetails({super.key});
  static String id = 'hadeethDetails';

  @override
  State<hadeethDetails> createState() => _hadeethDetailsState();
}

class _hadeethDetailsState extends State<hadeethDetails> {
      List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as hadeethDetailsArgs;
   if(verses.isEmpty){
    loadFile(args.index);}
    return Scaffold(
      floatingActionButton: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_forward,color: Colors.yellow,)),
     body :Stack(fit: StackFit.expand, children: [
        Image.asset(
          'dark mode/dark_bg.png',
          fit: BoxFit.fill,
        ),
      verses.isEmpty ?
       Center(child:CircularProgressIndicator() ,):
        Container(
     
          
          child: ListView.separated(
            separatorBuilder: (context,Builder){ return  Divider(color: Colors.yellow,thickness: 3,height: 3,);},
            itemBuilder: (context,index){
            return  itemHadeethDetails(name: verses[index],index: index,);
          },
          itemCount: verses.length,
          ),
        )
    
    ],
      )
    );
  }

  void loadFile(int index)async{
  String content =await rootBundle.loadString('hadeth/h${index+1}.txt');
  List <String> lines = content.split('\n');
  verses = lines;
  setState(() {
    
  });
  }
}
class hadeethDetailsArgs{
  String name;
  int index;
  hadeethDetailsArgs({required this.name,required this.index});
}
