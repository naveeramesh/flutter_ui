import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'videodetail.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key key, this.video}) : super(key: key);
  final Video video;
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future _initializevideo;
  @override
  void initState() {
    _controller =
        VideoPlayerController.asset('assets/${widget.video.videourl}');
    _initializevideo = _controller.initialize();
    _controller.play();
    _controller.setVolume(20.0);
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: FutureBuilder(
            future: _initializevideo,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return VideoPlayer(_controller);
              } else {
                return Container(
                  color: Colors.black,
                );
              }
            }));
  }
}
