import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final GlobalKey<FormState> EducationKey = GlobalKey<FormState>();
  final TextEditingController EducationController = TextEditingController();

  final GlobalKey<FormState> SchoolKey = GlobalKey<FormState>();
  final TextEditingController SchoolController = TextEditingController();

  final GlobalKey<FormState> CGPAKey = GlobalKey<FormState>();
  final TextEditingController CGPAController = TextEditingController();

  final GlobalKey<FormState> YearKey = GlobalKey<FormState>();
  final TextEditingController YearController = TextEditingController();

  @override
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
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 67,
                    ),
                    const Text(
                      "Education",
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
                        height: _height * 0.650,
                        width: _width,
                        color: Colors.white,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 10, left: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Course/Degree",
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
                                    key: EducationKey,
                                    child: TextFormField(
                                      controller: EducationController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Education first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.Education = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    B.Tech Information Technology",
                                          style: TextStyle(color: Colors.grey),
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
                                  child: Form(
                                    key: SchoolKey,
                                    child: TextFormField(
                                      controller: SchoolController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your School first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.School = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    Bhagavan Mahavir University",
                                          style: TextStyle(color: Colors.grey),
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
                                  child: Form(
                                    key: CGPAKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: CGPAController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your CGPA first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.CGPA = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    70% (or) 7.0 CGPA",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Year Of Pass",
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
                                    key: YearKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      controller: YearController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Year first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.Year = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    2019",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
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
                                          if (EducationKey.currentState!
                                              .validate()) {
                                            EducationKey.currentState!.save();

                                            if (SchoolKey.currentState!
                                                .validate()) {
                                              SchoolKey.currentState!.save();
                                            }

                                            if (CGPAKey.currentState!
                                                .validate()) {
                                              CGPAKey.currentState!.save();
                                            }

                                            if (YearKey.currentState!
                                                .validate()) {
                                              YearKey.currentState!.save();
                                            }

                                            print(
                                                "Course/Degree: ${Global.Education}");
                                            print(
                                                "School/Collage/Institute: ${Global.School}");
                                            print(
                                                "School/Collage/Institute: ${Global.CGPA}");
                                            print(
                                                "Year Of Pass: ${Global.Year}");
                                          }
                                        }),
                                    ElevatedButton(
                                        onPressed: () {
                                          EducationKey.currentState!.validate();
                                          SchoolKey.currentState!.reset();
                                          CGPAKey.currentState!.validate();
                                          YearKey.currentState!.reset();

                                          EducationController.clear();
                                          SchoolController.clear();
                                          CGPAController.clear();
                                          YearController.clear();

                                          setState(() {
                                            Global.DOB = "";
                                            Global.Education = "";
                                            Global.School = "";
                                            Global.CGPA = "";
                                            Global.Year = "";
                                          });
                                        },
                                        child: const Text("Clear")),
                                  ],
                                ),
                              ],
                            )))
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
