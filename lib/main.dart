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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
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
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.white,
                    ),
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.pressed))
                        return Colors.black.withGreen(122);
                      return null;
                    }),
                  ),
                  onPressed: () => print("Hola"),
                  child: Text("Play"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
