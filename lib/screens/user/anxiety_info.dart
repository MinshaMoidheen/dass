import 'package:flutter/material.dart';
class AnxietyInfo extends StatefulWidget {
  const AnxietyInfo({super.key});

  @override
  State<AnxietyInfo> createState() => _AnxietyInfoState();
}

class _AnxietyInfoState extends State<AnxietyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Anxiety Information ",
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
                      height: 1700,
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
                            child: Text("Anxiety is a normal response to stress, but when it becomes excessive or prolonged, it can interfere with daily life. Anxiety disorders are a group of mental health conditions characterized by persistent worry, fear, or nervousness. It's important to recognize that anxiety disorders are treatable, and seeking support is a crucial step towards managing symptoms.",
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
                            child: Text("-> Excessive worry or fear about everyday situations.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Restlessness or feeling on edge.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Fatigue or muscle tension.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Difficulty concentrating or mind going blank.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Irritability.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Sleep disturbances.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Panic attacks (sudden and intense episodes of fear).",
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
                            padding: const EdgeInsets.only(left: 15,bottom: 10),
                            child: Text("Anxiety disorders can be influenced by various factors, including:",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Genetics: Family history of anxiety disorders.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Brain chemistry: Imbalances in neurotransmitters.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Environmental stressors: Trauma, abuse, or major life changes.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Personality: Certain personality types may be more prone to anxiety.",
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
                            padding: const EdgeInsets.only(left: 15,bottom: 10),
                            child: Text("Factors that may increase the risk of developing anxiety disorders include:",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Family history of anxiety or other mental health disorders.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Exposure to stressful life events or trauma.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Chronic medical conditions.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Substance abuse.",
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
                            child: Text("Anxiety disorders are among the most common mental health disorders, affecting millions of people worldwide. They can occur at any age, with symptoms often starting in childhood or adolescence.",
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
                            child: Text("Diagnosing anxiety disorders involves a careful evaluation of symptoms and their impact on daily functioning. Mental health professionals, such as psychologists or psychiatrists, play a key role in the diagnostic process.",
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
                            child: Text("->Cognitive-Behavioral Therapy (CBT).",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Medications, including antidepressants and anti-anxiety medications.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Relaxation techniques, such as deep breathing and mindfulness.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Lifestyle modifications, including regular exercise and healthy sleep habits.",
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
                            child: Text("-> Identify triggers and coping mechanisms.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Practice relaxation techniques regularly.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Maintain a balanced lifestyle with proper nutrition and exercise.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Establish a consistent sleep routine.",
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
                            child: Text("-> Anxiety and Depression Association of America (ADAA): www.adaa.org",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> National Institute of Mental Health (NIMH): www.nimh.nih.gov",
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
                            child: Text("If you or someone you know is experiencing symptoms of anxiety, it's essential to consult with a mental health professional. Effective treatment plans can be tailored to address specific anxiety symptoms and improve overall well-being.",
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
                            child: Text("-> American Psychiatric Association. (2013). Diagnostic and statistical manual of mental disorders (5th ed.). Arlington, VA: American Psychiatric Publishing.",
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
