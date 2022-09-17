import 'package:flutter/material.dart';

import '../style/colors.dart';

class DefultBorderButton extends StatelessWidget {
  late String title;

  late final VoidCallback? onPressed;
  double? size;

  DefultBorderButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.size = double.infinity,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: size,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: kBlue,
          side: BorderSide(width: 1.5, color: kWhite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}
