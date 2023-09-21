import 'package:flutter/material.dart';

class ResumeWorkSpace extends StatefulWidget {
  const ResumeWorkSpace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkSpace> createState() => _ResumeWorkSpaceState();
}

class _ResumeWorkSpaceState extends State<ResumeWorkSpace> {
  List<Map<String, dynamic>> allData = [
    {
      'id': 1,
      'icon': 'assets/icons/contact_detail-removebg-preview (1).png',
      'text': "Contact info",
      'page': 'ContactInfo',
    },
    {
      'id': 2,
      'icon': 'assets/icons/briefcase.png',
      'text': "Carrier Objective",
      'page': 'Carrier_Objective',
    },
    {
      'id': 3,
      'icon': 'assets/icons/user.png',
      'text': "Personal Details",
      'page': "Personal_details",
    },
    {
      'id': 4,
      'icon': 'assets/icons/graduation-cap.png',
      'text': "Education",
      'page': "Education",
    },
    {
      'id': 5,
      'icon': 'assets/icons/logical-thinking.png',
      'text': "Experiences",
      'page': "Experience",
    },
    {
      'id': 6,
      'icon': 'assets/icons/certificate.png',
      'text': "Technical Skills",
      'page': "Technical_skills",
    },
    {
      'id': 7,
      'icon': 'assets/icons/open-book.png',
      'text': "Interest/Hobbies",
      'page': "Interest_hobbis",
    },
    {
      'id': 8,
      'icon': 'assets/icons/project-management.png',
      'text': "Projects",
      'page': "Projects",
    },
    {
      'id': 9,
      'icon': 'assets/icons/project-management.png',
      'text': "Achievements",
      'page': "Achievements",
    },
    {
      'id': 10,
      'icon': 'assets/icons/handshake.png',
      'text': "References",
      'page': "Reference",
    },
    {
      'id': 11,
      'icon': 'assets/icons/declaration.png',
      'text': "Declarations",
      'page': "Declaration",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('PDF_Page');
              },
              icon: const Icon(Icons.picture_as_pdf))
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: const Text(
                "Build Option",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: allData
                    .map(
                      (e) => Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(e['page']);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Image.asset(
                                    e['icon'],
                                    scale: 13,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    e['text'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
