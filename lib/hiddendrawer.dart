import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  @override
  Widget build(BuildContext context) {
    final _advancedDrawerController = AdvancedDrawerController();
    return AdvancedDrawer(
        drawer: Drawer(
          child: Container(
              color: Color.fromRGBO(84, 65, 121, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Home",
                                style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Search",
                                style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.payment, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Payment",
                                style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.shopping_bag, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Cart",
                                style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings, color: Colors.grey),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Settings",
                                    style: GoogleFonts.nunito(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Logout",
                                style: GoogleFonts.nunito(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ])),
        ),
        backdropColor: Color.fromRGBO(84, 65, 121, 1),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Hidden Bar',
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(),
        ));
  }
}
