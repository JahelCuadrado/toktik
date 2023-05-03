import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButton extends StatelessWidget {

  final VideoPost video;

  const VideoButton({
    super.key, 
    required this.video
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, icon: Icons.favorite, iconColor: Colors.red),

        const SizedBox(height: 20,),

        _CustomIconButton(value: video.likes, icon: Icons.remove_red_eye_outlined),

        const SizedBox(height: 20,),

        SpinPerfect(
          infinite: true,
          duration: const Duration(milliseconds: 5000),
          child: const _CustomIconButton(value: 0, icon: Icons.play_circle_outlined)
          ),
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData icon;
  final Color color;

  const _CustomIconButton({ 
    required this.value, 
    required this.icon, 
    iconColor
    }) 
    : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {
          
        }, icon: Icon(icon, color: color, size: 30,),),

        if(value > 0)
        Text(HumanFormats.humanReadableNumber(value.toDouble())),
      ],
    );
  }
}