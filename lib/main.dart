import 'package:flutter/material.dart';
import 'models/pet_model.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text("Linh Thú Đọc Sách")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.egg_rounded, size: 100, color: Colors.orange), // Hình ảnh quả trứng linh thú
          Text("Chào mừng bạn!", style: TextStyle(fontSize: 22)),
          Text("Hãy mở sách để linh thú nở nhé!"),
        ],
      ),
    ),
  ),
));
