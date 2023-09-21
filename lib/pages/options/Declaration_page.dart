import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  GlobalKey<FormState> declarationFormKey = GlobalKey<FormState>();
  TextEditingController descriptionController = TextEditingController();

  bool switchVal = false;
  double contHeight = 0.4;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declaration"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white70,
      body: Container(
        height: (switchVal != true) ? _height * 0.08 : _height * 0.56,
        width: _width,
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(0.8)),
        child: SingleChildScrollView(
          child: Form(
            key: declarationFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Declaration',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Switch(
                          value: switchVal,
                          onChanged: (val) {
                            setState(() {
                              switchVal = val;
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset('assets/icons/target.png', height: 70)),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Enter Description....';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      Global.description2 = val;
                    },
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Description',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //const SizedBox(width: 35),
                    Column(
                      children: [
                        const Text(
                          "Date",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            onSaved: (val) {
                              Global.date = val;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'DD/MM/YYYY',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //const SizedBox(width: 69),
                    Column(
                      children: [
                        const Text(
                          "Place(Interview\nvenue/city)",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          child: TextFormField(
                            onSaved: (val) {
                              Global.place = val;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Eg. Surat',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (declarationFormKey.currentState!.validate()) {
                          declarationFormKey.currentState!.save();
                        }

                        print("Description:${Global.description2}");
                        print("Date:${Global.date}");
                        print("Place:${Global.place}");
                      },
                      child: const Text("Save"),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(90, 35)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        declarationFormKey.currentState!.reset();
                        descriptionController.clear();
                        setState(() {
                          Global.description2 = '';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(90, 35)),
                      child: const Text("Clear"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
