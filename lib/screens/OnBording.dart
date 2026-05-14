import 'package:flutter/material.dart';
import 'package:sachinxs/screens/F2.dart';
import 'package:sachinxs/screens/UserData.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'F1.dart';
import 'F3.dart';

class OnBording extends StatefulWidget {

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  
  final PageController _controller = PageController();
  bool showD = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index){
                    setState(() {
                      showD = index ==2;
                    });
                  },
                  children: [
                    F1(),
                    F2(),
                    F3(),

                  ],
                ),
                Container(
                  alignment: const Alignment(0, 0.60),
                  child: SmoothPageIndicator(controller: _controller, count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xFF6CB6E4),
                    dotColor: Color(0xFF212121)
                  ),),
                ),
                Positioned(bottom:60,left:0,right:0, child:!showD ? GestureDetector(
                  onTap: (){
                    _controller.animateToPage(_controller.page!.toInt() + 1,
                    duration: const Duration(milliseconds: 400,),
                    curve: Curves.easeInOut,);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Container(
                      height: MediaQuery.of((context)).size.height*0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF6CB6E4),
                      ),
                      child: Center(
                        child: Text(showD ? "Get Started":"Next", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                    ),
                  ),
                )
                    :GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Userdata()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Container(
                          height: MediaQuery.of((context)).size.height*0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF6CB6E4),
                          ),
                          child: Center(
                            child: Text(showD ? "Get Started":"Next", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
