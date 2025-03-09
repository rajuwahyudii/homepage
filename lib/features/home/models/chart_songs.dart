import 'package:homepage/features/home/models/song.dart';

class ChartSong {
  int? position;
  Song? song;

  ChartSong({this.position, this.song});

  factory ChartSong.fromJson(Map<String, dynamic> json) {
    return ChartSong(
      position: json['position'],
      song: Song.fromJson(json['song']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['position'] = position;
    data['song'] = song?.toJson();
    return data;
  }
}
