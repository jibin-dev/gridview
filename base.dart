import 'package:flutter/material.dart';
import 'package:gridview/gridviewbuilder.dart';
import 'package:gridview/gridviewcustom.dart';
import 'package:gridview/gridviewextend.dart';

class base extends StatefulWidget {
  const base({super.key});

  @override
  State<base> createState() => _baseState();
}

class _baseState extends State<base> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text('GridView')
    ),),
    body: Center(
      child: Column(
        children: [SizedBox(height: 100,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => first(),));
          }, child: Text('GridView.Builder',style: TextStyle(fontSize: 20),)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => second(),));
          }, child: Text('GridView.Custom',style: TextStyle(fontSize: 20),)),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => third(),));
          }, child: Text('GridView.Extend',style: TextStyle(fontSize: 20),)),
        ],
      ),
    ),
    );
  }
}