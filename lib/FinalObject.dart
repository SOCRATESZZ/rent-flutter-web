import 'dart:convert';

class FinalObject {
  FinalObject({
    required this.Lease,
    required this.BHK,
    required this.PropArr1,
    required this.Furniture,
    required this.Parking,
    required this.PropArr2,
    required this.FacingDir,
    required this.PropArr3,
    required this.PropArr4,
    required this.Water,
    required this.PropArr5,
  });
  late final BHK;
  late final Lease;
  late final PropArr1;
  late final Furniture;
  late final Parking;
  late final PropArr2;
  late final FacingDir;
  late final PropArr3;
  late final PropArr4;
  late final Water;
  late final PropArr5;

  FinalObject.fromJson(Map<String, dynamic> json) {
    BHK = List.from(json['BHK']).map((e) => BHK.fromJson(e)).toList();
    PropArr1 =
        List.from(json['Prop_Arr1']).map((e) => PropArr1.fromJson(e)).toList();
    Furniture =
        List.from(json['Furniture']).map((e) => Furniture.fromJson(e)).toList();
    Parking =
        List.from(json['Parking']).map((e) => Parking.fromJson(e)).toList();
    PropArr2 =
        List.from(json['Prop_Arr2']).map((e) => PropArr2.fromJson(e)).toList();
    FacingDir = List.from(json['Facing_dir'])
        .map((e) => FacingDir.fromJson(e))
        .toList();
    PropArr3 =
        List.from(json['Prop_Arr3']).map((e) => PropArr3.fromJson(e)).toList();
    PropArr4 =
        List.from(json['Prop_Arr4']).map((e) => PropArr4.fromJson(e)).toList();
    Water = List.from(json['Water']).map((e) => Water.fromJson(e)).toList();
    PropArr5 =
        List.from(json['Prop_Arr5']).map((e) => PropArr5.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['BHK'] = BHK.map((e) => e.toJson()).toList();
    _data['Lease'] = Lease.map((e) => e.toJson()).toList();
    _data['Prop_Arr1'] = PropArr1.map((e) => e.toJson()).toList();
    _data['Furniture'] = Furniture.map((e) => e.toJson()).toList();
    _data['Parking'] = Parking.map((e) => e.toJson()).toList();
    _data['Prop_Arr2'] = PropArr2.map((e) => e.toJson()).toList();
    _data['Facing_dir'] = FacingDir.map((e) => e.toJson()).toList();
    _data['Prop_Arr3'] = PropArr3.map((e) => e.toJson()).toList();
    _data['Prop_Arr4'] = PropArr4.map((e) => e.toJson()).toList();
    _data['Water'] = Water.map((e) => e.toJson()).toList();
    _data['Prop_Arr5'] = PropArr5.map((e) => e.toJson()).toList();
    return _data;
  }
}

class BHK {
  BHK({
    required this.BHK1,
    required this.BHK2,
    required this.BHK3,
    required this.BHK4,
    required this.BHK4p,
    required this.RK1,
  });
  late final int BHK1;
  late final int BHK2;
  late final int BHK3;
  late final int BHK4;
  late final int BHK4p;
  late final int RK1;

  BHK.fromJson(Map<String, dynamic> json) {
    BHK1 = json['BHK1'];
    BHK2 = json['BHK2'];
    BHK3 = json['BHK3'];
    BHK4 = json['BHK4'];
    BHK4p = json['BHK4+'];
    RK1 = json['RK1'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['BHK1'] = BHK1;
    _data['BHK2'] = BHK2;
    _data['BHK3'] = BHK3;
    _data['BHK4'] = BHK4;
    _data['BHK4+'] = BHK4p;
    _data['RK1'] = RK1;
    return _data;
  }
}

class Lease {
  Lease({
    required this.Anyone,
    required this.Bachelore,
    required this.Company,
    required this.Family,
  });
  late final int Anyone;
  late final int Bachelore;
  late final int Company;
  late final int Family;

  Lease.fromJson(Map<String, dynamic> json) {
    Anyone = json['Anyone'];
    Bachelore = json['Bachelore'];
    Company = json['Company'];
    Family = json['Family'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Anyone'] = Anyone;
    _data['Bachelore'] = Bachelore;
    _data['Company'] = Company;
    _data['Family'] = Family;
    return _data;
  }
}

class PropArr1 {
  PropArr1({
    required this.Gym,
    required this.Lift,
    required this.Swimming,
    required this.Negotiable,
  });
  late final int Gym;
  late final int Lift;
  late final int Swimming;
  late final int Negotiable;

  PropArr1.fromJson(Map<String, dynamic> json) {
    Gym = json['Gym'];
    Lift = json['Lift'];
    Swimming = json['Swimming'];
    Negotiable = json['Negotiable'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Gym'] = Gym;
    _data['Lift'] = Lift;
    _data['Swimming'] = Swimming;
    _data['Negotiable'] = Negotiable;
    return _data;
  }
}

class Furniture {
  Furniture({
    required this.Fully,
    required this.Not,
    required this.Semi,
  });
  late final int Fully;
  late final int Not;
  late final int Semi;

  Furniture.fromJson(Map<String, dynamic> json) {
    Fully = json['Fully'];
    Not = json['Not'];
    Semi = json['Semi'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Fully'] = Fully;
    _data['Not'] = Not;
    _data['Semi'] = Semi;
    return _data;
  }
}

class Parking {
  Parking({
    required this.Both,
    required this.Four,
    required this.NoneVal,
    required this.Two,
  });
  late final int Both;
  late final int Four;
  late final int NoneVal;
  late final int Two;

