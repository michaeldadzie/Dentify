import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/tab_screen.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.grey[900], // status bar color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(Dentify());
}

class Dentify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}
