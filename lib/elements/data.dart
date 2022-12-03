// class InputData {
//   var city, type, location, Lowsize, Hsize, Lowprice, Hprice;
//   List aminities = [];
//   void setCity(var data) {
//     this.city = data;
//   }

//   void setType(var data) {
//     this.type = data;
//   }

//   void setLocation(var data) {
//     this.location = data;
//   }

//   void setSize(var l, var h) {
//     this.Lowsize = l;
//     this.Hprice = h;
//   }

//   void setPrize(var l, var h) {
//     this.Lowprice = l;
//     this.Hprice = h;
//   }
// }

class InputData {
  // InputData({
  //   required this.data,
  //   required this.items
  // })
  var data;
  List items = [];
  void setCity(List it, var data) {
    this.data = data;
    for (int i = 0; i < it.length; i++) {
      if (data == it[i]) {
        items.add('1');
      } else {
        items.add('0');
      }
    }
  }
}
