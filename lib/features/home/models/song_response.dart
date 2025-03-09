import 'package:homepage/features/home/models/chart_songs.dart';

class SongsResponse {
  int? id;
  String? name;
  int? week;
  int? year;
  List<ChartSong>? songs;

  SongsResponse({this.id, this.name, this.week, this.year, this.songs});

  factory SongsResponse.fromJson(Map<String, dynamic> json) {
    return SongsResponse(
      id: json['id'],
      name: json['name'],
      week: json['week'],
      year: json['year'],
      songs:
          (json['songs'] as List?)
              ?.map((e) => ChartSong.fromJson(e as Map<String, dynamic>))
              .toList(), // Corrected: Parse ChartSong
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['week'] = week;
    data['year'] = year;
    data['songs'] =
        songs?.map((e) => e.toJson()).toList(); // Corrected: ChartSong toJson
    return data;
  }
}
