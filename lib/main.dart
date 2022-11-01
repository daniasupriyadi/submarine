import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submarine',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("assets/images/monkasel_6.jpg", height: 400, width: 660,),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ), // Container for title
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(Icons.calendar_today),
                        Text('Monday - Friday'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.schedule),
                        Text('08.00 - 15.00'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.attach_money_rounded),
                        Text('IDR 20.000,-'),
                      ],
                    ),
                  ],
                ),
              ), // New Container
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Surabaya Submarine Monument or as known as '
                      'Monumen Kapal Selam (Monkasel) is the largest submarine '
                      'monument in Asia, which was built in riverside of Kalimas,'
                      'Surabaya.This monument was built by idea of Navy Veterans. '
                      'KRI Pasopati 410, is one of SS Whiskey Class SS,  '
                      'made in Vladi Wostok Russian in 1952.This submarines was '
                      'participated in Navy since 29th of January, 1962, '
                      'and the main job were to destroy anti-shipping from enemies '
                      'supervision and raids silently. '
                      'Surabaya Submarine Monument has supporting facilities such as'
                      'video rama, live music, swimming pool for kids and water tourism '
                      'in Kalimas River, a souvenir stand and parking space. '
                      'In the complex of the museum also stand a spacious stage for special occassions..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ), // Container for Description
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/submarine8.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/submarine2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/submarine1.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/submarine5.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
