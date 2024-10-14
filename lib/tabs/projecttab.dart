import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yoliday_task/Widget/common_textfield.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  TextEditingController searchController = TextEditingController();

  final List<String> pic=[
    
   "assets/images/img1.png",
   "assets/images/img2.png",
   "assets/images/img3.png",
   "assets/images/img4.png",
   "assets/images/img5.png",
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: CommonTextfield(
                controller: searchController,
                inColor: Colors.grey,
                offColor: Colors.grey,
                hintText: "Search a project",
                sIcon: Icons.search,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemExtent: 150,
                itemCount: pic.length,
                itemBuilder: (context, index) {
                  return Stack(
                      children: [Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:Border.all(color: Colors.grey,width: 3)),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  pic[index],
                                  fit: BoxFit.cover,),
                              ),
                              SizedBox(width: 10,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Kemampuan Merangkum",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900)),
                                  Text("Tulisan",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900)),
                                  Text("BAHASA SUNDA",style: TextStyle(fontSize: 14)),
                                  Text("Quleh Ai-Baiql Samaan",style: TextStyle(fontSize: 12),)
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 80.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(top: .0),
                                      child: Container(
                                        height: 40,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.yellow,
                                        ),
                                        child: Center(child: Text("A",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                      ),
                                    ),
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      )
                      ]

                  );
                },
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

