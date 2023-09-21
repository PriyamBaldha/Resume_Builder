import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Personal_details extends StatefulWidget {
  const Personal_details({Key? key}) : super(key: key);

  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  @override
  final GlobalKey<FormState> personalDetailFormKey = GlobalKey<FormState>();

  final TextEditingController DOBController = TextEditingController();

  final TextEditingController NationalityController = TextEditingController();

  dynamic radioGrpVal = "p";

  bool english_CheckBoxVal = false;
  bool hindi_CheckBoxVal = false;
  bool gujrati_CheckBoxVal = false;

  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                width: _width,
                height: _height,
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('ResumeWorkSpace');
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 67,
                    ),
                    const Text(
                      "Personal Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 12,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: _height * 0.96,
                      width: _width,
                      color: Colors.white,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(top: 10, left: 21),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "DOB",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 2,
                                  right: 20,
                                  top: 5,
                                  bottom: 10,
                                ),
                                height: 50,
                                width: _width,
                                decoration: BoxDecoration(
                                  //   color: Colors.amber,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                ),
                                child: Form(
                                  key: personalDetailFormKey,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    controller: DOBController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter your DOB first";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Global.DOB = val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      label: Text(
                                        "    DD/MM/YYYY",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Marital status",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: "Single",
                                      groupValue: radioGrpVal,
                                      onChanged: (val) {
                                        setState(() {
                                          radioGrpVal = val;
                                        });
                                      }),
                                  Text(
                                    "Single",
                                    style: TextStyle(
                                        color: (radioGrpVal == "Single")
                                            ? Colors.blueAccent
                                            : Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: "Married",
                                      groupValue: radioGrpVal,
                                      onChanged: (val) {
                                        setState(() {
                                          radioGrpVal = val;
                                        });
                                      }),
                                  Text("Married",
                                      style: TextStyle(
                                          color: (radioGrpVal == "Married")
                                              ? Colors.blueAccent
                                              : Colors.grey)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Languages Known",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: english_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          english_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text(
                                    "English",
                                    style: TextStyle(
                                        color: (english_CheckBoxVal == false)
                                            ? Colors.grey
                                            : Colors.blueAccent),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: hindi_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          hindi_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text("Hindi",
                                      style: TextStyle(
                                          color: (hindi_CheckBoxVal == false
                                              ? Colors.grey
                                              : Colors.blueAccent)))
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: gujrati_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          gujrati_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text("Gujarati",
                                      style: TextStyle(
                                          color: (gujrati_CheckBoxVal == false
                                              ? Colors.grey
                                              : Colors.blueAccent)))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Nationality",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 2,
                                  right: 20,
                                  top: 5,
                                  bottom: 10,
                                ),
                                height: 50,
                                width: _width,
                                decoration: BoxDecoration(
                                  //   color: Colors.amber,
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                ),
                                //key: personalDetailFormKey,
                                child: TextFormField(
                                  //keyboardType: TextInputType.datetime,
                                  controller: NationalityController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Nationality first";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Nationality = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      "   Indian ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                      child: const Text("Save"),
                                      onPressed: () {
                                        if (personalDetailFormKey.currentState!
                                            .validate()) {
                                          personalDetailFormKey.currentState!
                                              .save();
                                        }

                                        print("DOB: ${Global.DOB}");
                                        print(
                                            "Marital status: ${Global.MaritalStatus}");
                                        print(
                                            "Language Known: ${Global.Language}");
                                        print(
                                            "Nationality: ${Global.Nationality}");
                                      }),
                                  ElevatedButton(
                                      onPressed: () {
                                        personalDetailFormKey.currentState!
                                            .reset();

                                        DOBController.clear();
                                        NationalityController.clear();

                                        setState(() {
                                          Global.DOB = "";
                                          Global.MaritalStatus = "";
                                          Global.Language = "";
                                          Global.Nationality = "";
                                          radioGrpVal = null;
                                          english_CheckBoxVal = false;
                                          hindi_CheckBoxVal = false;
                                          gujrati_CheckBoxVal = false;
                                        });
                                      },
                                      child: const Text("Clear")),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
