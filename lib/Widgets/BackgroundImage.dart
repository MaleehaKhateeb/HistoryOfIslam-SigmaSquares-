import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/login.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({
    Key? key,
    required this.image,
  }) : super(key: key);
final String image;

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect) => 
      LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      colors: <Color>[
        Colors.white,
        Colors.transparent],
      ).createShader(Rect),
      blendMode:BlendMode.darken,
      
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken))
        ),
      ),
     );
  }
}




