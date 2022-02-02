// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
//
// class XylophoneApp extends StatefulWidget {
//   const XylophoneApp({Key? key}) : super(key: key);
//
//   @override
//   _XylophoneAppState createState() => _XylophoneAppState();
// }
//
// class _XylophoneAppState extends State<XylophoneApp> {
//
//   final playr = AudioCache();
//
//   void playSound(int num){
//     playr.play('audio/note$num.wav');
//   }
//   Widget buildKey({Color? color, int? soundnum}){
//     return Expanded(
//       child: Container(
//         color: color,
//         child: TextButton(
//           child: Text(
//             'Press Play!',
//           ),
//           onPressed: (){
//             playSound(soundnum!);
//           },
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: Text('Music Playr'),
//           backgroundColor: Colors.blue.shade900,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 buildKey(color: Colors.red, soundnum: 1),
//                 buildKey(color: Colors.blueGrey, soundnum: 2),
//                 buildKey(color: Colors.green, soundnum: 3),
//                 buildKey(color: Colors.deepOrange, soundnum: 4),
//                 buildKey(color: Colors.blueAccent, soundnum: 5),
//                 buildKey(color: Colors.teal, soundnum: 6),
//                 buildKey(color: Colors.purple, soundnum: 7),
//               ],
//             )
//           ),
//         )
//     );
//   }
// }
