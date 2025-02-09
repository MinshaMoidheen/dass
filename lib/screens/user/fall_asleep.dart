import 'package:flutter/material.dart';

class FallAsleep extends StatefulWidget {
  const FallAsleep({super.key});

  @override
  State<FallAsleep> createState() => _FallAsleepState();
}

class _FallAsleepState extends State<FallAsleep> {
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
                      height: 1600,
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
                            child: Text("5 Steps to Wind Down and Fall Asleep",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left:10,right: 10),
                            child: Text("A bedtime meditation to stop tossing and turning, and get some quality shut eye."),
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
                                child: Image.asset("assets/img/asleep.webp",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("As someone who works every day with patients struggling with insomnia, the most common thing I hear is once the head hits the pillow, the brain doesn’t stop. They know sleep should come, but the brain just wants to think about both pressing and mundane things, such as reviewing the day’s events and tasks that need to be completed."),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("When we lose awareness of the present moment, our minds get stuck in maladaptive ways of thinking. For example, you might be trying to go to sleep but your mind gets lost thinking about all the groceries you need to buy. Deep, relaxed breathing is forgotten. And once you realize sleep isn’t happening, your muscles tense and your thought process quickly shifts to “I’m not falling asleep! I have XYZ to do this week and I won’t be able to function tomorrow.” The body seizes up, breathing and heart rate can both quicken, and falling sleep becomes more difficult."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: const Text("A Five-Step Sleep Meditation",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: Text("1.  Dim the lights 1 hour before bedtime: ",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Start winding down the brain and body by dimming the lights. Engage in relaxing activities outside the bedroom that pass the time quietly."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("2. Avoid looking at anything with a screen:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Stow away your tablet, phone, computer, and TV for the night—the light can keep you awake and alert."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("3. Ten minutes before bedtime, begin a focused mindfulness exercise:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Sit in a comfortable chair in the same dimly lit room. Imagine the outline of your body and slowly trace it in your head. Keep in mind the amount of pressure you’re feeling against the chair or the ground and be mindful of where there’s more pressure and where there’s less. Start with your head. Is it touching the back of the chair? How heavy does it feel against the chair, wall, or just the air? Then slowly move down to your ear, then shoulder, arm, and leg. Work down to your feet and then back up the other side of your body. Take about five minutes for this exercise."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("4. If your mind begins to wander, notice that it wandered and get back on track:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(" Try to avoid judging yourself—your mind will indeed wander; the skill lies in getting it back on track."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("5. Get in bed and focus on your breath:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("If you are unable to fall asleep, get up, sit in the comfortable chair again and repeat the exercise. Don’t get back into bed until you’re sleepy—and don’t sleep in the chair!"),
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
