import 'package:flutter/material.dart';
import 'package:rent/elements/DropDownNew.dart';
import 'package:rent/elements/data.dart';
import 'package:rent/elements/rangeSlider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'package:rent/FinalObject.dart';

import '../models/Model1.dart';

class Filters extends StatefulWidget {
  Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
//==================================================
  //functions
//=============

  late FinalObject GOD;

  late Root r;
  int neg = 0;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        neg = 1;
      });
    } else {
      setState(() {
        isSwitched = false;
        neg = 0;
      });
    }
  }

  // List<String> Lease = ['AyAnyone', 'Bachelore', 'Company', 'Family'];
  // List<String> BHKlist = ['BHK1', 'BHK2', 'BHK3', 'BHK4', 'BHK4+', 'RK1'];
  // List<String> Furniture = ['Fully', 'Not', 'Semi'];
  // List<String> Parking = ['Both', 'Four', 'None', 'Two'];
  // List<String> Water = ["Borewell", "Corporation", "Both"];
  // List<String> Bulding = ["Ap", "GC", "IF", "IH"];
  // List<String> Facing_dir = ["E", "N", "NE", "NW", "S", "SE", "SW", "W"];

  void UtlimateCompilation() {
    Map<String, dynamic> data = Map<String, dynamic>();
    Map<String, dynamic> temp = Map<String, dynamic>();

    if (BHK.items.isNotEmpty) {
      for (int i = 0; i < BHKlist.length; i++) {
        temp[BHKlist[i]] = BHK.items[i];
      }
    } else if (BHK.items.isEmpty) {
      for (int i = 0; i < BHKlist.length; i++) {
        temp[BHKlist[i]] = BHK.items[i] = 0;
      }
    }
    data["BHK"] = {
      'BHK1': BHK.items[0],
      'BHK2': BHK.items[1],
      'BHK3': BHK.items[2],
      'BHK4': BHK.items[3],
      'BHK4+': BHK.items[4],
      'RK1': BHK.items[5]
    };
    temp.clear();

    //for lease-----------------------------------------------
    if (lease.items.isNotEmpty) {
      for (int i = 0; i < Lease.length; i++) {
        temp[Lease[i]] = lease.items[i];
      }
    } else if (lease.items.isEmpty) {
      for (int i = 0; i < Lease.length; i++) {
        temp[Lease[i]] = lease.items[i] = 0;
      }
    }

    data['Lease'] = {
      'AyAnyone': lease.items[0],
      'Bachelore': lease.items[1],
      'Company': lease.items[2],
      'Family': lease.items[3]
    };
    temp.clear();

    data["Prop_Arr1"] = [
      {
        "Gym": check[11],
        "Lift": check[5],
        "Swimming": check[8],
        "Negotiable": neg
      }
    ];
    //Furniture-------------------

    if (Fur.items.isNotEmpty) {
      for (int i = 0; i < Furniture.length; i++) {
        temp[Furniture[i]] = Fur.items[i];
      }
    } else if (Fur.items.isEmpty) {
      for (int i = 0; i < Furniture.length; i++) {
        temp[Furniture[i]] = Fur.items[i] = 0;
      }
    }

    data["Furniture"] = {
      'Fully': Fur.items[0],
      'Not': Fur.items[1],
      'Semi': Fur.items[2]
    };
    temp.clear();

    //Parking------------------------------------------------------

    if (Park.items.isNotEmpty) {
      for (int i = 0; i < Parking.length; i++) {
        temp[Parking[i]] = Park.items[i];
      }
    } else if (Park.items.isEmpty) {
      for (int i = 0; i < Parking.length; i++) {
        temp[Parking[i]] = Park.items[i] = 0;
      }
    }

    data["Parking"] = [
      {
        'Both': Park.items[0],
        'Four': Park.items[1],
        'None': Park.items[2],
        'Two': Park.items[3]
      }
    ];
    temp.clear();

    //Prop_Arr2------------------------------------------------------
    data["Prop_Arr2"] = [
      {
        "Prop_size": size.end as int,
        "Prop_age": pAge.end as int,
        "Bathroom": bathroom.end as int
      }
    ];

    //Facing_dir-----------------------------------------------

    if (facingDir.items.length != 0) {
      for (int i = 0; i < Facing_dir.length; i++) {
        temp[Facing_dir[i]] = facingDir.items[i];
      }
    } else if (facingDir.items.isEmpty) {
      for (int i = 0; i < Facing_dir.length; i++) {
        temp[Facing_dir[i]] = facingDir.items[i] = 0;
      }
    }

    data["Facing_dir"] = [
      {
        // "E", "N", "NE", "NW", "S

        "E": facingDir.items[0],
        "N": facingDir.items[1],
        "NE": facingDir.items[2],
        "NW": facingDir.items[3],
        "S": facingDir.items[4],
        "SE": facingDir.items[5],
        "SW": facingDir.items[6],
        "W": facingDir.items[7]
      }
    ];
    temp.clear();

    data["Prop_Arr3"] = [
      {
        "cupboard": cupbard.end as int,
        "floor": floor.end as int,
        "total_floor": Tfloor.end as int
      }
    ];

    data["Prop_Arr4"] = {
      "AC": check[0],
      "FS": check[1],
      "HK": check[2],
      "Intercom": check[3],
      "Internet": check[4],
      "Lift1": check[5],
      "Park": check[6],
      "PB": check[7],
      "Pool": check[8],
      "SC": check[9],
      "Security": check[10],
      "Gym1": check[11],
      "Club": check[12],
      "CPA": check[13],
      "GP": check[14],
      "RWH": check[15],
      "Servant": check[16],
      "STP": check[17],
      "VP": check[18]
    };

    if (water.items.isNotEmpty) {
      for (int i = 0; i < Water.length; i++) {
        temp[Water[i]] = water.items[i];
      }
    } else if (water.items.isEmpty) {
      for (int i = 0; i < Water.length; i++) {
        temp[Water[i]] = water.items[i] = 0;
      }
    }

    data["Water"] = [
      {
        "Borewell": water.items[0],
        "Corporation": water.items[1],
        "Both": water.items[2]
      }
    ];
    temp.clear();

    if (buldingType.items.isNotEmpty) {
      // for (int i = 0; i < Bulding.length; i++) {
      //   temp[Water[i]] = buldingType.items[i];
      // }
    } else if (buldingType.items.isEmpty) {
      for (int i = 0; i < Bulding.length; i++) {
        buldingType.items.add(0);
      }
    }

    data["Prop_Arr5"] = [
      {
        "Ap": buldingType.items[0],
        "GC": buldingType.items[1],
        "IF": buldingType.items[2],
        "IH": buldingType.items[3],
        "balconies": balconies.end as int
      }
    ];

    print(data);
  }

