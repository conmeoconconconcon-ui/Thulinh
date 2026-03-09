import 'package:flutter/material.dart';
import 'models/pet_model.dart';
import 'logic/reading_timer.dart';

void main() => runApp(MaterialApp(home: ReadingApp()));

class ReadingApp extends StatefulWidget {
  @override
  _ReadingAppState createState() => _ReadingAppState();
}

class _ReadingAppState extends State<ReadingApp> {
  Pet myPet = Pet(name: "Rồng Lửa");
  ReadingTimer timer = ReadingTimer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reading Monster")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Linh thú: ${myPet.name}", style: TextStyle(fontSize: 24)),
            Text("Cấp độ: ${myPet.level}", style: TextStyle(fontSize: 20)),
            Text("Trạng thái: ${myPet.currentStage}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myPet.addExperience(10); // Giả lập đọc 10 phút
                });
              }, 
              child: Text("Đọc sách (Tặng 10 phút EXP)")
            ),
          ],
        ),
      ),
    );
  }
}
