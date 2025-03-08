import 'package:homepage/features/home/models/songs.dart';

class SongsResponse {
  int? id;
  String? name;
  int? week;
  int? year;
  List<SongsModel>? songs;

  SongsResponse({this.id, this.name, this.week, this.year, this.songs});

  SongsResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    week = json['week'];
    year = json['year'];
    songs = json['songs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['week'] = week;
    data['year'] = year;
    data['songs'] = songs;

    return data;
  }
}
