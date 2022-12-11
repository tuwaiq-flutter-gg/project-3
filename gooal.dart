

import 'package:fifaworld/combonat/logOut.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:video_player/video_player.dart';

class VideoGoal extends StatefulWidget {
  const VideoGoal({super.key});

  @override
  State<VideoGoal> createState() => _VideoGoalState();
}

class _VideoGoalState extends State<VideoGoal> {
   late VideoPlayerController controller;
  late VideoPlayerController controller2;
  @override
  void initState() {
    
    super.initState();
    controller =  VideoPlayerController.
    asset("assets/ve1.mov")..initialize().then((value) {
      setState(() {
        
      });
    });
    controller2 =  VideoPlayerController.
    asset("assets/ve2.mov")..initialize().then((value) {
      setState(() {
        
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" GoalOne ",style:
       TextStyle(color: Colors.black,fontSize: 30,
       fontWeight: FontWeight.bold),),
      backgroundColor: Color.fromARGB(247, 255, 255, 255),
      ),

      body: ListView(
        
        
        
        children: [
        
         Center(
            child: controller.value.isInitialized?
            AspectRatio(child: VideoPlayer(controller),
            aspectRatio: controller.value.aspectRatio,):Container()
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Center(
              child: Row(
                
                children: [
                  ElevatedButton(onPressed: (() {
                    controller.play();  }),
                     child:Icon(Icons.play_arrow_rounded,)),
                    ElevatedButton(onPressed: (() {
                    controller.pause();
                    
                    
                  }), child:Icon(Icons.stop,))
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(child: Text(" GoalTow ",style:
           TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
           Center(
            child: controller2.value.isInitialized?
            AspectRatio(child: VideoPlayer(controller2),
            aspectRatio: controller2.value.aspectRatio,):Container()
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Center(
              child: Row(
                
                children: [
                  ElevatedButton(onPressed: (() {
                    controller2.play();  }),
                     child:Icon(Icons.play_arrow_rounded,)),
                    ElevatedButton(onPressed: (() {
                    controller2.pause();
                    
                    
                  }), child:Icon(Icons.stop,))
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
               InkWell(
                onTap: () {
                   Get.to(logOut());
                },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 255, 253, 253),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text("Do You Want To ",selectionColor: Color.fromARGB(255, 17, 16, 16),style: TextStyle
                        (fontSize: 20,fontWeight: FontWeight.bold),),
                         Text(" Exit ",
                       style: TextStyle
                        (fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),
                        
                        ),
                        Text("? ",selectionColor: Color.fromARGB(255, 17, 16, 16),style: TextStyle
                        (fontSize: 20,fontWeight: FontWeight.bold),),
                        
                      ],
                    )
                    ),
                 ),
               )

        
      ],

      ),

    );
  }
}