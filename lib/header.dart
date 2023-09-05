import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent(
      {super.key,
      required this.width,
      required this.height,
      required this.device,
      required this.hero});

  final double width;
  final double height;
  final String device;
  final bool hero;

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  late double height;
  late double width;
  late String device;
  late bool hero;

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    device = widget.device;
    hero = widget.hero;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return device == "mobile"
        ? Center(
            child: Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 15,
              child: Container(
                width: hero ? width : 200,
                height: hero ? height : 200,
                decoration: BoxDecoration(
                  shape: hero ? BoxShape.rectangle : BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: hero ? BoxFit.fitHeight : BoxFit.fitWidth),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Peter Bishop",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.shadowsIntoLight(
                              fontSize: 75, backgroundColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Full Stack Web Developer".toUpperCase(),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 50),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "building reactive applications for mobile and web",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.gloriaHallelujah(
                              fontSize: 20, backgroundColor: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: const CircleBorder(side: BorderSide.none),
              elevation: 50,
              child: Container(
                width: hero ? width : 200,
                height: hero ? height : 200,
                decoration: BoxDecoration(
                  shape: hero ? BoxShape.rectangle : BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/me.png"),
                      fit: hero ? BoxFit.fitHeight : BoxFit.fitWidth),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Peter Bishop",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.shadowsIntoLight(
                              fontSize: 100, backgroundColor: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Full Stack Web Developer".toUpperCase(),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "building reactive applications for mobile and web",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.gloriaHallelujah(
                              fontSize: 20, backgroundColor: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
