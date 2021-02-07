import 'package:album/models/album.dart';
import 'package:album/screens/home_page.dart';
import 'package:album/services/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var albums = List<Album>.empty(growable: true).obs;
  var loading = true.obs;

  TextEditingController urlController = TextEditingController();
  TextEditingController titleController = TextEditingController();

  @override
  void onInit() {
    fetchAlbums();
    super.onInit();
  }

  void fetchAlbums() async {
    try {
      var response = await API.fetchAlbums();
      if (response != null) {
        albums.assignAll(response);
      }
    } finally {
      loading.value = false;
    }
  }

  void addAlbum() {
    if (urlController.text.length > 0 && titleController.text.length > 0) {
      Album a = Album(
        albumId: 1,
        id: albums.length + 1,
        url: urlController.text,
        thumbnailUrl: urlController.text,
        title: titleController.text,
      );

      urlController.clear();
      titleController.clear();

      albums.insert(0, a);
      // Get.back();
      // Get.back();
      Get.offAll(HomePage());
    }
  }

  void editAlbum(int i) {
    Album a = albums[i];
    a.title = titleController.text;
    a.url = urlController.text;
    a.thumbnailUrl = urlController.text;

    // Get.back();
    // Get.back();
    Get.offAll(HomePage());
  }

  void to(Widget page) {
    Get.to(page);
  }
}
