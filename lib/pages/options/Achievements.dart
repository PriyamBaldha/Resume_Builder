import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  List<Row> allTextFields3 = [];
  List<TextEditingController> allControllers3 = [];

  final GlobalKey<FormState> allControllers3Key = GlobalKey<FormState>();

  final TextEditingController AchievementsController = TextEditingController();

  @override
  initState() {
    super.initState();
    allControllers3.add(TextEditingController());
    allControllers3.add(TextEditingController());

    allTextFields3.add(getTextField(i: 0, row: Row()));
    allTextFields3.add(getTextField(i: 1, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
        //backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text(
            "Achievements",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            //color: Colors.blueAccent,
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter Achievements",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      ...allTextFields3
                          .map((e) => getTextField(
                              i: allTextFields3.indexOf(e), row: e))
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
                                allControllers3.add(TextEditingController());
                                allTextFields3.add(getTextField(
                                    i: allTextFields3.length, row: Row()));
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
                          allControllers3.forEach((element) {
                            print(element.text);
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ]),
              ),
            )));
  }

  Row getTextField({required int i, required Row row}) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: allControllers3[i],
          decoration:
              const InputDecoration(hintText: "Exceeded sales 17% average"),
        )),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            setState(() {
              allControllers3.removeAt(i);
              allTextFields3.remove(row);
            });
          },
        )
      ],
    );
  }
}
