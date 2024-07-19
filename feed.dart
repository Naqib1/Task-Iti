import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Back",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5DB075)),
              ),
              Text(
                "Feed",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Filter",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5DB075)),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 32.0),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Search',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ...List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Header",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "8m ago",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(189, 189, 189, 1)),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "He'll want to use your yacht, and I don't\n want this thing smelling like fish.",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 16.0),
                            Divider(
                              color: Color.fromRGBO(232, 232, 232, 1),
                              thickness: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/sis.jpg",
                    width: 343,
                    height: 227.98,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 3),
                  Container(
                    width: 375,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(189, 197, 205, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: 14.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(93, 176, 117, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 232, 232, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 232, 232, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 232, 232, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 232, 232, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
