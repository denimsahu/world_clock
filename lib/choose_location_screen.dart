import 'package:world_clock/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  List Countries = [
    (
      name: 'India',
      url: 'Asia/Kolkata',
      flag:
          'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png?20230723002237'
    ),
    (
      name: 'Usa',
      url: 'America/New_York',
      flag:
          'https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg'
    ),
    (
      name: 'UK',
      url: 'Europe/London',
      flag:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1920px-Flag_of_the_United_Kingdom_%281-2%29.svg.png'
    ),
    (
      name: 'Australia',
      url: 'Australia/Sydney',
      flag: 'https://cdn.britannica.com/78/6078-004-77AF7322/Flag-Australia.jpg'
    ),
    (
      name: 'new Zeland',
      url: 'Pacific/Auckland',
      flag: 'https://cdn.britannica.com/78/6078-004-77AF7322/Flag-Australia.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: ListView.builder(itemCount: Countries.length ,itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              title: Text(
                Countries[index].name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              onTap: (() {
                Get.to(() => loading(), arguments: Countries[index].url);
              }),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(Countries[index].flag),
              ),
            )
          ],
        );
      }),
      backgroundColor: Colors.grey[700],
    );
  }
}
