
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mentalhealth/utilities/customtextfield.dart';
import 'package:uuid/uuid.dart';

class AppointmentPage extends StatefulWidget {
  var name;
  var uid;
  var id;
  var createdname;
  var depressionsts;
  var depressionscore;
  var anxiteysts;
  var anxiteyscore;
  var stresssts;
  var stressscore;

  var email;
  var dob;
  var age;
  var gender;
  var city;
  var state;
  var occupation;
  var address;
  var mobile;



  AppointmentPage({super.key,this.name,this.uid,this.id,this.createdname,  this.depressionsts,this.depressionscore,this.anxiteyscore,this.anxiteysts,this.stresssts,this.stressscore,
    this.occupation,this.gender,this.address,this.city,this.dob,this.age
    ,this.state,this.mobile,this.email});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {


  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  String?timeString;

  var _lbookkey = new GlobalKey<FormState>();


  TextEditingController l_namecontroller = new TextEditingController();
  TextEditingController l_problemcontroller = new TextEditingController();
  TextEditingController l_datecontroller = new TextEditingController();
  TextEditingController _phonecontroller=new TextEditingController();


  var uuid=Uuid();
  var v1;

  @override
  void initState() {
    print(widget.createdname);
    print(widget.id);
    v1=uuid.v1();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Center(child: Text("Book Here",
        style: TextStyle(
          color: Colors.white
        ),)),
      ),
      body: SafeArea(
        child: Form(
          key: _lbookkey,
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,),
                    child: CustomTextFormField(
                      controller: l_namecontroller,
                      hintText: 'Enter your name:',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,),
                    child: CustomTextFormField(
                      controller: l_problemcontroller,
                      hintText: 'Problem Faced:',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your problem';
                        }
                        return null;
                      },
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Date'),
                      readOnly: true,
                      onTap: () async {
                        final DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                              const Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            _date = date;
                          });
                        }
                      },
                      validator: (value) {
                        if (_date == null) {
                          return 'Please select a date';
                        }
                        return null;
                      },
                      controller: TextEditingController(
                        text: _date == null ? '' : DateFormat('yyyy-MM-dd')
                            .format(_date),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Time'),
                      readOnly: true,
                      onTap: () async {
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (time != null) {
                          setState(() {
                            _time = time;


                              // Use the format method provided by the TimeOfDay class




                          });
                        }
                      },
                      validator: (value) {
                        if (_time == null) {
                          return 'Please select a time';
                        }
                        return null;
                      },
                      controller: TextEditingController(
                        text: _time == null ? '' : _time.format(context),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25,top: 20),
                    child: TextFormField(
                      controller: _phonecontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mobile is required";
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        prefixText: '+91 ',
                        hintText: "Mobile",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),


                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      timeString = '${_time.hourOfPeriod}:${_time.minute.toString().padLeft(2, '0')} ${_time.period.index == 0 ? 'AM' : 'PM'}';
                      var data=DateFormat('yyyy-MM-dd').format(_date);
                      print(data);
                      print(data.runtimeType);
                      print(timeString);
                      FirebaseFirestore.instance.collection("appointment")
                          .doc(v1)
                          .
                      set({
                        'uid':v1,
                        "name":l_namecontroller.text,
                        "problemfaced":l_problemcontroller.text,
                        "date":_date,
                         "time":timeString,
                        'createdBy':widget.createdname,
                        'createdid':widget.uid,
                        "status": 1,
                        "id":v1,
                        "createdDate": DateTime.now(),
                        'doctorid':widget.id,
                        'doctorname':widget.name,
                        'bookingstatus':0,
                        "phone":_phonecontroller.text,
                        'anxietystatus':widget.anxiteysts,
                        'anxietyscore':widget.anxiteyscore,
                        'stressstatus':widget.stresssts,
                        'stressscore':widget.stressscore,
                        'depressionstatus':widget.depressionsts,
                        'depressionscore':widget.depressionscore,

                        'email':widget.email,
                        'dob':widget.dob,
                        'age':widget.age,
                        'gender':widget.gender,
                        'city':widget.city,
                        'state':widget.state,
                        'occupation':widget.occupation,
                        'address':widget.address,
                        'mobile':widget.mobile,
                      })
                          .then((value)

                      {

                        Navigator.pop(context);
                        showsnackbar("Appointment added successfully");
                      }).catchError((e)=>showsnackbar("Failed! $e"));


                    },

                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue.shade900,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Book an appointment",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void showsnackbar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(value))
    );
  }
}