//=======================
//variables-----------------------------

  RangeValues size = RangeValues(0, 100);
  RangeValues price = RangeValues(0, 100);
  RangeValues pAge = RangeValues(0, 100);

  RangeValues floor = RangeValues(0, 100);
  RangeValues Tfloor = RangeValues(0, 100);

  RangeValues bathroom = RangeValues(0, 10);

  RangeValues cupbard = RangeValues(0, 30);
  RangeValues balconies = RangeValues(0, 100);

  bool isSwitched = false;

  InputData BHK = InputData();
  InputData lease = InputData();
  InputData Fur = InputData();
  InputData Park = InputData();
  InputData water = InputData();
  InputData buldingType = InputData();
  InputData facingDir = InputData();

  List<String> Lease = ['AyAnyone', 'Bachelore', 'Company', 'Family'];
  List<String> BHKlist = ['BHK1', 'BHK2', 'BHK3', 'BHK4', 'BHK4+', 'RK1'];
  List<String> Furniture = ['Fully', 'Not', 'Semi'];
  List<String> Parking = ['Both', 'Four', 'None', 'Two'];
  List<String> Water = ["Borewell", "Corporation", "Both"];
  List<String> Bulding = ["Ap", "GC", "IF", "IH"];
  List<String> Facing_dir = ["E", "N", "NE", "NW", "S", "SE", "SW", "W"];

  List<List<dynamic>> aminities = [
    [Icons.ac_unit, 'AC'],
    [Icons.graphic_eq, 'FS'],
    [Icons.house, 'HK'],
    [Icons.phone, 'Intercom'],
    [Icons.web, 'internet'],
    [Icons.elevator, 'lift'],
    [Icons.park, 'park'],
    [Icons.house, 'pb'],
    [Icons.pool, 'pool'],
    [Icons.house, 'sc'],
    [Icons.security, 'security'],
    [Icons.sports_gymnastics, 'gym'],
    [Icons.house, 'club'],
    [Icons.house, 'cpa'],
    [Icons.house, 'gp'],
    [Icons.house, 'rwh'],
    [Icons.man, 'servent'],
    [Icons.house, 'stp'],
    [Icons.house, 'Vp'],
  ];

  List<int> check = List.filled(19, 0);

  //------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dropDownNew(items: BHKlist, d: BHK, hint: 'BHK'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Lease, d: lease, hint: 'lease type'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Furniture, d: Fur, hint: 'Furniture'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Parking, d: Park, hint: 'Parking'),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price range'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6 * 0.5,
                    child: RangeSlider(
                        labels: RangeLabels(size.start.round().toString(),
                            size.end.round().toString()),
                        min: 0,
                        max: 100,
                        divisions: 10,
                        values: price,
                        activeColor: Colors.orange,
                        onChanged: (RangeValues value) {
                          setState(() {
                            print(value);
                            price = value;
                          });
                        }),
                  ),
                  Text('floor size'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6 * 0.5,
                    child: RangeSlider(
                        labels: RangeLabels(price.start.round().toString(),
                            price.end.round().toString()),
                        min: 0,
                        max: 100,
                        divisions: 10,
                        values: size,
                        activeColor: Colors.orange,
                        onChanged: (values) {
                          setState(() {
                            print(values.start);
                            size = values;
                          });
                        }),
                  ),
                  Text('property age'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6 * 0.5,
                    child: RangeSlider(
                        labels: RangeLabels(price.start.round().toString(),
                            price.end.round().toString()),
                        min: 0,
                        max: 100,
                        divisions: 10,
                        values: pAge,
                        activeColor: Colors.orange,
                        onChanged: (values) {
                          setState(() {
                            // print(values.start);
                            pAge = values;
                          });
                        }),
                  ),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Transform.scale(
                    scale: 1.5,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.yellow,
                      inactiveThumbColor: Colors.redAccent,
                      inactiveTrackColor: Colors.orange,
                    )),
                Text(
                  'negotialble',
                  style: TextStyle(fontSize: 20),
                )
              ]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aminities',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 19,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 3, crossAxisSpacing: 6, mainAxisSpacing: 6),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 10,
                    childAspectRatio: 6,
                    mainAxisSpacing: 15),
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 40,
                    child: CheckboxListTile(
                        secondary: Icon(aminities[index][0]),
                        title: Text(aminities[index][1]),
                        value: true ? check[index] == 1 : false,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        checkboxShape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        onChanged: (value) {
                          setState(() {
                            if (value! == true) {
                              check[index] = 1;
                            } else {
                              check[index] = 0;
                            }
                          });
                        }),
                  );
                })),
          ),
          Text('bathroom'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 * 0.5,
            child: RangeSlider(
                labels: RangeLabels(
                    size.start.round().toString(), size.end.round().toString()),
                min: 0,
                max: 10,
                divisions: 1,
                values: bathroom,
                activeColor: Colors.orange,
                onChanged: (RangeValues value) {
                  setState(() {
                    print(value);
                    bathroom = value;
                  });
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Bulding',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dropDownNew(items: Water, d: water, hint: 'water'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Bulding, d: buldingType, hint: 'lease type'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Bulding, d: Fur, hint: 'type'),
              SizedBox(
                width: 10,
              ),
              dropDownNew(items: Parking, d: Park, hint: 'Parking'),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          dropDownNew(items: Facing_dir, d: facingDir, hint: 'Direction'),
          SizedBox(
            width: 25,
          ),
          Text('floor'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 * 0.5,
            child: RangeSlider(
                labels: RangeLabels(price.start.round().toString(),
                    price.end.round().toString()),
                min: 0,
                max: 100,
                divisions: 10,
                values: floor,
                activeColor: Colors.orange,
                onChanged: (values) {
                  setState(() {
                    // print(values.start);
                    floor = values;
                  });
                }),
          ),
          Text('Total floor'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 * 0.5,
            child: RangeSlider(
                labels: RangeLabels(price.start.round().toString(),
                    price.end.round().toString()),
                min: 0,
                max: 100,
                divisions: 1,
                values: Tfloor,
                activeColor: Colors.orange,
                onChanged: (values) {
                  setState(() {
                    print(values.start);
                    Tfloor = values;
                  });
                }),
          ),
          Text('balconies'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 * 0.5,
            child: RangeSlider(
                labels: RangeLabels(price.start.round().toString(),
                    price.end.round().toString()),
                min: 0,
                max: 100,
                divisions: 10,
                values: balconies,
                activeColor: Colors.orange,
                onChanged: (values) {
                  setState(() {
                    print(values.start);
                    balconies = values;
                  });
                }),
          ),
          Text('cupboards'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 * 0.5,
            child: RangeSlider(
                labels: RangeLabels(price.start.round().toString(),
                    price.end.round().toString()),
                min: 0,
                max: 30,
                divisions: 1,
                values: cupbard,
                activeColor: Colors.orange,
                onChanged: (values) {
                  setState(() {
                    print(values.start);
                    cupbard = values;
                  });
                }),
          ),
          ElevatedButton(onPressed: UtlimateCompilation, child: Text('DONE'))
        ],
      ),
    );
  }
}

// Row(
//   children: [
//     Column(
//       children: [
//         ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return CheckboxListTile(
//               value: check[index],
//               onChanged: (value) {
//                 setState(() {
//                   check[index] = value!;
//                 });
//               },
//             );
//           },
//         ),
//       ],
//     )
//   ],
// )
