import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class PowerButtonWidget extends StatelessWidget {
  const PowerButtonWidget({
    required this.isPowerOn,
    super.key,
    this.onPressed,
  });

  final bool isPowerOn;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    late Color foregroundColor;

    if (isPowerOn) {
      foregroundColor = Colors.green;
    } else {
      foregroundColor = Colors.red;
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(160),
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          child: Ink(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(160),
              border: Border.all(
                color: foregroundColor,
                width: 4,
              ),
            ),
            child: Icon(
              FeatherIcons.power,
              size: 60,
              color: foregroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
