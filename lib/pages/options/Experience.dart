import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final GlobalKey<FormState> ExperienceKey = GlobalKey<FormState>();

  final TextEditingController CompanyController = TextEditingController();

  // final GlobalKey<FormState> QualityKey = GlobalKey<FormState>();
  final TextEditingController QualityController = TextEditingController();

  //final GlobalKey<FormState> RolesKey = GlobalKey<FormState>();
  final TextEditingController RolesController = TextEditingController();

  //final GlobalKey<FormState> DOB2Key = GlobalKey<FormState>();
  final TextEditingController joinDateController = TextEditingController();

  //final GlobalKey<FormState> ExitKey = GlobalKey<FormState>();
  final TextEditingController ExitDateController = TextEditingController();

  dynamic radioGrpVal1;
  //bool currentlyEmployed = false;
  //dynamic radioGrpVal2 = "b";

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(children: [
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
                    "Experience",
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(20),
                          height: _height * 0.711,
                          width: _width * 0.996,
                          color: Colors.white,
                          child: Container(
                              alignment: Alignment.bottomLeft,
                              margin: const EdgeInsets.only(top: 10, left: 21),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Company Name",
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
                                      key: ExperienceKey,
                                      child: TextFormField(
                                        controller: CompanyController,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter your Company Name first";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.Company = val;
                                          });
                                        },
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          label: Text(
                                            "    New Enterprice,San Francisco",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "School/Collage/Institute",
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
                                    child: TextFormField(
                                      controller: QualityController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Quality first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.Quality = val;
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    Quality Test Engineer",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Roles(optional)",
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
                                    height: 69,
                                    width: _width,
                                    decoration: BoxDecoration(
                                      //   color: Colors.amber,
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.5)),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: RolesController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Roles first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.Roles = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "\n"
                                          "    Working With Team members to \n"
                                          "    come up with new concepts and \n"
                                          "    product analysis...",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Employed Status",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: "1",
                                        groupValue: radioGrpVal1,
                                        onChanged: (val) {
                                          setState(() {
                                            radioGrpVal1 = val;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Previously Employeed",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: (radioGrpVal1 == "1")
                                              ? Colors.blue
                                              : Colors.grey,
                                        ),
                                      ),
                                      Radio(
                                        value: "2",
                                        groupValue: radioGrpVal1,
                                        onChanged: (val) {
                                          setState(() {
                                            radioGrpVal1 = val;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Currently Employeed",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: (radioGrpVal1 == "2")
                                              ? Colors.blue
                                              : Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      child:
                                          Divider(color: Colors.grey.shade700)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  (radioGrpVal1 == "1")
                                      ? Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "Date Joined",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          Colors.grey.shade700),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8, right: 10),
                                                  height: 30,
                                                  width: 150,
                                                  child: TextFormField(
                                                    controller:
                                                        joinDateController,
                                                    validator: (val) {
                                                      if (val!.isEmpty) {
                                                        return "Enter your Joining date first";
                                                      }
                                                      return null;
                                                    },
                                                    onSaved: (val) {
                                                      Global.DOB2 = val;
                                                    },
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                        top: 20,
                                                        left: 5,
                                                      ),
                                                      hintText:
                                                          "      DD/MM/YYYY",
                                                      hintStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Date Exit",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          Colors.grey.shade700),
                                                ),
                                                SizedBox(height: 15),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 24),
                                                  alignment: Alignment.topRight,
                                                  height: 30,
                                                  width: _width / 3,
                                                  child: TextFormField(
                                                    controller:
                                                        ExitDateController,
                                                    validator: (val) {
                                                      if (val!.isEmpty) {
                                                        return "Enter your exit date first";
                                                      }
                                                      return null;
                                                    },
                                                    onSaved: (val) {
                                                      Global.Exit = val;
                                                    },
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                        top: 20,
                                                        left: 5,
                                                      ),
                                                      hintText:
                                                          "      DD/MM/YYYY",
                                                      hintStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      : Container(),
                                  (radioGrpVal1 == "2")
                                      ? Column(
                                          children: [
                                            Text(
                                              "Date Joined",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade700),
                                            ),
                                            const SizedBox(height: 15),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 10),
                                              height: 30,
                                              width: 150,
                                              child: TextFormField(
                                                controller: joinDateController,
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your date first";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.DOB2 = val;
                                                },
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                    top: 20,
                                                    left: 5,
                                                  ),
                                                  hintText: "      DD/MM/YYYY",
                                                  hintStyle: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Container(),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              child: const Text("Save"),
                              onPressed: () {
                                if (ExperienceKey.currentState!.validate()) {
                                  ExperienceKey.currentState!.save();
                                }
                              }),
                          ElevatedButton(
                              onPressed: () {
                                ExperienceKey.currentState!.validate();

                                CompanyController.clear();
                                QualityController.clear();
                                RolesController.clear();
                                joinDateController.clear();
                                ExitDateController.clear();

                                setState(() {
                                  Global.Company;
                                  Global.Roles2;
                                  Global.Quality;
                                  Global.DateJoined;
                                  Global.DateExit;
                                  radioGrpVal1 = false;
                                });
                              },
                              child: const Text("Clear")),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
      ]),
    );
  }
}
