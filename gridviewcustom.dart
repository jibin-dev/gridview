import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.amber,title: Text('GridView custom'),
    ),
    body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),
       
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return _buildGridItem(index);
        },childCount: 20
        
      )),);
  }
}
  Widget _buildGridItem(int index){
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      child: Text('This Is index $index'),
    );
  }
