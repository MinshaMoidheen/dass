import 'package:flutter/material.dart';
import 'package:mentalhealth/screens/user/appointment_page.dart';
import 'package:url_launcher/url_launcher.dart';
class DocDetails extends StatefulWidget {
  var name;
  var updates;
  var phno;
  var qualifoication;
  var exp;
  var institution;
  var workhr;
  var id;
  var location;
  var officename;
  var uid;
  var createdname;
  var imgurl;
  var pdf;


  DocDetails({super.key,this.name,this.exp,this.createdname,this.imgurl,
    this.id,this.officename,this.location,this.uid,this.pdf,
    this.institution,this.phno,this.qualifoication,this.updates,this.workhr});

  @override
  State<DocDetails> createState() => _DocDetailsState();
}

class _DocDetailsState extends State<DocDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('Doctor Details',
          style: TextStyle(
              color: Colors.white
          ),),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          child: Container(

                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: widget.imgurl != ""
                                    ? NetworkImage(widget.imgurl!)
                                    : AssetImage('assets/img/profile.png')
                                as ImageProvider<Object>,
                                fit: BoxFit.cover, // You can adjust the BoxFit as needed
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Dr.${widget.name}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.updates,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                widget.qualifoication,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      _buildButton('Call', Icons.call, () {
                        _makePhoneCall(widget.phno);

                      }),

                    ],
                  ),
                  SizedBox(height: 30),


                  Text(
                    "Qualifications",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.qualifoication,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  SizedBox(height: 30),
                  Text(
                    "Experience",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.exp,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Office Information",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15),
                    child: Row(
                        children:[
                          Text(
                            "Office Name :  ",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Text(
                            widget.officename,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15),
                    child: Row(
                        children:[
                          Text(
                            "Location :  ",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Text(
                            widget.location,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15),
                    child: Row(
                        children:[
                          Text(
                            "Working Hours :  ",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Text(
                            widget.workhr,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 50),
                  // Center(
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  //         return AppointmentPage(
                  //           name: widget.name,
                  //           uid: widget.uid,
                  //           id: widget.id,
                  //           createdname: widget.createdname,
                  //
                  //
                  //         );
                  //       }));
                  //     },
                  //     child: Container(
                  //       height: 50,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //           color: Colors.lightBlue.shade900,
                  //           borderRadius: BorderRadius.circular(20)),
                  //       child: const Center(
                  //         child: Text(
                  //           "Appointment",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w700),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget _buildButton(String text, IconData icon, Function onPressed) {
    return ElevatedButton.icon(
      onPressed: () => onPressed(),
      icon: Icon(icon, color: Colors.white),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade900),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

}
