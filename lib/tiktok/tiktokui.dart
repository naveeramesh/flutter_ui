import 'package:flutter/material.dart';
import 'package:flutter_ui/tiktok/data.dart';
import 'package:flutter_ui/tiktok/videoplayer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'descriptionbar.dart';
import 'sidebar.dart';

class TikTokUi extends StatefulWidget {
  const TikTokUi({
    Key key,
  }) : super(key: key);

  @override
  _TikTokUiState createState() => _TikTokUiState();
}

class _TikTokUiState extends State<TikTokUi> {
  bool isfollow = true;
  bool isforyour = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isfollow = true;
                    isforyour = false;
                  });
                },
                child: Text(
                  'Following',
                  style: GoogleFonts.ubuntu(
                      fontSize: isfollow ? 20 : 16,
                      color: isfollow == true ? Colors.white : Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '|',
                  style: GoogleFonts.ubuntu(color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isforyour = true;
                    isfollow = false;
                  });
                },
                child: Text(
                  'For you',
                  style: GoogleFonts.ubuntu(
                      fontSize: isforyour ? 20 : 16,
                      color: isforyour == true ? Colors.white : Colors.grey),
                ),
              ),
            ],
          )),
      body: PageView.builder(
          onPageChanged: (int page) => print("${page}"),
          scrollDirection: Axis.vertical,
          itemCount: videos_detail.length,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayerScreen(
                  video: videos_detail[index],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          child: DescriptionBar(
                            video: videos_detail[index],
                          ),
                        )),
                    Expanded(
                        child: Container(
                      height: MediaQuery.of(context).size.height / 1.75,
                      child: SideBar(
                        video: videos_detail[index],
                      ),
                    ))
                  ],
                )
              ],
            );
          }),
    );
  }
}
