/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
class BHK {
  int? bHK1;
  int? bHK2;
  int? bHK3;
  int? bHK4;
  int? bHK4p;
  int? rK1;

  BHK({this.bHK1, this.bHK2, this.bHK3, this.bHK4, this.bHK4p, this.rK1});

  BHK.fromJson(Map<String, dynamic> json) {
    bHK1 = json['BHK1'];
    bHK2 = json['BHK2'];
    bHK3 = json['BHK3'];
    bHK4 = json['BHK4'];
    bHK4p = json['BHK4+'];
    rK1 = json['RK1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['BHK1'] = bHK1;
    data['BHK2'] = bHK2;
    data['BHK3'] = bHK3;
    data['BHK4'] = bHK4;
    data['BHK4+'] = bHK4p;
    data['RK1'] = rK1;
    return data;
  }
}

class FacingDir {
  int? e;
  int? n;
  int? nE;
  int? nW;
  int? s;
  int? sE;
  int? sW;
  int? w;

  FacingDir(
      {this.e, this.n, this.nE, this.nW, this.s, this.sE, this.sW, this.w});

  FacingDir.fromJson(Map<String, dynamic> json) {
    e = json['E'];
    n = json['N'];
    nE = json['NE'];
    nW = json['NW'];
    s = json['S'];
    sE = json['SE'];
    sW = json['SW'];
    w = json['W'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['E'] = e;
    data['N'] = n;
    data['NE'] = nE;
    data['NW'] = nW;
    data['S'] = s;
    data['SE'] = sE;
    data['SW'] = sW;
    data['W'] = w;
    return data;
  }
}

class Furniture {
  int? fully;
  int? not;
  int? semi;

  Furniture({this.fully, this.not, this.semi});

  Furniture.fromJson(Map<String, dynamic> json) {
    fully = json['Fully'];
    not = json['Not'];
    semi = json['Semi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Fully'] = fully;
    data['Not'] = not;
    data['Semi'] = semi;
    return data;
  }
}

class Lease {
  int? anyone;
  int? bachelore;
  int? company;
  int? family;

  Lease({this.anyone, this.bachelore, this.company, this.family});

  Lease.fromJson(Map<String, dynamic> json) {
    anyone = json['Anyone'];
    bachelore = json['Bachelore'];
    company = json['Company'];
    family = json['Family'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Anyone'] = anyone;
    data['Bachelore'] = bachelore;
    data['Company'] = company;
    data['Family'] = family;
    return data;
  }
}

class Parking {
  int? both;
  int? four;
  int? noneVal;
  int? two;

  Parking({this.both, this.four, this.noneVal, this.two});

  Parking.fromJson(Map<String, dynamic> json) {
    both = json['Both'];
    four = json['Four'];
    noneVal = json['NoneVal'];
    two = json['Two'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Both'] = both;
    data['Four'] = four;
    data['NoneVal'] = noneVal;
    data['Two'] = two;
    return data;
  }
}

class PropArr1 {
  int? gym;
  int? lift;
  int? swimming;
  int? negotiable;

  PropArr1({this.gym, this.lift, this.swimming, this.negotiable});

  PropArr1.fromJson(Map<String, dynamic> json) {
    gym = json['Gym'];
    lift = json['Lift'];
    swimming = json['Swimming'];
    negotiable = json['Negotiable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Gym'] = gym;
    data['Lift'] = lift;
    data['Swimming'] = swimming;
    data['Negotiable'] = negotiable;
    return data;
  }
}

class PropArr2 {
  int? propsize;
  int? propage;
  int? bathroom;

  PropArr2({this.propsize, this.propage, this.bathroom});

  PropArr2.fromJson(Map<String, dynamic> json) {
    propsize = json['Prop_size'];
    propage = json['Prop_age'];
    bathroom = json['Bathroom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Prop_size'] = propsize;
    data['Prop_age'] = propage;
    data['Bathroom'] = bathroom;
    return data;
  }
}

class PropArr3 {
  int? cupboard;
  int? floor;
  int? totalfloor;

  PropArr3({this.cupboard, this.floor, this.totalfloor});

  PropArr3.fromJson(Map<String, dynamic> json) {
    cupboard = json['cupboard'];
    floor = json['floor'];
    totalfloor = json['total_floor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['cupboard'] = cupboard;
    data['floor'] = floor;
    data['total_floor'] = totalfloor;
    return data;
  }
}

class PropArr4 {
  int? aC;
  int? fS;
  int? hK;
  int? intercom;
  int? internet;
  int? lift1;
  int? park;
  int? pB;
  int? pool;
  int? sC;
  int? security;
  int? gym1;
  int? club;
  int? cPA;
  int? gP;
  int? rWH;
  int? servant;
  int? sTP;
  int? vP;

  PropArr4(
      {this.aC,
      this.fS,
      this.hK,
      this.intercom,
      this.internet,
      this.lift1,
      this.park,
      this.pB,
      this.pool,
      this.sC,
      this.security,
      this.gym1,
      this.club,
      this.cPA,
      this.gP,
      this.rWH,
      this.servant,
      this.sTP,
      this.vP});

