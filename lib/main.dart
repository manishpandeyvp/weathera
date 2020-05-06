import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool text = false;
  bool search = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SearchScreen();
                      }));
                    },
                    child: Hero(
                      tag: 'search',
                      child: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 30.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Ahmedabad',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 30.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'INDIA',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: Text(
                      '32',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Center(child: Icon(WeatherIcons.wi_cloudy)),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 30.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Partly Sunny',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 25.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  '20 OCT, SUNDAY',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 235.0,
            ),
            Divider(
              color: Colors.white,
              indent: 60.0,
              endIndent: 60.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Center(
                        child: Text(
                          'TODAY',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 40.0, child: Icon(WeatherIcons.wi_day_sunny)),
                    Container(
                      height: 25.0,
                      child: Text(
                        '23/27',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Center(
                        child: Text(
                          'MON',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(height: 40.0, child: Icon(WeatherIcons.wi_cloud)),
                    Container(
                      height: 25.0,
                      child: Text(
                        '23/27',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Center(
                        child: Text(
                          'TUE',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 40.0,
                        child: Icon(WeatherIcons.wi_day_storm_showers)),
                    Container(
                      height: 25.0,
                      child: Text(
                        '23/27',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Center(
                        child: Text(
                          'WED',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 40.0,
                        child: Icon(WeatherIcons.wi_day_light_wind)),
                    Container(
                      height: 25.0,
                      child: Text(
                        '23/27',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
