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
    String image = data[1]
        ? "https://images.unsplash.com/photo-1532767153582-b1a0e5145009?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
        : "https://images.unsplash.com/photo-1514241516423-6c0a5e031aa2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3VucmlzZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80";
    return Scaffold(

      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  image),
              fit: BoxFit.cover),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data[0].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton.icon(onPressed:  () {
              Get.to(() => location());
                }, 
              icon: Icon(Icons.location_on_outlined,color: Colors.white,), label: Text("Choose Location",style: TextStyle(color: Colors.white),),
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.blue),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
            ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(() => location());
      //   },
      //   child: Icon(Icons.location_on_outlined),
      // ),
      
    );
  }
}
