import 'package:flutter/material.dart';
import 'package:color_match/menu.dart';

class Levels extends StatelessWidget {
  const Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
            leading:IconButton(
                icon:Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Menu();
                      },
                    ),
                  );
                }
            )
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Select Level',
                textScaler: TextScaler.linear(3.5),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text('EASY'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                  ),
                  onPressed: () {},
                  child: Text('MEDIUM'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 300,
                height: 65,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {},
                  child: Text('HARD'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
