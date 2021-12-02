import 'package:flutter_ui/tiktok/user.dart';

class Video {
  final User postedBy;
  final String videourl;
  final String likes;
  final String comments;
  final String caption;
  final String audioname;
  final String songimage;

  Video(this.postedBy, this.videourl, this.likes, this.comments, this.caption,
      this.audioname,this.songimage);
}
