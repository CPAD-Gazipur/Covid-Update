import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('PostView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  '${data['flag']}',
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Update: ${data['updated']}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'deaths: ${data['deaths']}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        onLoading: LinearProgressIndicator(),
        onError: (value) => Text('error'),
      ),
    );
  }
}
