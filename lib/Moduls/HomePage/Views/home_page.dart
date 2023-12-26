import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/Moduls/HomePage/Model/Api_Model.dart';

import '../Helper/Api_helper.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  late Future<ApiModel?> getApi;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi = APIHelper.apiHelper.fetchApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Calling"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getApi,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            ApiModel? data = snapshot.data;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: data?.data.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        Get.toNamed("/second", arguments: data?.data[i]);
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(data?.data[i]['type']),
                          subtitle: Text(data?.data[i]['source']),
                          trailing: Text(data?.data[i]['duration']),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
