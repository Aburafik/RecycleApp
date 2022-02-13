// import 'package:flutter/material.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:vibration/vibration.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     // playSound();
//     alertCaptain();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Ringtone player'),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('playAlarm'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playAlarm();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('playAlarm asAlarm: false'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playAlarm(asAlarm: false);
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('playNotification'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playNotification();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('playRingtone'),
//                   onPressed: () {
//                     // FlutterRingtonePlayer.playRingtone();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('play'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.play(
//                       android: AndroidSounds.notification,
//                       ios: IosSounds.glass,
//                       looping: true,
//                       volume: 1.0,
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: ElevatedButton(
//                   child: const Text('stop'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.stop();
//                     Vibration.cancel();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void playSound() async {
//   await FlutterRingtonePlayer.playRingtone();
// }

// void alertCaptain() async {
//   FlutterRingtonePlayer.playRingtone();
//   if (await Vibration.hasCustomVibrationsSupport()) {
//     Vibration.vibrate(
//         pattern: [100, 2000, 500, 2000, 500, 2000, 500, 2000, 500, 2000]);
//   } else {
//     Vibration.vibrate();
//     await Future.delayed(Duration(milliseconds: 500));
//     Vibration.vibrate(
//         pattern: [100, 2000, 500, 2000, 500, 2000, 500, 2000, 500, 2000]);
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycle_app/Views/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}
