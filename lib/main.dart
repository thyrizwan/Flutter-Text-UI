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
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Flutter Text Styling',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Experiment with text styles',
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.red.shade700),
                    onPressed: () {
                      final myMessage = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          'You clicked the button! Happy Learning',
                          style: TextStyle(
                            color: Colors.green.shade900,
                            fontSize: 18,
                          ),
                        ),
                        backgroundColor: Colors.green.shade50,
                        duration: Duration(seconds: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(myMessage);
                    },
                    child: Text(
                      'Press Here to See The Message',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 24,
                          ),
                        ),
                        TextSpan(
                          text: 'Flutter!',
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
