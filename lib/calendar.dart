import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          alignment: Alignment.topCenter,
          color: Color(0xfff0f0f0),
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Oct",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff263064),
                            fontSize: 22,
                          ),
                          children: [
                        TextSpan(
                            text: " 2009",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))
                      ]))
                ],
              ),
              Text("Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff3e3993)
              ),),
            ],
          ),
        ),
        Positioned(
            top: 100,
            child: Container(
          height: MediaQuery.of(context).size.height-160,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 30),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildDateColumn("S",7,false),
                        buildDateColumn("M",8,false),
                        buildDateColumn("T",9,false),
                        buildDateColumn("W",10,true),
                        buildDateColumn("T",11,false),
                        buildDateColumn("F",12,false),
                        buildDateColumn("S",13,false),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(5),
                                      )
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: MediaQuery.of(context).size.width-60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(
                                          text: "07:00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.grey
                                              ),
                                            )
                                          ]
                                        )),
                                        Text("1 h 45 min",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 185,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey[300]
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Typography",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),),
                            ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        ))
      ],
    );
  }

  Container buildDateColumn(String weekDay, int date, bool isActive) {
    return Container(
      decoration: isActive ? BoxDecoration(
        color: Color(0xff402fcc),
        borderRadius: BorderRadius.circular(10)
      ) : BoxDecoration(),
                        height: 55,
                        width: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(weekDay,style: TextStyle(
                              color: Colors.grey,fontSize: 11
                            ),),
                            Text(date.toString(),style: TextStyle(
                                color: isActive ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      );
  }
}
