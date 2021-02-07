import 'package:album/constants/strings.dart';
import 'package:album/models/album.dart';
import 'package:http/http.dart' as http;

class API {
  static Future<List<Album>> fetchAlbums() async {
    var response = await http.get(AppStrings.API_ALBUMS_PHOTOS);
    if (response.statusCode == 200) {
      return albumFromJson(response.body);
    } else {
      return null;
    }
  }
}
