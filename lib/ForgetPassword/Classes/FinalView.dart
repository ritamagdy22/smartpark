import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomButton.dart';
import 'Otp.dart';
import 'ResendCode.dart';
import 'TopTexts.dart';

class FinalView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              CupertinoIcons.back,
              color: Colors.black87,
              size: 30,
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                const TopTexts(),
                Otp(),
                const ResendCode(),
                Expanded(child:BottomButton(size: size)
                ),
              ],
            ),
          ),
        ));
  }
}
