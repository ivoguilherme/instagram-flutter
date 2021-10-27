import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';

class Avatar extends StatelessWidget {
  final String image;

  const Avatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.gradient),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Center(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(70),
          ),
          child: image != ''
              ? ClipRRect(
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(70),
                )
              : Container(),
        ),
      ),
    );
  }
}
