import 'package:flutter/material.dart';

class KindnessMeditation extends StatefulWidget {
  const KindnessMeditation({super.key});

  @override
  State<KindnessMeditation> createState() => _KindnessMeditationState();
}

class _KindnessMeditationState extends State<KindnessMeditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text("mindful meditation",
        style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.w600,
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
                      height: 1830,
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
                            child: Text("Be Kind to Yourself—Right Now",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left:10,right: 10),
                            child: Text("To be kind to others, you need to start with yourself."),
                          ),
                          const SizedBox(
                            height: 30,
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
                                child: Image.asset("assets/img/kindness.webp",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("People often find some difficulty in caring for themselves, in receiving love, in believing they deserve to be happy."),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Imagine for a moment the amount of energy you expend brooding over the future, ruminating about the past, comparing yourself to others, judging yourself, worrying about what might happen next. That is a huge amount of energy. Now imagine all of that energy gathered in and returned to you. Underlying our usual patterns of self-preoccupation, stinging self-judgment, and fear is the universal, innate potential for love and awareness."),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Loving-kindness meditations point us back to a place within, where we can cultivate love and help it flourish. Developing care toward ourselves is the first objective, the foundation for later being able to include others in the sphere of kindness."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: const Text("How to Do a Loving-Kindness Meditation",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: Text("1. You can start by taking delight in your own goodness:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("calling to mind things you have done out of good-heartedness, and rejoicing in those memories to celebrate the potential for goodness we all share."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("2. Silently recite phrases that reflect what we wish most deeply for ourselves in an enduring way. Traditional phrases are:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("• May I live in safety."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("• May I have mental happiness (peace, joy)."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("• May I have physical happiness (health, freedom from pain)."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("• May I live with ease."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("3. Repeat the phrases with enough space and silence between: ",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("so they fall into a rhythm that is pleasing to you. Direct your attention to one phrase at a time."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("4. Each time you notice your attention has wandered:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("be kind to yourself and let go of the distraction. Come back to repeating the phrases without judging or disparaging yourself."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("5. After some time, visualize yourself in the center of a circle composed of those who have been kind to you:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("or have inspired you because of their love. Perhaps you’ve met them, or read about them; perhaps they live now, or have existed historically or even mythically. That is the circle. As you visualize yourself in the center of it, experience yourself as the recipient of their love and attention. Keep gently repeating the phrases of loving kindness for yourself."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("6. To close the session, let go of the visualization, and simply keep repeating the phrases for a few more minutes:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Each time you do so, you are transforming your old, hurtful relationship to yourself, and are moving forward, sustained by the force of kindness."),
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
