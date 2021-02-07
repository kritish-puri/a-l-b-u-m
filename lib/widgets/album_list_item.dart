import 'package:album/controllers/home_controller.dart';
import 'package:album/screens/album_details_page.dart';
import 'package:album/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AlbumListItem extends StatelessWidget {
  final int index;
  final HomeController controller;

  AlbumListItem({@required this.index, @required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(8),
      ),
      onPressed: () => controller.to(AlbumDetailsPage(index: index)),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
                controller.albums[index].thumbnailUrl,
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                controller.albums[index].title,
                softWrap: true,
                style: AppText.buttonText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
