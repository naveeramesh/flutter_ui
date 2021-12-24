import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weather extends StatefulWidget {
  const Weather({Key key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  Color color = Color.fromRGBO(66, 72, 101, 1);
  final List images = [
    "assets/images/sun.png",
    "assets/images/cloudy.png",
    "assets/images/thunder.png"
  ];
  final List degree = ["21", "31", "20"];
  final List weather = ["sunny", "cloudy", "rainy"];
  final List city = ["Chennai", "Delhi", "Banglore"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 11, 50, 1),
        elevation: 0,
        centerTitle: true,
        title: Text("Pick the location",
            style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20)),
      ),
      backgroundColor: Color.fromRGBO(8, 11, 50, 1),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                    "Find the area or city that you want to know the detailed weather info",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 16)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(66, 72, 101, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search",
                              style: GoogleFonts.aBeeZee(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                    child: Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(66, 72, 101, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              color = Colors.blue;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text(
                                          "${degree[index]}" + "°",
                                          style: GoogleFonts.aBeeZee(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "${weather[index]}",
                                          style: GoogleFonts.aBeeZee(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 120,
                                      child: Image.asset(images[index]),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${city[index]}",
                                        style: GoogleFonts.aBeeZee(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
