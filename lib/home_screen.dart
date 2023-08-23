import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:world_clock/choose_location_screen.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("World Clock"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Text(data.toString(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => location());
        },
        child: Icon(Icons.location_on_outlined),
      ),
      backgroundColor: Colors.grey[700],
    );
  }
}