  Parking.fromJson(Map<String, dynamic> json) {
    Both = json['Both'];
    Four = json['Four'];
    NoneVal = json['NoneVal'];
    Two = json['Two'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Both'] = Both;
    _data['Four'] = Four;
    _data['NoneVal'] = NoneVal;
    _data['Two'] = Two;
    return _data;
  }
}

class PropArr2 {
  PropArr2({
    required this.PropSize,
    required this.PropAge,
    required this.Bathroom,
  });
  late final int PropSize;
  late final int PropAge;
  late final int Bathroom;

  PropArr2.fromJson(Map<String, dynamic> json) {
    PropSize = json['Prop_size'];
    PropAge = json['Prop_age'];
    Bathroom = json['Bathroom'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Prop_size'] = PropSize;
    _data['Prop_age'] = PropAge;
    _data['Bathroom'] = Bathroom;
    return _data;
  }
}

class FacingDir {
  FacingDir({
    required this.E,
    required this.N,
    required this.NE,
    required this.NW,
    required this.S,
    required this.SE,
    required this.SW,
    required this.W,
  });
  late final int E;
  late final int N;
  late final int NE;
  late final int NW;
  late final int S;
  late final int SE;
  late final int SW;
  late final int W;

  FacingDir.fromJson(Map<String, dynamic> json) {
    E = json['E'];
    N = json['N'];
    NE = json['NE'];
    NW = json['NW'];
    S = json['S'];
    SE = json['SE'];
    SW = json['SW'];
    W = json['W'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['E'] = E;
    _data['N'] = N;
    _data['NE'] = NE;
    _data['NW'] = NW;
    _data['S'] = S;
    _data['SE'] = SE;
    _data['SW'] = SW;
    _data['W'] = W;
    return _data;
  }
}

class PropArr3 {
  PropArr3({
    required this.cupboard,
    required this.floor,
    required this.totalFloor,
  });
  late final int cupboard;
  late final int floor;
  late final int totalFloor;

  PropArr3.fromJson(Map<String, dynamic> json) {
    cupboard = json['cupboard'];
    floor = json['floor'];
    totalFloor = json['total_floor'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cupboard'] = cupboard;
    _data['floor'] = floor;
    _data['total_floor'] = totalFloor;
    return _data;
  }
}

class PropArr4 {
  PropArr4({
    required this.AC,
    required this.FS,
    required this.HK,
    required this.Intercom,
    required this.Internet,
    required this.Lift1,
    required this.Park,
    required this.PB,
    required this.Pool,
    required this.SC,
    required this.Security,
    required this.Gym1,
    required this.Club,
    required this.CPA,
    required this.GP,
    required this.RWH,
    required this.Servant,
    required this.STP,
    required this.VP,
  });
  late final int AC;
  late final int FS;
  late final int HK;
  late final int Intercom;
  late final int Internet;
  late final int Lift1;
  late final int Park;
  late final int PB;
  late final int Pool;
  late final int SC;
  late final int Security;
  late final int Gym1;
  late final int Club;
  late final int CPA;
  late final int GP;
  late final int RWH;
  late final int Servant;
  late final int STP;
  late final int VP;

  PropArr4.fromJson(Map<String, dynamic> json) {
    AC = json['AC'];
    FS = json['FS'];
    HK = json['HK'];
    Intercom = json['Intercom'];
    Internet = json['Internet'];
    Lift1 = json['Lift1'];
    Park = json['Park'];
    PB = json['PB'];
    Pool = json['Pool'];
    SC = json['SC'];
    Security = json['Security'];
    Gym1 = json['Gym1'];
    Club = json['Club'];
    CPA = json['CPA'];
    GP = json['GP'];
    RWH = json['RWH'];
    Servant = json['Servant'];
    STP = json['STP'];
    VP = json['VP'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['AC'] = AC;
    _data['FS'] = FS;
    _data['HK'] = HK;
    _data['Intercom'] = Intercom;
    _data['Internet'] = Internet;
    _data['Lift1'] = Lift1;
    _data['Park'] = Park;
    _data['PB'] = PB;
    _data['Pool'] = Pool;
    _data['SC'] = SC;
    _data['Security'] = Security;
    _data['Gym1'] = Gym1;
    _data['Club'] = Club;
    _data['CPA'] = CPA;
    _data['GP'] = GP;
    _data['RWH'] = RWH;
    _data['Servant'] = Servant;
    _data['STP'] = STP;
    _data['VP'] = VP;
    return _data;
  }
}

class Water {
  Water({
    required this.Borewell,
    required this.Corporation,
    required this.Both,
  });
  late final int Borewell;
  late final int Corporation;
  late final int Both;

  Water.fromJson(Map<String, dynamic> json) {
    Borewell = json['Borewell'];
    Corporation = json['Corporation'];
    Both = json['Both'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Borewell'] = Borewell;
    _data['Corporation'] = Corporation;
    _data['Both'] = Both;
    return _data;
  }
}

class PropArr5 {
  PropArr5({
    required this.Ap,
    required this.GC,
    required this.IF,
    required this.IH,
    required this.balconies,
  });
  late final int Ap;
  late final int GC;
  late final int IF;
  late final int IH;
  late final int balconies;

  PropArr5.fromJson(Map<String, dynamic> json) {
    Ap = json['Ap'];
    GC = json['GC'];
    IF = json['IF'];
    IH = json['IH'];
    balconies = json['balconies'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Ap'] = Ap;
    _data['GC'] = GC;
    _data['IF'] = IF;
    _data['IH'] = IH;
    _data['balconies'] = balconies;
    return _data;
  }
}
