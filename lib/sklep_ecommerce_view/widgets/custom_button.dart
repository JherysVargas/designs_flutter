import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.radius = 22,
    this.richText = '',
    this.onTap,
    this.avatar,
    this.textStyle,
    this.richTextStyle,
    this.backgroundColorAvatar,
    this.labelPadding = const EdgeInsets.all(10),
  });

  final String text;
  final String? richText;
  final double? radius;
  final EdgeInsetsGeometry? labelPadding;
  final Widget? avatar;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final TextStyle? richTextStyle;
  final Color? backgroundColorAvatar;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      elevation: 0,
      pressElevation: 0,
      onPressed: () {
        onTap?.call();
      },
      labelPadding: labelPadding,
      avatar: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColorAvatar ?? Colors.amber[200],
        child: avatar,
      ),
      backgroundColor: Colors.white,
      label: Text.rich(
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
      ),
    );
  }
}
