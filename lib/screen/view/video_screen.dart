import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:play_it/screen/provider/video_provider.dart';
import 'package:provider/provider.dart';

class videoscreen extends StatefulWidget {
  const videoscreen({Key? key}) : super(key: key);

  @override
  State<videoscreen> createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {
  VideoProvider? videoProviderTrue;
  VideoProvider? videoProviderFalse;
  @override
  Widget build(BuildContext context) {
    videoProviderTrue = Provider.of<VideoProvider>(context,listen: true);
    videoProviderFalse = Provider.of<VideoProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Play video"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                   height: 700,
                   width: double.infinity,
                  child: Chewie(
                    controller: videoProviderTrue!.chewieController!,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
