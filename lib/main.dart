import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff622F74),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //
              },
            ),
            title: Text('Tabs'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.mail_outline,
                    color: Colors.lightGreen,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.place_outlined,
                    color: Colors.purpleAccent,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MyCard('Mail', Colors.yellow, Colors.black87),
              MyCard('Home', Colors.blue, Colors.white),
              MyCard('Phone', Colors.red, Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String txt;
  final Color bgColor;
  final Color fColor;

  MyCard(this.txt, this.bgColor, this.fColor);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      color: bgColor,
      child: Center(
        child: Text(txt, style: TextStyle(
          fontSize: 50.0,
          color: fColor,
          fontWeight: FontWeight.bold,
        )),
      ),
    );
  }
}



