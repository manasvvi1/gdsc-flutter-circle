import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Application',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SongPage(),
    );
  }
}

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'PLAYING',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, fontFamily: 'sans serif'),
            ),
            Text(
              'NOW',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontFamily: 'sans serif'),
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://media.istockphoto.com/photos/wild-grass-in-the-mountains-at-sunset-picture-id1322277517?k=20&m=1322277517&s=612x612&w=0&h=ZdxT3aGDGLsOAn3mILBS6FD7ARonKRHe_EKKa-V-Hws=',
            width: 300,
            height: 300,
          ),
          Column(
            children: [
              Text(
                'ABC XYZ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text('aiih, hihai, hiahdia, uiiha')
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  size: 50,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.pause,
                  size: 50,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () async {
                  setState(() {
                    _isPlaying = true;
                  });
                  // await audioCache.play("assets/happy-birthday-to-you-piano-version-13976.mp3");
                },
                icon: Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                  size: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
