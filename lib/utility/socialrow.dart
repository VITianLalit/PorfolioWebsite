import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lalitsahu/utility/animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          children: [
            AnimatedIconButton(iconData: FontAwesomeIcons.facebook, onTap: (){}),
            SizedBox(width: 8.0,),
            AnimatedIconButton(iconData: FontAwesomeIcons.instagram, onTap: (){}),
            SizedBox(width: 8.0,),
            AnimatedIconButton(iconData: FontAwesomeIcons.twitter, onTap: (){}),
          ],
        )
      ],
    );
  }
}
