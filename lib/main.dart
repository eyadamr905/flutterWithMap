

import 'package:flutter/material.dart';
import 'package:map/pages/Map.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home:Map12()
      
   
    );
  }
  
}
// class Test1233 extends StatefulWidget {
//   const Test1233({ Key? key }) : super(key: key);

//   @override
//   _Test1233State createState() => _Test1233State();
// }

// class _Test1233State extends State<Test1233> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Map12(),
//     );
//   }
// }