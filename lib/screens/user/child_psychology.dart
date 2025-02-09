import 'package:flutter/material.dart';

class PostpartumDepression extends StatefulWidget {
  const PostpartumDepression({super.key});

  @override
  State<PostpartumDepression> createState() => _PostpartumDepressionState();
}

class _PostpartumDepressionState extends State<PostpartumDepression> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text("Postpartum Depression",
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
                      height:MediaQuery.of(context).size.height*2.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10,top: 15,bottom: 10),
                            child: Text(" Postpartum depression (PPD) is a type of mood disorder that affects some women after childbirth. It is essential to recognize the symptoms and seek appropriate treatment to ensure the well-being of both the mother and the baby. Here is some information about postpartum depression, including symptoms and treatments:",
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
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
                                child: Image.asset("assets/img/postpartum.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("Symptoms of Postpartum Depression:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("1. Persistent Sadness or Mood Swings:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Feeling consistently sad, anxious, or overwhelmed for an extended period.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("2. Changes in Appetite and Sleep Patterns:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Significant changes in eating habits and disrupted sleep, unrelated to the usual challenges of caring for a newborn.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("3. Loss of Interest or Pleasure:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("A diminished interest in activities that were once enjoyable, including those related to the baby.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("4. Feelings of Guilt or Worthlessness:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Experiencing intense guilt, feelings of inadequacy, or a sense of being a burden to others.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("5. Difficulty Bonding with the Baby:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Struggling to form a strong emotional connection with the newborn.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("6. Physical Symptoms:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Unexplained aches and pains, headaches, or stomach problems.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("7. Intense Irritability or Anger:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Experiencing heightened irritability, frustration, or anger, often over minor issues.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("8. Difficulty Concentrating or Making Decisions:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Cognitive challenges, such as difficulty focusing, making decisions, or remembering things.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("9. Withdrawal from Family and Friends:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Avoiding social interactions and withdrawing from friends and family.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("Risk Factors for Postpartum Depression:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("1. Previous Mental Health Issues:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("A history of depression, anxiety, or other mental health disorders.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("2. Lack of Support:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Limited support from family, friends, or a partner.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("3. Hormonal Changes:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Fluctuations in hormones after childbirth can contribute to mood swings.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("4. Stressful Life Events:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Major life stressors, such as financial difficulties or relationship problems.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("5. Complications During Pregnancy or Childbirth:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Health issues during pregnancy or a challenging childbirth experience.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("Treatment Options:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("1. Therapy:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Cognitive-behavioral therapy (CBT) and interpersonal therapy (IPT) can be effective in treating PPD.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("2. Medication:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Antidepressant medications, such as selective serotonin reuptake inhibitors (SSRIs), may be prescribed under the guidance of a healthcare professional.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("3. Support Groups:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Joining a support group for new mothers can provide a sense of community and understanding.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("4. Lifestyle Changes:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Adequate sleep, regular exercise, and a healthy diet can positively impact mood and overall well-being.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 5),
                            child: Text("5. Increased Support:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.cyan,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("Seeking help from friends, family, and healthcare professionals to share the responsibilities of caring for the baby.",
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 15,bottom: 10),
                            child: Text("Seeking Help:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.lightBlue.shade900,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,bottom: 10),
                            child: Text("If you or someone you know is experiencing symptoms of postpartum depression, it's crucial to seek help promptly. Consultation with a healthcare provider, such as an obstetrician, gynecologist, or mental health professional, can lead to an accurate diagnosis and appropriate treatment plan.",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 20),
                            child: Text("Remember that postpartum depression is a common and treatable condition, and with the right support, mothers can recover and enjoy a fulfilling relationship with their newborns.",
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
