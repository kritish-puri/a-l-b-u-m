import 'package:album/constants/colors.dart';
import 'package:album/constants/strings.dart';
import 'package:album/controllers/home_controller.dart';
import 'package:album/screens/edit_album_page.dart';
import 'package:album/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumDetailsPage extends StatelessWidget {
  final HomeController homeController = Get.find();

  final int index;
  AlbumDetailsPage({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppStrings.ID +
              ': ' +
              homeController.albums[index].id.toString())),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Obx(() => Container(
                    child: Image.network(
                      homeController.albums[index].thumbnailUrl,
                      width: 200,
                      height: 200,
                    ),
                  )),
              SizedBox(height: 50),
              Obx(() => Text(homeController.albums[index].title,
                  style: AppText.largeText()))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeController.to(EditAlbumPage(index: index)),
        child: Icon(
          Icons.edit,
          color: AppColors.white,
        ),
      ),
    );
  }
}
