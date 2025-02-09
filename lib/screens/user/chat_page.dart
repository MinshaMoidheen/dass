import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('chat Page',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Text('This is the content of the chat page.'),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Doctor Chat App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ChatScreen(),
//     );
//   }
// }
//
// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textController = TextEditingController();
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Doctor Chat'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder(
//               stream: _firestore.collection('messages').snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//
//                 var messages = snapshot.data.docs.reversed.toList();
//
//                 return ListView.builder(
//                   reverse: true,
//                   itemCount: messages.length,
//                   itemBuilder: (context, index) {
//                     var message = messages[index].get('text');
//                     return ListTile(
//                       title: Text(message),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           _buildMessageComposer(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildMessageComposer() {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: _textController,
//               decoration: InputDecoration(
//                 hintText: 'Enter your message...',
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             onPressed: () {
//               _sendMessage();
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _sendMessage() {
//     String messageText = _textController.text.trim();
//     if (messageText.isNotEmpty) {
//       _firestore.collection('messages').add({
//         'text': messageText,
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       _textController.clear();
//     }
//   }
// }
