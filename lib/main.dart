import 'package:color_match/levels.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(backgroundColor: Colors.black54),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/logo.GIF', width: 400.0),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 200,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  overlayColor: WidgetStateProperty.resolveWith<Color?>((
                    Set<WidgetState> states,
                  ) {
                    if (states.contains(WidgetState.pressed))
                      return Colors.black.withGreen(122);
                    return null;
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Levels();
                      },
                    ),
                  );
                },
                child: Text("Play"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
