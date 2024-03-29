import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertube/models/video.dart';


const API_KEY = 'AIzaSyA57OTbTLO1X8ZyGH5xl0Af0XHw96yjKoA';

class Api {
  search(String search) async {
    http.Response response = await http.get(
      "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"
    );

    decode(response);
  }

  decode(http.Response response){
    if(response.statusCode == 200){
      var decoded = json.decode(response.body);

      List<Video> videos = decoded["items"].map<Video>(
        (video){
          return Video.fromJson(video);
        }).toList();

      return videos;
    } else {
      throw Exception("Failed to load videos");
    }
  }
}
