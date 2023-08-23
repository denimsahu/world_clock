import 'package:world_clock/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ), 
              title: Text("India",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20),),
              onTap: (() {
                Get.to(() => loading(),arguments:'Asia/Kolkata');
              }),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png?20230723002237'),
              ),
              )
        ],
      ),
      backgroundColor: Colors.grey[700],
    );
  }
}
