import 'package:flutter/material.dart';
import 'package:resume_builder/globals.dart';

class Reference extends StatefulWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  GlobalKey<FormState> ReferenceKey = GlobalKey<FormState>();
  TextEditingController ReferenceController = TextEditingController();

  final GlobalKey<FormState> DesignationKey = GlobalKey<FormState>();
  TextEditingController DesignationController = TextEditingController();

  final GlobalKey<FormState> OrganizationKey = GlobalKey<FormState>();
  TextEditingController OrganizationController = TextEditingController();

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
                padding: const EdgeInsets.only(top: 50),
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
                      "References",
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
                        margin: const EdgeInsets.all(20),
                        height: _height * 0.566,
                        width: _width,
                        color: Colors.white,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(top: 10, left: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Reference Name",
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
                                    key: ReferenceKey,
                                    child: TextFormField(
                                      controller: ReferenceController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Reference first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.Reference = val;
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    Suresh Shah",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Designation",
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
                                    key: DesignationKey,
                                    child: TextFormField(
                                      controller: DesignationController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Designation first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.Designation = val;
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    Marketing Manager,ID-342332",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Organization/Institute",
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
                                    key: OrganizationKey,
                                    child: TextFormField(
                                      //keyboardType: TextInputType.number,
                                      controller: OrganizationController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Organization first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.Organization = val;
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        label: Text(
                                          "    Green Energy Pvt.Ltd",
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
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    ElevatedButton(
                                      child: const Text("Save"),
                                      onPressed: () {
                                        if (ReferenceKey.currentState!
                                            .validate()) {
                                          ReferenceKey.currentState!.save();

                                          if (DesignationKey.currentState!
                                              .validate()) {
                                            DesignationKey.currentState!.save();
                                          }
                                          if (OrganizationKey.currentState!
                                              .validate()) {
                                            OrganizationKey.currentState!
                                                .save();
                                          }

                                          print(
                                              "Reference Name: ${Global.Reference}");
                                          print(
                                              "Designation: ${Global.Designation}");
                                          print(
                                              "Organization/Institute: ${Global.Organization}");
                                        }
                                      },
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          ReferenceKey.currentState!.reset();
                                          DesignationKey.currentState!.reset();
                                          OrganizationKey.currentState!.reset();

                                          ReferenceController.clear();
                                          DesignationController.clear();
                                          OrganizationController.clear();

                                          setState(() {
                                            Global.Reference = "";
                                            Global.Designation = "";
                                            Global.Organization = "";
                                          });
                                        },
                                        child: const Text("Clear")),
                                    const SizedBox(
                                      width: 5,
                                    ),
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
