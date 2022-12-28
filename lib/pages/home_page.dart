import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "귀화시험문제",
                style: GoogleFonts.montserrat(fontSize: 26, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "이름을 써주세요",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("입 장"))
            ],
          ),
        ),
      ),
    );
  }
}
