import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;
  bool _hasPasswordOneSplCh = false;
  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    final spchar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordOneNumber = true;

      _hasPasswordOneSplCh = false;
      if (spchar.hasMatch(password)) _hasPasswordOneSplCh = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Flutter UI',
              style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Animation for password validation",
              style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: GoogleFonts.ubuntu(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (password) => onPasswordChanged(password),
              obscureText: !_isVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: _isVisible
                      ? Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                hintText: "Password",
                helperStyle: GoogleFonts.ubuntu(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _isPasswordEightCharacters
                          ? Colors.red
                          : Colors.transparent,
                      border: _isPasswordEightCharacters
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.verified,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Password have 8 characters",
                    style: GoogleFonts.ubuntu(
                        color: _isPasswordEightCharacters
                            ? Colors.black
                            : Colors.transparent))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _hasPasswordOneNumber
                          ? Colors.red
                          : Colors.transparent,
                      border: _hasPasswordOneNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.verified,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Password atleast have 1 number",
                  style: GoogleFonts.ubuntu(
                      color: _hasPasswordOneNumber
                          ? Colors.black
                          : Colors.transparent),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _hasPasswordOneSplCh
                          ? Colors.red
                          : Colors.transparent,
                      border: _hasPasswordOneSplCh
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.verified,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Password atleast have 1 special character",
                  style: GoogleFonts.ubuntu(
                      color: _hasPasswordOneSplCh
                          ? Colors.black
                          : Colors.transparent),
                )
              ],
            ),
            Spacer(),
            MaterialButton(
              height: 60,
              onPressed: () {},
              color: Colors.green,
              child: Center(
                child: Text(
                  'Signin',
                  style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
