import 'package:devfest_web/components/general.dart';
import 'package:devfest_web/service/navigation_service.dart';
import 'package:devfest_web/slides/slide_eigth/slide_eight.dart';
import 'package:devfest_web/slides/slide_eleven/slide_eleven.dart';
import 'package:devfest_web/slides/slide_five/slide_five.dart';
import 'package:devfest_web/slides/slide_four/slide_four.dart';
import 'package:devfest_web/slides/slide_nine/slide_nine.dart';
import 'package:devfest_web/slides/slide_one/slide_one.dart';
import 'package:devfest_web/slides/slide_seven/slide_seven.dart';
import 'package:devfest_web/slides/slide_six/slide_six.dart';
import 'package:devfest_web/slides/slide_ten/slide_ten.dart';
import 'package:devfest_web/slides/slide_three/slide_three.dart';
import 'package:devfest_web/slides/slide_two/slide_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/Model.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: slides.length,
              itemBuilder: (_, int index) {
                final Slides _slide = slides[index];
                return Align(alignment: Alignment.center, child: _slide.slides);
              },
            ),
          ),
          PreviousPage(
            callback: () {
              if (_pageController.page > 0) {
                return _pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                return navService.pushNamed('/');
              }
            },
          ),
          NextPage(
            callback: () => _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut),
          ),
        ],
      ),
    );
  }
}

TextStyle presentationStyle() {
  return GoogleFonts.roboto(fontSize: 60);
}

class Slides {
  Slides({this.slides});

  final Widget slides;
}

final List<Slides> slides = <Slides>[
  Slides(slides: SlideOne()),
  Slides(slides: SlideTwo()),
  Slides(slides: SlideThree()),
  Slides(slides: SlideFour()),
  Slides(slides: SlideFive()),
  Slides(slides: SlideSix()),
  Slides(slides: SlideSeven()),
  Slides(slides: SlideEight()),
  Slides(slides: SlideNine()),
  Slides(slides: SlideTen()),
  Slides(slides: SlideEleven()),
];
