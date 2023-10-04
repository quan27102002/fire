import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioUrl = "assets/music/coi.mp3";
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref().child('QuanLy/statusgas');
  String? gas;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() {
    _databaseReference.onValue.listen((event) {
      final dynamic data = event.snapshot.value;

      if (data != null) {
        setState(() {
          gas = data.toString();
          if (gas == '1') {
            _showDialog();
            // Hiển thị dialog khi gas = 1
          }
        });
      }
    });
  }

  Future<void> playAudio() async {
    int result = await audioPlayer.play(audioUrl);
    if (result == 1) {
      // Phát nhạc thành công
      print("Đã phát nhạc");
    } else {
      print("Lỗi khi phát nhạc");
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('Giá trị gas bằng 1'),
          actions: [
            TextButton(
              child: Text('Đóng'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String gass = gas.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Data Example'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(gass),
        ]),
      ),
    );
  }
}
