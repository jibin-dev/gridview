import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.amber,title: Text('GridView extend'),
    ),
    body: GridView.extent(maxCrossAxisExtent: 150,
    children: [
      _buildGridItem(1),
      _buildGridItem(2),
      _buildGridItem(3),
      _buildGridItem(4),
      _buildGridItem(5),
      _buildGridItem(6)
    ],),
    );
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