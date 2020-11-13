import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(ManagerApp());
}

class ManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white12,
    ));
    return MaterialApp(
      title: 'Manager',
      home: HomePage(),
    );
  }
}

class ManagerCard extends StatelessWidget {
  final String _name;
  final String _team;
  final String _image;

  const ManagerCard(
    this._name,
    this._team,
    this._image, {
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('$_image')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_name',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment(1, 0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                  '$_team',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manager'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          ManagerCard('Jurgen Klopp', 'Liverpool', 'assets/images/klopp.png'),
          ManagerCard('Frank Lampard', 'Chelsea', 'assets/images/lampard.jpg'),
          ManagerCard('Ole Gunnar Solskjaer', 'Manchester United',
              'assets/images/solskjaer.jpg'),
        ],
      ),
    );
  }
}
