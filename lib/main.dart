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
      theme: ThemeData.light(),
      home: DefaultTabController(
        length: 6,
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
              isScrollable: true,
              tabs: [
                MyTab('testing1', Icons.person),
                MyTab('testing2', Icons.business_center_sharp),
                MyTab('testing3', Icons.bus_alert),
                MyTab('testing4', Icons.dangerous),
                MyTab('testing5', Icons.thumb_up),
                MyTab('testing6', Icons.place_outlined),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MyCard('Mail', Colors.yellow, Colors.black87),
              MyCard('Home', Colors.blue, Colors.white),
              MyCard('Phone', Colors.red, Colors.white),
              MyCard('Add', Colors.green, Colors.white),
              MyCard('Do it', Colors.orange, Colors.white),
              MyCard('Huh', Colors.pink, Colors.white),
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

class MyTab extends StatelessWidget {
  final String txt;
  final IconData icon;

  MyTab(this.txt, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon),
          Text('$txt'),
        ],
      ),
    );
  }
}




