import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';


class PDFScreen extends StatefulWidget {
  final String pdfUrl;

  const PDFScreen({required this.pdfUrl});

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  late PDFViewController _controller;

  @override
  Widget build(BuildContext context) {
    print(widget.pdfUrl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Text('License ', style: TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder<File>(
        future: createFileOfPdfUrl(widget.pdfUrl),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return PDFView(
                filePath: snapshot.data!.path,
                enableSwipe: true,
                swipeHorizontal: true,
                autoSpacing: false,
                pageFling: false,
                onError: (error) {
                  print("Error loading PDF: ${error.toString()}");
                },
                onPageError: (page, error) {
                  print('Page $page: ${error.toString()}');
                },
              );
            }
          } else {
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 10,),
                Text("Fetching License",style: TextStyle(color: Colors.black),)
              ],
            ));
          }
        },
      ),
    );
  }

  Future<File> createFileOfPdfUrl(String pdfUrl) async {
    Completer<File> completer = Completer();
    print("Start download file from internet!");
    try {
      var request = await HttpClient().getUrl(Uri.parse(pdfUrl));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      var filename = pdfUrl.split('/').last;
      File file = File("${dir.path}/$filename");
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      completer.completeError(e);
    }
    return completer.future;
  }
}
