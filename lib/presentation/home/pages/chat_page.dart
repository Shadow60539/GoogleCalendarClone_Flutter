import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/chat.svg',
              height: 150,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            'Chat Screen',
            style: TextStyle(color: Palette.greyWhite),
          )
        ],
      ),
    );
  }
}
