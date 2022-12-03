import 'package:flutter/material.dart';
import 'package:rent/elements/data.dart';
import 'package:rent/elements/DropDownNew.dart';
import 'package:rent/elements/filters.dart';
import 'package:rent/screens/deatilPage.dart';
import 'package:rent/services/test-api.dart';

class searchBar extends StatefulWidget {
  searchBar({Key? key, required this.width}) : super(key: key);
  late double width;

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  //local var--------------------------------------------------------------------
  var hide = false;

  // var city = 'city';
  InputData city = InputData();
  InputData type = InputData();

  var items = ['pune', 'mumbai', 'bengaluru', 'hyderabad', 'delhi'];
  var item1;

  //functions / api calls--------------------------------------------------------------------
  //--------------------------------------------------------------------------
  Future<void> Search() async {
    print(city.data);
    print(type.data);
    bool yes = await TestAPI.testhere();
    if (yes) {
      print(TestAPI.data);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => detailPage(),
          ));
    }
  }

  //================================================================================

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: widget.width,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(10),
            width: widget.width * 0.99,
            height: 100 * 0.9,
            // color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dropDownNew(items: items, d: city, hint: 'city'),
                  SizedBox(width: 10),
                  dropDownNew(items: items, d: type, hint: 'type'),
                  SizedBox(width: 10),
                  // dropDownNew(items: items, d: type, hint: ''),
                  InkWell(
                    // onHover: (value) {
                    //   setState(() {
                    //     hide = true;
                    //   });
                    // },
                    onTap: (() {
                      setState(() {
                        hide = !hide;
                      });
                    }),
                    child: Container(
                        width: 130,
                        height: 60,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('filters')),
                  ),
                  SizedBox(width: 10),
                  Container(
                      width: 180,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: Search,
                          child: Text('search')))
                ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Visibility(
            visible: hide,
            child: Positioned(
              top: 160,
              child: Filters(),
            )),
      ],
    );
  }
}
