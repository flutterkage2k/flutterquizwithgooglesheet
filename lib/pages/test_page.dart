import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1/10",
                    style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "MaiMai",
                    style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: CountDownProgressIndicator(
                controller: _controller,
                valueColor: Colors.red,
                backgroundColor: Colors.white,
                initialPosition: 0,
                duration: 60,
                text: '남은시간',
                onComplete: () => null,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "뭐야뭐야뭐야...",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(fontSize: 22, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OptionWidget(),
            OptionWidget(),
            OptionWidget(),
            OptionWidget(),
          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String optionChar;
  final String optionDetail;
  final Color color;

  const OptionWidget({
    Key? key,
    required this.optionChar,
    required this.optionDetail,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                optionChar,
                style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  optionDetail,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}
