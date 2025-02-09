import 'package:flutter/material.dart';

class ListeningSkills extends StatefulWidget {
  const ListeningSkills({super.key});

  @override
  State<ListeningSkills> createState() => _ListeningSkillsState();
}

class _ListeningSkillsState extends State<ListeningSkills> {
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
                            child: Text("How to Really Listen",
                              style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left:10,right: 10),
                            child: Text("Tips on how to be a good listener to yourself so you can be a better listener to others."),
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
                                child: Image.asset("assets/img/listening.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("How often do you feel really listened to? How often do you really listen to others? (Be honest.)"),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("We know we’re in the presence of a good listener when we get that sweet, affirming feeling of really being heard. But sadly it occurs all too rarely. We can’t force others to listen, but we can improve our own listening, and perhaps inspire others by doing so."),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Good listening means mindful listening. Like mindfulness itself, listening takes a combination of intention and attention. The intention part is having a genuine interest in the other person—their experiences, views, feelings, and needs. The attention part is being able to stay present, open, and unbiased as we receive the other’s words—even when they don’t line up with our own ideas or desires."),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Paradoxically, being good at listening to others requires the ability to listen to yourself. If you can’t recognize your own beliefs and opinions, needs and fears, you won’t have enough inner space to really hear anyone else. So the foundation for mindful listening is self-awareness."),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Here are some tips to be a good listener to yourself so you can be a good listener for others."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: const Text("How to Really Listen",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: Text("1.  Check inside: ",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("“How am I feeling just now? Is there anything getting in the way of being present for the other person?” If something is in the way, decide if it needs to be addressed first or can wait till later."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("2. Feeling your own sense of presence:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(" extend it to the other person with the intention to listen fully and openly, with interest, empathy, and mindfulness."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("3. Silently note your own reactions as they arise:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("thoughts, feelings, judgments, memories. Then return your full attention to the speaker."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("4. Reflect back what you are hearing:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("using the speaker’s own words when possible, paraphrasing or summarizing the main point. Help the other person feel heard."),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("5. Use friendly, open-ended questions:",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("to clarify your understanding and probe for more. Affirm before you differ. Acknowledge the other person’s point of view—acknowledging is not agreeing!—before introducing your own ideas, feelings, or requests."),
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
