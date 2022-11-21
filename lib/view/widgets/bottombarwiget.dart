import 'package:flutter/material.dart';

class bottomwidget extends StatefulWidget {
  const bottomwidget({
    super.key,
  });

  @override
  State<bottomwidget> createState() => _bottomwidgetState();
}

class _bottomwidgetState extends State<bottomwidget> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: BottomAppBar(
        elevation: 0.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: (() {
                    setState(() {
                      currentpage = 0;
                    });
                  }),
                  icon: Image.asset('assets/icons8-buying-96.png'),
                  color: currentpage == 0
                      ? Color.fromARGB(255, 44, 167, 97)
                      : Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: currentpage == 0
                          ? Color.fromARGB(255, 44, 167, 97)
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (() {
                    setState(() {
                      currentpage = 1;
                    });
                  }),
                  icon: Icon(Icons.favorite_border_outlined),
                  color: currentpage == 1
                      ? Color.fromARGB(255, 44, 167, 97)
                      : Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: currentpage == 1
                          ? Color.fromARGB(255, 44, 167, 97)
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.add_box,
                      size: 45,
                    ),
                    color: Color.fromARGB(255, 44, 167, 97)),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  '   Add',
                  style: TextStyle(
                      color: Color.fromARGB(255, 44, 167, 97),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (() {
                    setState(() {
                      currentpage = 2;
                    });
                  }),
                  icon: Icon(Icons.chat_bubble_outline),
                  color: currentpage == 2
                      ? Color.fromARGB(255, 44, 167, 97)
                      : Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: currentpage == 2
                          ? Color.fromARGB(255, 44, 167, 97)
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (() {
                    setState(() {
                      currentpage = 3;
                    });
                  }),
                  icon: Icon(Icons.person_outline),
                  color: currentpage == 3
                      ? Color.fromARGB(255, 44, 167, 97)
                      : Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: currentpage == 3
                          ? Color.fromARGB(255, 44, 167, 97)
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
