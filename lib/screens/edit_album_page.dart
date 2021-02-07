import 'package:album/constants/colors.dart';
import 'package:album/constants/strings.dart';
import 'package:album/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAlbumPage extends StatelessWidget {
  final int index;
  EditAlbumPage({@required this.index});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    homeController.urlController.text = homeController.albums[index].url;
    homeController.titleController.text = homeController.albums[index].title;

    return Scaffold(
      appBar: AppBar(
          title: Text(AppStrings.ID +
              ': ' +
              homeController.albums[index].id.toString())),
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
        onPressed: () => homeController.editAlbum(index),
        child: Icon(
          Icons.done,
          color: AppColors.white,
        ),
      ),
    );
  }
}
