import 'package:flutter/material.dart';
class DepressionInfo extends StatefulWidget {
  const DepressionInfo({super.key});

  @override
  State<DepressionInfo> createState() => _DepressionInfoState();
}

class _DepressionInfoState extends State<DepressionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Depression Information ",
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
                            child: Text("Depression is a common mental health disorder characterized by persistent feelings of sadness, hopelessness, and a lack of interest in activities. It affects how individuals think, feel, and handle daily activities. It's important to note that depression is a medical condition and not a sign of personal weakness.",
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
                            child: Text("-> Persistent feelings of sadness or emptiness.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Loss of interest or pleasure in once-enjoyable activities.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Changes in appetite or weight.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Difficulty sleeping or oversleeping.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Fatigue and loss of energy.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Feelings of worthlessness or excessive guilt.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("->Difficulty concentrating or making decisions.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Recurrent thoughts of death or suicide.",
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
                            child: Text("Depression can be influenced by a combination of factors, including:",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Biological factors: Genetic predisposition or chemical imbalances in the brain.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Environmental factors: Trauma, loss, stress, or major life changes.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Psychological factors: Personality traits, low self-esteem, or a history of mental health issues.",
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
                            child: Text("Factors that may increase the risk of depression include:",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Family history of depression.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Personal history of mental health issues.",
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
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Traumatic experiences.",
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
                            child: Text("Depression is a widespread condition, affecting millions of people worldwide. It can occur at any age, and while more common in adults, it can also affect children and adolescents.",
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
                            child: Text("A diagnosis is typically made based on a thorough assessment of symptoms and their impact on daily life. Mental health professionals, such as psychiatrists or psychologists, play a crucial role in the diagnostic process.",
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
                            child: Text("-> Psychotherapy (talk therapy), including Cognitive-Behavioral Therapy (CBT).",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Medications such as antidepressants.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("->Lifestyle changes, including regular exercise and healthy sleep patterns.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Support groups and community resources.",
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
                            child: Text("-> Establish a daily routine.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Engage in activities that bring joy or relaxation.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("->Reach out to friends and family for support.",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("->Practice mindfulness and relaxation techniques.",
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
                            child: Text("-> National Suicide Prevention Lifeline: 1-800-273-TALK (8255)",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> Substance Abuse and Mental Health Services Administration (SAMHSA): 1-800-662-HELP (4357)",
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("-> National Alliance on Mental Illness (NAMI) Helpline: 1-800-950-NAMI (6264)",
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
                            child: Text("If you or someone you know is experiencing symptoms of depression, it's crucial to seek help from a mental health professional. They can provide an accurate diagnosis and create an effective treatment plan tailored to individual needs.",
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
