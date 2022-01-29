import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'John Doe',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Mobile Developer',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
                SizedBox(
                  height: 24.0,
                  width: 180.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      ' + 90 (555) 555 55 55',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'johndoe@doejohn.com',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Image.asset('images/profile.jpg')
