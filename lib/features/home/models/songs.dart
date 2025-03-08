import 'package:homepage/features/home/models/song.dart';

class SongsModel {
  int? position;
  SongModel? song;

  SongsModel({this.position, this.song});

  SongsModel.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    song = json['song'] != null ? SongModel.fromJson(json['song']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['position'] = position;
    if (song != null) {
      data['song'] = song!.toJson();
    }
    return data;
  }
}
