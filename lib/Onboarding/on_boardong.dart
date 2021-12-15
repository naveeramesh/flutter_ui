import 'package:flutter/material.dart';
import 'package:flutter_ui/Onboarding/data.dart';
import 'package:flutter_ui/Onboarding/view.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  int _currentpg = 0;
  AnimatedContainer _buildDots({int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: _currentpg == index ? Colors.blue[800] : Colors.grey,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentpg == index ? 20 : 10,
    );
  }

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
                      onTap: () {},
                      child: Text(
                        "Skip",
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
            _currentpg != 2
                ? Container(
                    height: 60,
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(data_list.length,
                              (int index) => _buildDots(index: index)),
                        )),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[800],
                      ),
                      child: Center(
                          child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
