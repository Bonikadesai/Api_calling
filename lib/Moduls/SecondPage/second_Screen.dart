import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second_Scrren extends StatefulWidget {
  const Second_Scrren({super.key});

  @override
  State<Second_Scrren> createState() => _Second_ScrrenState();
}

class _Second_ScrrenState extends State<Second_Scrren> {
  @override
  Widget build(BuildContext context) {
    Map data = Get.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Type: ${data['type']}",
                style: TextStyle(fontSize: 20),
              ),
              Text("Synopsis: ${data['synopsis']}"),
              SizedBox(
                height: 20,
              ),
              Text("Background: ${data['background']}"),
            ],
          ),
        ),
      ),
    );
  }
}
