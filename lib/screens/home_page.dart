import 'package:album/constants/colors.dart';
import 'package:album/constants/strings.dart';
import 'package:album/screens/add_album_page.dart';
import 'package:album/widgets/album_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:album/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.ALBUM_LIST)),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Obx(() {
              if (homeController.loading.value) {
                return Center(
                    child: Container(child: CircularProgressIndicator()));
              } else {
                return ListView.builder(
                    itemCount: homeController.albums.length,
                    itemBuilder: (context, index) => AlbumListItem(
                        index: index, controller: homeController));
              }
            }),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeController.to(AddAlbumPage()),
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }
}
