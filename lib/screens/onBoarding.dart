import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'register.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../myColors.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Clr.main,
        animationDuration: 500,
        dotsDecorator: DotsDecorator(
          size: Size(15, 10),
          activeSize: Size(15, 15),
          activeColor: Colors.yellow,
        ),
        showSkipButton: true,
        skip: Text(
          'Пропустить',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        next: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Clr.text,
        ),
        done: Text(
          'Регистрация',
          style: TextStyle(
            color: Clr.text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        pages: [
          PageViewModel(
            title: 'Мнгновенный обмен сообщениями',
            body: 'Мы используем современные технологии',
            image: SvgPicture.asset('images/email.svg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Групповые комнаты',
            body: 'Собирайте группы, проводите мероприятия',
            image: SvgPicture.asset('images/group.svg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Стикеры ;)',
            body: 'И многое другое...',
            image: SvgPicture.asset('images/sticker.svg'),
            decoration: getPageDecoration(),
          ),
        ],
        onDone: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Register()),
        ),
      ),
    );
  }

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: Clr.text),
        bodyTextStyle: TextStyle(fontSize: 20, color: Clr.semiText),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
      );
}
