import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assistant extends StatefulWidget {
  const Assistant({Key key}) : super(key: key);

  @override
  _AssistantState createState() => _AssistantState();
}

class _AssistantState extends State<Assistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AvatarGlow(
        glowColor: Colors.red,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.touch_app,
            color: Colors.black,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25.0)),
                ),
                builder: (context) => Container(
                      height: 250,
                      child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(20.0),
                                  topRight: const Radius.circular(20.0))),
                          child: new Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Image.network(
                                  'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/GoogleAssistant_logo.max-1300x1300.jpg',
                                  height: 100,
                                ),
                                Text('Try saying something',
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("'Follow Flutter Ui repository'",
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.green)),
                                Spacer(),
                                LinearProgressIndicator(
                                  backgroundColor: Colors.red,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.amber,
                                  ),
                                  value: 0.8,
                                ),
                              ],
                            ),
                          )),
                    ));
          },
        ),
      ),
    );
  }
}
