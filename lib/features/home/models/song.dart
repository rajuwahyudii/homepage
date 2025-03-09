class Song {
  int? id;
  int? artistId;
  String? artistName;
  String? artistProfilePicture;
  String? title;
  String? spotifyUrl;
  String? appleMusicUrl;

  Song({
    this.id,
    this.artistId,
    this.artistName,
    this.artistProfilePicture,
    this.title,
    this.spotifyUrl,
    this.appleMusicUrl,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'],
      artistId: json['artist_id'],
      artistName: json['artist_name'],
      artistProfilePicture: json['artist_profile_picture'],
      title: json['title'],
      spotifyUrl: json['spotify_url'],
      appleMusicUrl: json['apple_music_url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['artist_id'] = artistId;
    data['artist_name'] = artistName;
    data['artist_profile_picture'] = artistProfilePicture;
    data['title'] = title;
    data['spotify_url'] = spotifyUrl;
    data['apple_music_url'] = appleMusicUrl;
    return data;
  }
}
