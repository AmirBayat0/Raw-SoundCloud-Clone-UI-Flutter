import 'package:flutter/material.dart';

class RepetitiousListView extends StatelessWidget {
  const RepetitiousListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
          width: currentWidth,
          height: currentHeight / 3.6,
          // color: Colors.red,
          child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  width: currentWidth / 2.5,
                  
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Container(
                        width: currentWidth / 2.5,
                        height: currentHeight / 4.8,
                        // color: Colors.green,
                        child: Center(
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 3,
                                right: 3,
                                child: Container(
                                  width: 125,
                                  height: 125,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 134, 134, 134)),
                                      color:
                                          Color.fromARGB(255, 200, 200, 200),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              Positioned(
                                bottom: 9,
                                right: 9,
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 134, 134, 134)),
                                      color:
                                          Color.fromARGB(255, 200, 200, 200),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                right: 16,
                                child: Container(
                                  width: 135,
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name of artist • song',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          Text('Related tracks',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.grey),),
                        ],
                      )
                    ],
                  ),
                );
              }),
        );
  }
}