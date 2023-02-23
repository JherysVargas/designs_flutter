import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.radius = 22,
    this.richText = '',
    this.backgroundColorLeading,
    this.onTap,
    this.leading,
    this.textStyle,
    this.richTextStyle,
  });

  final String text;
  final String? richText;
  final double? radius;
  final Widget? leading;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final TextStyle? richTextStyle;
  final Color? backgroundColorLeading;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(4, 4, 16, 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          InkWell(
            onTap: onTap,
            child: CircleAvatar(
              radius: radius,
              backgroundColor: backgroundColorLeading ?? Colors.amber[200],
              child: leading,
            ),
          ),
          Text.rich(
            TextSpan(
              text: text,
              children: [
                TextSpan(
                  text: richText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ).merge(richTextStyle),
                )
              ],
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ).merge(textStyle),
          )
        ],
      ),
    );
  }
}
