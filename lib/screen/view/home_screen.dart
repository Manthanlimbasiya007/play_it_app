import 'package:flutter/material.dart';
import 'package:play_it/screen/provider/video_provider.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  VideoProvider? videoProviderTrue;
  VideoProvider? videoProviderFalse;

  @override
  Widget build(BuildContext context) {
    videoProviderTrue = Provider.of<VideoProvider>(context, listen: true);
    videoProviderFalse = Provider.of<VideoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Video Player"),
          centerTitle: true,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: videoProviderFalse!.videoList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                videoProviderTrue!
                    .initVideo(videoProviderTrue!.videoList[index]);
                Navigator.pushNamed(context, 'video');
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset("${videoProviderTrue!.imageList[index]}",
                            fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
