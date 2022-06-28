import 'package:appclo/config/data/models/user.dart';

class Video {
  final String urlVideo;
  final String likes;
  final String comments;
  final String shares;
  final User postedBy;

  Video(this.urlVideo, this.likes, this.comments, this.shares, this.postedBy);
}
