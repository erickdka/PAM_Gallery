import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQlxIwWWLkdcpU1k2VnJzaUTS71bSQMEO8eLzDE9WKdzlGkXxIXyyhlhZX_7a_iIfZgTQ&usqp=CAU'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 30.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.black, fontSize: 45.0)),
          ),
          Positioned(
            left: 40.0,
            top: 150.0,
            child: Text(date.day.toString() + ", " + date.month.toString() + ' ' + date.year.toString(), style: TextStyle(color: Colors.black, fontSize: 16.0)),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
