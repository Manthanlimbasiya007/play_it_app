import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  List videoList = [
    "assets/video/Deva Deva.mp4",
    "assets/video/kgf chp 2.mp4",
    "assets/video/maan meri jaan.mp4",
    "assets/video/Kesariya1.mp4",
    "assets/video/levels.mp4",
  ];

  List imageList = [
    "assets/video/devadeva.jpg",
    "assets/video/rocky.jpg",
    "assets/video/king.jpg",
    "assets/video/kesariya.jpg",
    "assets/video/levels.jpg",
  ];

  void initVideo(String videoList)
  {
    videoPlayerController = VideoPlayerController.asset("${videoList}");
    videoPlayerController!.initialize();

    chewieController = ChewieController(videoPlayerController: videoPlayerController!,
      autoPlay: true,
      looping: false,
      allowMuting: true,
      allowFullScreen: true,
      allowPlaybackSpeedChanging: true,
    );
  }
}