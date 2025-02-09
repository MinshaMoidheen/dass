import 'package:flutter/material.dart';
class StressInfo extends StatefulWidget {
  const StressInfo({super.key});

  @override
  State<StressInfo> createState() => _StressInfoState();
}

class _StressInfoState extends State<StressInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Stress Information ",
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
                      height: 1400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Overview:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Stress is a natural response to challenging situations, but chronic or excessive stress can have negative effects on mental and physical health. Understanding stress and developing healthy coping mechanisms is essential for maintaining overall well-being.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Symptoms:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Physical symptoms: Headaches, muscle tension, fatigue.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Emotional symptoms: Irritability, anxiety, depression.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Cognitive symptoms: Difficulty concentrating, memory problems.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Behavioral symptoms: Changes in sleep patterns, appetite changes.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Causes:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Work-related stress.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Relationship issues.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Financial concerns.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Major life changes.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Traumatic events.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Risk Factors:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> High workload or job demands.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Lack of social support.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Personal factors, such as perfectionism.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Unhealthy lifestyle habits.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Prevalence:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Stress is a common experience, and many individuals encounter stressors throughout their lives. It's important to recognize when stress becomes chronic and requires attention.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Diagnosis:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Stress is often diagnosed based on self-reporting of symptoms and their impact on daily life. Professionals may use stress scales or assessments to evaluate stress levels.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Treatment Options:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Stress management techniques, including mindfulness and relaxation exercises.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Time management and organizational skills.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Cognitive-behavioral interventions.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Seeking social support and professional counseling.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Self-Help Strategies:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Prioritize self-care and relaxation.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Set realistic goals and expectations.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Practice time management.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Engage in activities that bring joy and relaxation.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Support Resources:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> American Institute of Stress: www.stress.org",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Stress Management Society: www.stress.org.uk",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("Encouragement to Seek Professional Help:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("If stress is significantly impacting your daily life or if you are finding it challenging to cope, consider seeking support from a mental health professional. They can help you develop effective strategies for managing stress and improving your overall well-being.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:15,bottom: 10,top: 15),
                            child: Text("References:",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Cohen, S., Kamarck, T., & Mermelstein, R. (1983). A global measure of perceived stress. Journal of Health and Social Behavior, 24(4), 385-396. doi:10.2307/2136404.",
                              style: TextStyle(
                                  fontSize: 15
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
