import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/Mikasa.jpg'),
                  radius: 50.0,
                ),
                Text(
                  'Mikasa Ackerman',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Survey Corps',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.teal[100],
                    fontFamily: 'Sans',
                    letterSpacing: 6.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(
                        Icons.work,
                      ),
                      title: Text(
                        '104th Training Corps',
                        style: TextStyle(
                          fontFamily: 'Sans',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text(
                      'Ackerman Clan',
                      style: TextStyle(
                        fontFamily: 'Sans',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
