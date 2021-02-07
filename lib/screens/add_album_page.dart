import 'package:album/constants/colors.dart';
import 'package:album/constants/strings.dart';
import 'package:album/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAlbumPage extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    homeController.urlController.text = '';
    homeController.titleController.text = '';
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.NEW_ALBUM)),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: homeController.urlController,
              decoration: InputDecoration(hintText: AppStrings.URL_HINT),
            ),
            SizedBox(height: 50),
            TextField(
              controller: homeController.titleController,
              decoration: InputDecoration(hintText: AppStrings.TITLE_HINT),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeController.addAlbum,
        child: Icon(
          Icons.done,
          color: AppColors.white,
        ),
      ),
    );
  }
}
