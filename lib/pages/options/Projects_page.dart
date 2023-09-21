import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final GlobalKey<FormState> ProjectTFormKey = GlobalKey<FormState>();

  final TextEditingController ProjectTitleController = TextEditingController();

  //final GlobalKey<FormState> Roles2Key = GlobalKey<FormState>();
  final TextEditingController Roles2Controller = TextEditingController();

  //final GlobalKey<FormState> Technologieskey = GlobalKey<FormState>();
  final TextEditingController TechnologiesController = TextEditingController();

  //final GlobalKey<FormState> ProjectDescriptionKey = GlobalKey<FormState>();
  final TextEditingController ProjectDescriptionController =
      TextEditingController();

  bool Cprogramming_CheckBoxVal = false;
  bool CCCprogramming_CheckBoxVal = false;
  bool Flutterprogramming_CheckBoxVal = false;

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
                      "Projects",
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
                        height: _height * 0.846,
                        width: _width,
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 10, left: 21),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Project Title",
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
                                  key: ProjectTFormKey,
                                  child: TextFormField(
                                    //keyboardType: TextInputType.datetime,
                                    controller: ProjectTitleController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter your Project Title first";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Global.ProjectTitle = val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      label: Text(
                                        "    Resume Buider App",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Technologies",
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
                                      value: Cprogramming_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          Cprogramming_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text(
                                    "C Programming",
                                    style: TextStyle(
                                        color:
                                            (Cprogramming_CheckBoxVal == false)
                                                ? Colors.grey
                                                : Colors.blueAccent),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: CCCprogramming_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          CCCprogramming_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text("C++",
                                      style: TextStyle(
                                          color: (CCCprogramming_CheckBoxVal ==
                                                  false
                                              ? Colors.grey
                                              : Colors.blueAccent)))
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: Flutterprogramming_CheckBoxVal,
                                      onChanged: (val) {
                                        setState(() {
                                          Flutterprogramming_CheckBoxVal = val!;
                                        });
                                      }),
                                  Text("Flutter",
                                      style: TextStyle(
                                          color:
                                              (Flutterprogramming_CheckBoxVal ==
                                                      false
                                                  ? Colors.grey
                                                  : Colors.blueAccent)))
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Roles",
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
                                  //keyboardType: TextInputType.datetime,
                                  controller: Roles2Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Roles first";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Roles2 = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      "   Organize Team members,Code\n "
                                      "  analysis",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Technologies",
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
                                  //keyboardType: TextInputType.datetime,
                                  controller: TechnologiesController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Technologies first";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.Technologies = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      "   5- Programming",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Project Description",
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
                                  //keyboardType: TextInputType.datetime,
                                  controller: ProjectDescriptionController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Project Description first";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.ProjectDescription = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      "   5- Programming",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                      child: const Text("Save"),
                                      onPressed: () {
                                        if (ProjectTFormKey.currentState!
                                            .validate()) {
                                          ProjectTFormKey.currentState!.save();
                                        }
                                      }),
                                  ElevatedButton(
                                      onPressed: () {
                                        ProjectTFormKey.currentState!.reset();

                                        ProjectTitleController.clear();
                                        Roles2Controller.clear();
                                        TechnologiesController.clear();
                                        ProjectDescriptionController.clear();

                                        setState(() {
                                          Global.ProjectTitle = "";
                                          Global.Roles2 = "";
                                          Global.Technologies = "";
                                          Global.ProjectDescription = "";

                                          Cprogramming_CheckBoxVal = false;
                                          CCCprogramming_CheckBoxVal = false;
                                          Flutterprogramming_CheckBoxVal =
                                              false;
                                        });
                                      },
                                      child: Text("Clear")),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