  PropArr4.fromJson(Map<String, dynamic> json) {
    aC = json['AC'];
    fS = json['FS'];
    hK = json['HK'];
    intercom = json['Intercom'];
    internet = json['Internet'];
    lift1 = json['Lift1'];
    park = json['Park'];
    pB = json['PB'];
    pool = json['Pool'];
    sC = json['SC'];
    security = json['Security'];
    gym1 = json['Gym1'];
    club = json['Club'];
    cPA = json['CPA'];
    gP = json['GP'];
    rWH = json['RWH'];
    servant = json['Servant'];
    sTP = json['STP'];
    vP = json['VP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['AC'] = aC;
    data['FS'] = fS;
    data['HK'] = hK;
    data['Intercom'] = intercom;
    data['Internet'] = internet;
    data['Lift1'] = lift1;
    data['Park'] = park;
    data['PB'] = pB;
    data['Pool'] = pool;
    data['SC'] = sC;
    data['Security'] = security;
    data['Gym1'] = gym1;
    data['Club'] = club;
    data['CPA'] = cPA;
    data['GP'] = gP;
    data['RWH'] = rWH;
    data['Servant'] = servant;
    data['STP'] = sTP;
    data['VP'] = vP;
    return data;
  }
}

class PropArr5 {
  int? ap;
  int? gC;
  int? iF;
  int? iH;
  int? balconies;

  PropArr5({this.ap, this.gC, this.iF, this.iH, this.balconies});

  PropArr5.fromJson(Map<String, dynamic> json) {
    ap = json['Ap'];
    gC = json['GC'];
    iF = json['IF'];
    iH = json['IH'];
    balconies = json['balconies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Ap'] = ap;
    data['GC'] = gC;
    data['IF'] = iF;
    data['IH'] = iH;
    data['balconies'] = balconies;
    return data;
  }
}

class Root {
  List<BHK?>? bHK;
  List<Lease?>? lease;
  List<PropArr1?>? propArr1;
  List<Furniture?>? furniture;
  List<Parking?>? parking;
  List<PropArr2?>? propArr2;
  List<FacingDir?>? facingdir;
  List<PropArr3?>? propArr3;
  List<PropArr4?>? propArr4;
  List<Water?>? water;
  List<PropArr5?>? propArr5;

  Root(
      {this.bHK,
      this.lease,
      this.propArr1,
      this.furniture,
      this.parking,
      this.propArr2,
      this.facingdir,
      this.propArr3,
      this.propArr4,
      this.water,
      this.propArr5});

  Root.fromJson(Map<String, dynamic> json) {
    if (json['BHK'] != null) {
      bHK = <BHK>[];
      json['BHK'].forEach((v) {
        bHK!.add(BHK.fromJson(v));
      });
    }
    if (json['Lease'] != null) {
      lease = <Lease>[];
      json['Lease'].forEach((v) {
        lease!.add(Lease.fromJson(v));
      });
    }
    if (json['Prop_Arr1'] != null) {
      propArr1 = <PropArr1>[];
      json['Prop_Arr1'].forEach((v) {
        propArr1!.add(PropArr1.fromJson(v));
      });
    }
    if (json['Furniture'] != null) {
      furniture = <Furniture>[];
      json['Furniture'].forEach((v) {
        furniture!.add(Furniture.fromJson(v));
      });
    }
    if (json['Parking'] != null) {
      parking = <Parking>[];
      json['Parking'].forEach((v) {
        parking!.add(Parking.fromJson(v));
      });
    }
    if (json['Prop_Arr2'] != null) {
      propArr2 = <PropArr2>[];
      json['Prop_Arr2'].forEach((v) {
        propArr2!.add(PropArr2.fromJson(v));
      });
    }
    if (json['Facing_dir'] != null) {
      facingdir = <FacingDir>[];
      json['Facing_dir'].forEach((v) {
        facingdir!.add(FacingDir.fromJson(v));
      });
    }
    if (json['Prop_Arr3'] != null) {
      propArr3 = <PropArr3>[];
      json['Prop_Arr3'].forEach((v) {
        propArr3!.add(PropArr3.fromJson(v));
      });
    }
    if (json['Prop_Arr4'] != null) {
      propArr4 = <PropArr4>[];
      json['Prop_Arr4'].forEach((v) {
        propArr4!.add(PropArr4.fromJson(v));
      });
    }
    if (json['Water'] != null) {
      water = <Water>[];
      json['Water'].forEach((v) {
        water!.add(Water.fromJson(v));
      });
    }
    if (json['Prop_Arr5'] != null) {
      propArr5 = <PropArr5>[];
      json['Prop_Arr5'].forEach((v) {
        propArr5!.add(PropArr5.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['BHK'] = BHK != null ? bHK!.map((v) => v?.toJson()).toList() : null;
    data['Lease'] =
        Lease != null ? lease!.map((v) => v?.toJson()).toList() : null;
    data['Prop_Arr1'] =
        PropArr1 != null ? propArr1!.map((v) => v?.toJson()).toList() : null;
    data['Furniture'] =
        Furniture != null ? furniture!.map((v) => v?.toJson()).toList() : null;
    data['Parking'] =
        Parking != null ? parking!.map((v) => v?.toJson()).toList() : null;
    data['Prop_Arr2'] =
        PropArr2 != null ? propArr2!.map((v) => v?.toJson()).toList() : null;
    data['Facing_dir'] =
        FacingDir != null ? facingdir!.map((v) => v?.toJson()).toList() : null;
    data['Prop_Arr3'] =
        PropArr3 != null ? propArr3!.map((v) => v?.toJson()).toList() : null;
    data['Prop_Arr4'] =
        PropArr4 != null ? propArr4!.map((v) => v?.toJson()).toList() : null;
    data['Water'] =
        Water != null ? water!.map((v) => v?.toJson()).toList() : null;
    data['Prop_Arr5'] =
        PropArr5 != null ? propArr5!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}

class Water {
  int? borewell;
  int? corporation;
  int? both;

  Water({this.borewell, this.corporation, this.both});

  Water.fromJson(Map<String, dynamic> json) {
    borewell = json['Borewell'];
    corporation = json['Corporation'];
    both = json['Both'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Borewell'] = borewell;
    data['Corporation'] = corporation;
    data['Both'] = both;
    return data;
  }
}
