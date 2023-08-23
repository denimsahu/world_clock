import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:world_clock/home_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  String location = Get.arguments;

  void gettime() async {
    dynamic response = await http
        .get(Uri.parse("https://worldtimeapi.org/api/timezone/$location"));
    response = (jsonDecode(response.body));

    DateTime datetime = DateTime.parse(response['datetime'].toString());
    datetime = datetime
        .add(Duration(
            hours:
                int.parse(response['utc_offset'].toString().substring(2, 3))))
        .add(Duration(
            minutes:
                int.parse(response['utc_offset'].toString().substring(4, 6))));

    String data = datetime.toString();


    //Picked this line of code from https://www.cloudhadoop.com/dart-convert-timestamp-24-hour-12-hour-format#google_vignette
    data = DateFormat('h:mm a').format(DateTime.parse(data));

    Get.offAll(() => home(), arguments: data);

  }

  @override
  void initState() {
    super.initState();
    gettime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
