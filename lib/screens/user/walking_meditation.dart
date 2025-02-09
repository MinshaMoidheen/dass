import 'package:flutter/material.dart';

class WalkingMeditation extends StatefulWidget {
  const WalkingMeditation({super.key});

  @override
  State<WalkingMeditation> createState() => _WalkingMeditationState();
}

class _WalkingMeditationState extends State<WalkingMeditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("Mindful meditation",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height:double.infinity,
        color: Colors.grey.shade300,
        child: Form(
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: Container(
                     height: 1500,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(20),
                           child: Text("Walk This Way",
                           style: TextStyle(
                             color: Colors.lightBlue.shade900,
                             fontWeight: FontWeight.w700,
                             fontSize: 25,
                           ),
                           ),
                         ),
                        const Padding(
                           padding: const EdgeInsets.only(left:10,right: 10),
                           child: Text("Try these simple set of instructions for walking meditation, and keep this chart handy for practicing on-the-go. "),
                         ),
                        const SizedBox(
                           height: 30,
                         ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text("TIME : 10 minutes",
                             style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.w700,
                             fontSize: 18,
                           ),
                           ),
                        ),
                        const Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("At some point today, you will most likely walk. You may even go for a walk."),
                         ),

                          const Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("It’s one of our greatest gifts, and when we manage early in life to use our legs to get around, it’s cause for celebration. Parents call their parents just to report on the event. The very fact that walking— or whatever form of ambulation you use to get around—is so central to our lives makes it a ready focus for mindful, meditative attention."),
                           ),

                        const Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Here’s a simple set of instructions for one form of walking meditation. There are many variations. This one relies on a pace that is close to how we might walk in everyday life, and in fact it can be adapted for walking in the street—just as long as you remember to pay attention to street lights, other people, and not looking like a zombie."),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 200,
                             width: double.infinity,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.grey
                             ),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(10),
                             child: Image.asset("assets/img/walkingmeditation.jpg",
                               fit: BoxFit.cover,
                             ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 50),
                           child: Text("1. ",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.w700
                           ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Stand up STRAIGHT with your back upright but not stiff. Feel your feet touching the ground and let your weight distribute evenly."),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("2. ",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Curl the THUMB of your left hand in and wrap your fingers around it. Place it just above your belly button. Wrap your right hand around it, resting your right thumb in the crevice formed between your left thumb and index finger. (This creates some balance for you and keeps your swinging arms from being a distraction.)"),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("3. ",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Drop your GAZE slightly. This helps you maintain focus."),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("4. ",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Step out with your left FOOT. Feel it swing, feel the heel hit the ground, now the ball, now the toes."),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("Drop your GAZE slightly. This helps you maintain focus."),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("5. ",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text("FEEL the same as the right foot comes forward."),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 20),
                           child: Text("6. ",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w700
                             ),
                           ),
                         ),

                       ],//childrens of column
                     ),
                   ),
                 ),
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}