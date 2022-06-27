import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.size,
    required this.logoColor,
  });

  final double size;

  final Color logoColor;

  EdgeInsets get padding => EdgeInsets.all(size * 10 / 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: padding,
                    child: Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: logoColor,
                        borderRadius: BorderRadius.circular(size / 2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: padding,
                    child: Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: logoColor,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(size)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: padding,
                child: Container(
                  width: size,
                  height: size * 2,
                  decoration: BoxDecoration(
                    color: logoColor,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(size),
                        bottomStart: Radius.circular(size)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
