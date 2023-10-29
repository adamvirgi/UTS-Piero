import 'package:flutter/material.dart';
import 'package:ro_uts_flut/main.dart';
import 'package:ro_uts_flut/profile.dart';

void main() {
  runApp(dashboard());
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          // Horizontal ListView
          Container(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      width: 150.0,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Horizontal Title $index'),
                          SizedBox(height: 8.0),
                          Text('Subtitle'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Vertical ListView
          Expanded(
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Vertical Title $index'),
                          SizedBox(height: 8.0),
                          Text('Subtitle'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
           ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profile(),
                        ));
                  },
                  child: Text("Menuju ke Profile")
                  ),

                  ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyApp(),
                    )
                  );
              },
              child: Text('Kembali ke Login'),
            ),
        ],
      ),
    );
  }
}
