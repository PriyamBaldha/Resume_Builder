import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_builder/globals.dart';

class PDF_Page extends StatefulWidget {
  const PDF_Page({Key? key}) : super(key: key);

  @override
  State<PDF_Page> createState() => _PDF_PageState();
}

class _PDF_PageState extends State<PDF_Page> {
  TextStyle myStyle = const TextStyle(
      fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold);

  final pdf = pw.Document();

  final image = pw.MemoryImage(
    File(Global.photoPath!.path).readAsBytesSync(),
  );

  @override
  initState() {
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
            alignment: pw.Alignment.center,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text("Resume:",
                    style: pw.TextStyle(
                      fontSize: 25,
                      fontWeight: pw.FontWeight.bold,
                    )),
                pw.Container(
                  height: 80,
                  width: 100,
                  child: pw.Image(image),
                ),
                pw.Text("Personal Details:",
                    style: pw.TextStyle(
                      fontSize: 25,
                      fontWeight: pw.FontWeight.bold,
                    )),
                pw.Text(
                  "Name:${Global.name}",
                ),
                pw.Text(
                  "Email Id:${Global.email}",
                ),
                pw.Text(
                  "DOB:${Global.DOB}",
                ),
                pw.Text(
                  "Phone No:${Global.phone}",
                ),
                pw.Text(
                  "Address:${Global.address1}",
                ),
                pw.Text(
                  "Address:${Global.address2}",
                ),
                pw.Text(
                  "Address:${Global.address3}",
                ),
                pw.Divider(
                  thickness: 2,
                ),
                pw.Text("Personal Details:",
                    style: pw.TextStyle(
                      fontSize: 25,
                      fontWeight: pw.FontWeight.bold,
                    )),
                pw.Text(
                  "Nationality:${Global.Nationality}",
                ),
                pw.Text(
                  "Marital Status:${Global.MaritalStatus}",
                ),
                pw.Text(
                  "Languages Known:${Global.Language}",
                ),
                pw.Divider(
                  thickness: 2,
                ),
                pw.Text(
                  "Eduction:",
                  style: pw.TextStyle(
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  "course/degree:${Global.Education}",
                ),
                pw.Text(
                  "School/Collage/Institute:${Global.School}",
                ),
                pw.Text(
                  "School/Collage/Institute:${Global.CGPA}",
                ),
                pw.Text(
                  "Year Of Pass:${Global.Year}",
                ),
                pw.Divider(
                  thickness: 2,
                ),
                pw.Text(
                  "Technical Skills:",
                  style: pw.TextStyle(
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  "Technical skills:${Global.technical}",
                ),
                pw.Divider(
                  thickness: 2,
                ),
                pw.Text(
                  "Interest/Hobbis:",
                  style: pw.TextStyle(
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  "interest:${Global.Interest}",
                ),
                pw.Divider(
                  thickness: 2,
                ),
                pw.Text("Reference:",
                    style: pw.TextStyle(
                      fontSize: 25,
                      fontWeight: pw.FontWeight.bold,
                    )),
                pw.Text(
                  "Reference:${Global.Reference}",
                )
              ],
            ),
          );
        }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDF",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('ResumeWorkSpace');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              Directory? dir = await getExternalStorageDirectory();

              File file = File("${dir!.path}/resume.pdf");

              print("Priyam");
              print(file);
              print("Baldha");

              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.save_alt),
          ),
          IconButton(
            onPressed: () async {
              Uint8List bytes = await pdf.save();
              await Printing.layoutPdf(onLayout: ((format) => bytes));
            },
            icon: Icon(Icons.print),
          )
        ],
      ),
      body: Container(
        // color: Colors.amber,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Personal Details",
                  style: TextStyle(fontSize: 25),
                ),
                CircleAvatar(
                  backgroundImage: FileImage(Global.photoPath!),
                  radius: 80,
                  backgroundColor: Colors.grey,
                ),
                Text(
                  "Name:${Global.name}",
                ),
                Text(
                  "Email Id:${Global.email}",
                ),
                Text(
                  "DOB:${Global.DOB}",
                ),
                Text(
                  "Phone No:${Global.phone}",
                ),
                Text(
                  "Address:${Global.address1}",
                ),
                Text(
                  "Address:${Global.address2}",
                ),
                Text(
                  "Address:${Global.address3}",
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const Text(
              "Personal Details:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Nationality:${Global.Nationality}",
            ),
            Text(
              "Marital Status:${Global.MaritalStatus}",
            ),
            Text(
              "Languages Known:${Global.Language}",
            ),
            const Divider(
              thickness: 2,
            ),
            const Text(
              "Eduction:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "course/degree:${Global.Education}",
            ),
            Text(
              "School/Collage/Institute:${Global.School}",
            ),
            Text(
              "School/Collage/Institute:${Global.CGPA}",
            ),
            Text(
              "Year Of Pass:${Global.Year}",
            ),
            const Divider(
              thickness: 2,
            ),
            const Text(
              "Technical Skills:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Technical skills:${Global.technical}",
            ),
            const Divider(
              thickness: 2,
            ),
            const Text(
              "Interest/Hobbis:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "interest:${Global.Interest}",
            ),
            const Divider(
              thickness: 2,
            ),
            const Text(
              "Reference",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Reference:${Global.Reference}",
            ),
          ],
        ),
      ),
    );
  }
}
