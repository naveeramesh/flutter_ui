import 'package:flutter/material.dart';
import 'package:flutter_ui/Auth/data.dart';
import 'package:flutter_ui/Auth/page_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _currentpg = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (b) => Signup()));
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.josefinSans(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ))
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: data_list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Page_View(
                    items: data_list[index],
                  );
                },
                onPageChanged: (value) => setState(() {
                  _currentpg = value;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 200, maxHeight: 100),
                    child: Text(
                      "Smart Management",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.josefinSans(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: GoogleFonts.josefinSans(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Signin with Google",
                    style: GoogleFonts.josefinSans(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
