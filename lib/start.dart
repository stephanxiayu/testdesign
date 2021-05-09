
import 'package:aaaa/page.dart';
import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';

import 'package:video_player/video_player.dart';


class VideoTest extends StatefulWidget {
  @override
  _VideoTestState createState() => _VideoTestState();
}

class _VideoTestState extends State<VideoTest> {
  VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
  
    _controller = VideoPlayerController.asset("lib/assets/cool1.mp4")
      ..initialize().then((_) {
     
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        // TODO 6: Create a Stack Widget
        body: Stack(children: <Widget>[
      // TODO 7: Add a SizedBox to contain our video.
      SizedBox.expand(
        child: FittedBox(
          // If your background video doesn't look right, try changing the BoxFit property.
          // BoxFit.fill created the look I was going for.
          fit: BoxFit.fill,
          child: SizedBox(
            width: _controller.value.size?.width ?? 0,
            height: _controller.value.size?.height ?? 0,
            child: VideoPlayer(_controller),
          ),
        ),
      ),
      
     SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 150,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Text("Melde uns den Ort", style: TextStyle(color:Colors.black26, fontWeight: FontWeight.bold, fontSize: 30),),
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.transparent,
                  onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => UserLocalPage()),
  );
},
                  shadow: BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 150,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.transparent
                      ,
                      child: Center(
                        child: Text("Hilf uns, Spende!", style: TextStyle(color:Colors.black38, fontWeight: FontWeight.bold, fontSize: 30),),
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.transparent,
                  onTap: () => print('Hello, World!'),
                  shadow: BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 0),
              child: Container(
                width: double.infinity,
                height: 150,
                child: HoverCard(
                  builder: (context, hovering) {
                    return Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Text("Unsere Idee!", style: TextStyle(color:Colors.black12, fontWeight: FontWeight.bold, fontSize: 30),),
                      ),
                    );
                  },
                  depth: 10,
                  depthColor: Colors.transparent,
                  onTap: () => print('Hello, World!'),
                  shadow: BoxShadow(
                      color: Colors.transparent,
                      blurRadius: 30,
                      spreadRadius: -20,
                      offset: Offset(0, 40)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 20, bottom: 20),
                    child: Container(
                      width: 120,
                      height: 120,
                      child: HoverCard(
                        builder: (context, hovering) {
                          return Container(
                            color: Colors.transparent,
                            child: Center(
                              child: FlutterLogo(size: 100),
                            ),
                          );
                        },
                        depth: 10,
                        depthColor: Colors.transparent,
                        onTap: () => print('Hello, World!'),
                        shadow: BoxShadow(
                            color: Colors.transparent,
                            blurRadius: 30,
                            spreadRadius: -20,
                            offset: Offset(0, 40)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 20),
                    child: Container(
                      width: 120,
                      height: 120,
                      child: HoverCard(
                        builder: (context, hovering) {
                          return Container(
                            color: Colors.black,
                            child: Center(
                              child: FlutterLogo(size: 100),
                            ),
                          );
                        },
                        depth: 10,
                        depthColor: Colors.black54,
                        onTap: () => print('Hello, World!'),
                        shadow: BoxShadow(
                            color: Colors.black,
                            blurRadius: 30,
                            spreadRadius: -20,
                            offset: Offset(0, 40)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 20, top: 20, bottom: 20),
                    child: Container(
                      width: 120,
                      height: 120,
                      child: HoverCard(
                        builder: (context, hovering) {
                          return Container(
                            color: Colors.black,
                            child: Center(
                              child: FlutterLogo(size: 100),
                            ),
                          );
                        },
                        depth: 10,
                        depthColor: Colors.black54,
                        onTap: () => print('Hello, World!'),
                        shadow: BoxShadow(
                            color: Colors.black,
                            blurRadius: 30,
                            spreadRadius: -20,
                            offset: Offset(0, 40)),
                      ),
                    ),
                  ),
                ],
              ),
            )
     
     
      ]))]));
      @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  }
}
