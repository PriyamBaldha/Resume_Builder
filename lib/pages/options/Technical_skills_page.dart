import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Technical_skills extends StatefulWidget {
  const Technical_skills({Key? key}) : super(key: key);

  @override
  State<Technical_skills> createState() => _Technical_skillsState();
}

class _Technical_skillsState extends State<Technical_skills> {
  //List<Row> allTextFields = [];
  List<TextEditingController> allControllers = [];

  @override
  initState() {
    super.initState();
    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
        //backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text(
            "Technical Skills",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            //color: Colors.blueAccent,
            child: SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter your skills",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    ...allControllers
                        .map((e) => getTextField(myController: e))
                        .toList(),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: _width,
                      child: SizedBox.expand(
                        child: OutlinedButton(
                          child: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              allControllers.add(TextEditingController());
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: const Text("Save"),
                      onPressed: () {
                        setState(() {
                          allControllers.forEach((e) {
                            Global.technical.add(e.text);
                          });
                        });

                        print(Global.technical.toSet().toList());
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
            )));
  }

  Row getTextField({required TextEditingController myController}) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: myController,
          decoration:
              const InputDecoration(hintText: "C Programming,Web Technical"),
        )),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            setState(() {
              allControllers.removeAt(allControllers.indexOf(myController));
            });
          },
        )
      ],
    );
  }
}
