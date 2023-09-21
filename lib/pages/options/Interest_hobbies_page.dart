import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Interest_hobbis extends StatefulWidget {
  const Interest_hobbis({Key? key}) : super(key: key);

  @override
  State<Interest_hobbis> createState() => _Interest_hobbisState();
}

class _Interest_hobbisState extends State<Interest_hobbis> {
  List<Row> allTextFields = [];
  List<TextEditingController> allControllers = [];

  final GlobalKey<FormState> allControllersKey = GlobalKey<FormState>();

  final TextEditingController InterestController = TextEditingController();

  @override
  initState() {
    super.initState();
    allControllers.add(TextEditingController());
    allControllers.add(TextEditingController());

    allTextFields.add(getTextField(i: 0, row: Row()));
    allTextFields.add(getTextField(i: 1, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Interest/Hobbis",
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
                      "Enter your interests",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    ...allTextFields
                        .map((e) =>
                            getTextField(i: allTextFields.indexOf(e), row: e))
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
                              allTextFields.add(getTextField(
                                  i: allTextFields.length, row: Row()));
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
                        allControllers.forEach((element) {
                          print(element.text);

                          print(Global.Interest);
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
            )));
  }

  Row getTextField({required int i, required Row row}) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: allControllers[i],
          decoration:
              const InputDecoration(hintText: "Travelling,Fishing,Painting"),
        )),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            setState(() {
              allControllers.removeAt(i);
              allTextFields.remove(row);
            });
          },
        )
      ],
    );
  }
}
