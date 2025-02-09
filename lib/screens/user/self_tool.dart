import 'package:flutter/material.dart';
class SelfTool extends StatefulWidget {
  const SelfTool({super.key});

  @override
  State<SelfTool> createState() => _SelfToolState();
}

class _SelfToolState extends State<SelfTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Self-Help Tools ",
          style: TextStyle(
              color: Colors.white
          ),
        )
        ,
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
                      height: 2000,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                           child: Text("1. Mindfulness Meditation:",
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 21,
                             color: Colors.lightBlue.shade900,
                           ),),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text(" Learn and practice mindfulness meditation to enhance awareness and reduce stress.",
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Find a quiet space, focus on your breath, and bring attention to the present moment. Use guided mindfulness meditations for support.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("2. Gratitude Journal:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Cultivate a positive mindset by keeping a gratitude journal.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Daily, write down three things you're grateful for. Reflecting on positive aspects of your life can improve overall well-being.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("3. Deep Breathing Exercises:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Practice deep breathing to promote relaxation and reduce anxiety.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Inhale deeply through your nose, hold for a few seconds, and exhale slowly through your mouth. Repeat several times.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("4. Progressive Muscle Relaxation (PMR):",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Release tension in your body through systematic muscle relaxation.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Focus on each muscle group, tensing and then relaxing. Move from head to toe or vice versa.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("5. Positive Affirmations:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Boost your self-esteem and challenge negative thoughts with positive affirmations.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Create affirmations that resonate with you. Repeat them regularly to reinforce positive beliefs.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("6. Goal Setting and Tracking:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Set realistic and achievable goals for personal and mental health growth.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Identify specific, measurable, and time-bound goals. Regularly track your progress to stay motivated.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("7. Stress Ball or Fidget Toys:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Use physical tools to channel nervous energy and reduce stress.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Keep stress-relief tools handy. Squeeze a stress ball or use fidget toys during tense moments.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("8. Breath Counting Exercise:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Improve focus and calmness through mindful breath counting.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Inhale, exhale, and count each breath cycle. Start with shorter sessions and gradually extend the duration.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("9. Guided Imagery:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Harness the power of imagination to promote relaxation and mental clarity.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Visualize peaceful scenes or scenarios. Use guided imagery scripts or apps for assistance.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("10. Digital Detox Challenge:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Reduce screen time to alleviate stress and improve sleep.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Set specific periods to disconnect from digital devices. Use this time for other activities like reading, walking, or connecting with loved ones.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("11. Graded Exposure:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Confront and overcome fears or anxieties through gradual exposure.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Start with less challenging situations and gradually increase exposure. Monitor and celebrate progress.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("12. Self-Compassion Exercises:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Foster a kinder relationship with yourself through self-compassion practices.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("How to Use:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text(" Treat yourself with the same kindness you would offer a friend. Practice self-compassionate self-talk.",
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
