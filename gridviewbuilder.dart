import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.amber,title: Text('GridView Builder'),
    ),
      body: Stack(children: [
        // grind view builder 
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,childAspectRatio: 2/1), itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Center(child: Text(builder[index],style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),)),

            );
          },itemCount: builder.length,
          ),
      ],),
    );
  }
}
final List builder=['gridview','builder','No3','No4',];