import 'package:flutter/material.dart';

class User{
  int id;
  int cmpid;
  String name;
  String family;
  String cmpname;
  String mobile;
  String ip;
  String pic;
  String lastlogin;
  int sex;
  String token;
  bool admin;

  User({@required this.id, @required this.cmpid, @required this.sex, @required this.name, @required this.family, @required this.cmpname, @required this.mobile, this.pic, this.lastlogin, this.ip, @required this.token, this.admin = false});

  User.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      cmpid = json['cmpid'],
      name = json['name'],
      family = json['family'],
      cmpname = json['cmpname'],
      mobile = json['mobile'],
      ip = json['ip'],
      pic = json['pic'],
      lastlogin = json['lastlogin'],
      sex = json['sex'],
      token = json['token'],
      admin = json['admin'] == 1;
}

class Raste{
  int isic;
  int old;
  int cmpid;
  String cmpname;
  String name;
  bool active;
  int kind;
  int mosavabeno;
  int pricekind;
  bool searched;
  bool showdraste;
  String token;

  String kindName(){
    if (kind==1) return "تولیدی";
    else if (kind==2) return "توزیعی";
    else if (kind==3) return "خدماتی";
    else if (kind==4) return "خدمات فنی";
    return "";
  }
  String priceName(){
    if (pricekind==1) return "الف";
    else if (pricekind==2) return "ب";
    else if (pricekind==3) return "ج";
    return "";
  }
  Raste({@required this.isic, @required this.old, @required this.name, @required this.cmpid, @required this.cmpname, this.active, this.kind, this.mosavabeno, this.pricekind, this.searched = true, this.showdraste = false});

  Raste.fromJson(Map<String, dynamic> json)
    : isic = json['isic'],
      old = json['isic'],
      cmpid = json['cmpid'],
      cmpname = json['cmpname'],
      name = json['name'],
      active = json['active'] == 1,
      kind = json['kind'],
      mosavabeno = json['mosavabeno'],
      pricekind = json['pricekind'],
      searched = true,
      showdraste = false;

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['isic'] = this.isic;
      data['old'] = this.old;
      data['cmpid'] = this.cmpid;
      data['cmpname'] = this.cmpname;
      data['name'] = this.name;
      data['active'] = this.active ? 1 : 0;
      data['kind'] = this.kind;
      data['mosavabeno'] = this.mosavabeno;
      data['pricekind'] = this.pricekind;
      data['token'] = this.token;
      return data;
  }
}

class DRaste{
  int hisic;
  int isic;
  int old;
  int cmpid;
  String cmpname;
  String name;
  bool active;
  int mosavabeno;
  bool searched;
  String token;

  DRaste({@required this.hisic, @required this.isic, @required this.old, @required this.name, @required this.cmpid, @required this.cmpname, this.active, this.mosavabeno, this.searched = true, this.token});

  DRaste.fromJson(Map<String, dynamic> json)
    : hisic = json['hisic'],
      isic = json['isic'],
      old = json['isic'],
      cmpid = json['cmpid'],
      cmpname = json['cmpname'],
      name = json['name'],
      active = json['active']==1,
      mosavabeno = json['mosavabeno'],
      searched = true;

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['hisic'] = this.hisic;
      data['isic'] = this.isic;
      data['old'] = this.old;
      data['cmpid'] = this.cmpid;
      data['cmpname'] = this.cmpname;
      data['name'] = this.name;
      data['active'] = this.active ? 1 :0;
      data['mosavabeno'] = this.mosavabeno;
      data['token'] = this.token;
      return data;
  }
}

class Company{
  int id;
  int active;
  String name;
  int sabt;
  int sabtsazman; 
  String bdate;
  String edate;
  String sabtdate;
  String lastnwid;
  String lastnwdate;
  double ecoid;
  double bimeid;
  String bimeshobe;
  double nationalid;
  String tax;
  int taxid;
  String email;
  String tel;
  String fax;
  String post;
  String note;
  String address;
  int price;
  int expire;
  bool insearchquery;
  bool showinfo;
	int cntuser;
	int cntemp;
	int cntdrt;
	int cntaddinfo;
	int cntcom;
	int cntattach;
	int cntletter;
	int cntasset;
	int cntbzr;
	int cnttcoding;

  Company({this.id, this.active=1, this.name, this.sabt=0, this.sabtsazman=0, this.bdate, this.edate, this.sabtdate, this.lastnwid="", this.lastnwdate, this.ecoid=0, this.bimeid=0, this.bimeshobe, this.nationalid=0, this.tax, this.taxid=0, this.email, this.tel, this.fax, this.post, this.note, this.address, this.price=0, this.expire=0, this.insearchquery = true, this.showinfo = false,
    this.cntuser,this.cntemp,this.cntdrt,this.cntaddinfo,this.cntcom,this.cntattach,this.cntletter,this.cntasset,this.cntbzr,this.cnttcoding});

  Company.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      active = data['active']==null ? 0 : data['active'],
      sabt = data['sabt']==null ? 0 : data['sabt'],
      sabtsazman = data['sabtsazman']==null ? 0 : data['sabtsazman'],
      lastnwid = data['lastnwid'],
      ecoid = data['ecoid']==null ? 0 : data['ecoid'],
      bimeid = data['bimeid']==null ? 0 : data['bimeid'],
      nationalid = data['nationalid']==null ? 0 : data['nationalid'],
      taxid = data['taxid']==null ? 0 : data['taxid'],
      price = data['price']==null ? 0 : data['pricekind'],
      expire = data['expire']==null ? 0 : data['expire'],
      name = data['name'],
      bdate = data['bdate'],
      edate = data['edate'],
      lastnwdate = data['lastnwdate'],
      sabtdate = data['sabtdate'],
      bimeshobe = data['bimeshobe'],
      tax = data['tax'],
      fax = data['fax'],
      tel = data['tel'],
      email = data['email'],
      note = data['note'],
      post = data['post'],
      address = data['address'],
      insearchquery = true,
      showinfo = false,
	    cntuser = data['cntuser'] ?? 0,
	    cntemp = data['cntemp'] ?? 0,
	    cntdrt = data['cntdrt'] ?? 0,
	    cntaddinfo = data['cntaddinfo'] ?? 0,
	    cntcom = data['cntcom'] ?? 0,
	    cntattach = data['cntattach'] ?? 0,
	    cntletter = data['cntletter'] ?? 0,
      cntasset = data['cntasset'] ?? 0,
      cntbzr = data['cntbzr'] ?? 0,
      cnttcoding = data['cnttcoding'] ?? 0;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['sabt'] = this.sabt;
    data['sabtsazman'] = this.sabtsazman;
    data['lastnwid'] = this.lastnwid;
    data['ecoid'] = this.ecoid;
    data['bimeid'] = this.bimeid;
    data['nationalid'] = this.nationalid;
    data['taxid'] = this.taxid;
    data['price'] = this.price;
    data['expire'] = this.expire;
    data['name'] = this.name;
    data['bdate'] = this.bdate;
    data['edate'] = this.edate;
    data['lastnwdate'] = this.lastnwdate;
    data['sabtdate'] = this.sabtdate;
    data['bimeshobe'] = this.bimeshobe;
    data['tax'] = this.tax;
    data['fax'] = this.fax;
    data['tel'] = this.tel;
    data['email'] = this.email;
    data['note'] = this.note;
    data['post'] = this.post;
    data['address'] = this.address;
    return data;
  }
}

class CompanyUser{
  int id;
  int peopid;
  String name;
  String family;
  String mobile;
  String nationalid;
  // int pic;
  bool active;
  String lastlogin;
  String lastpasschange;
  bool insearchquery;
  bool showgroups;

  CompanyUser({this.id, this.peopid, this.active, this.name, this.family, this.mobile, this.nationalid, this.lastlogin, this.lastpasschange, this.showgroups = false});

  CompanyUser.fromJson(Map<String, dynamic> data){
    this.id = data['id'];
    this.peopid = data['peopid'];
    this.active = data['active'] == 1;
    this.name = data['name'];
    this.family = data['family'];
    this.mobile = data['mobile'];
    this.nationalid = data['nationalid'];
    // this.pic = data['pic'];
    this.lastlogin = data['lastlogin'];
    this.lastpasschange = data['lastpasschange'];
    this.showgroups = false;
    this.insearchquery = true;
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['peopid'] = this.peopid;
    data['active'] = this.active ? 1 : 0;
    data['name'] = this.name;
    data['family'] = this.family;
    data['mobile'] = this.mobile;
    data['nationalid'] = this.nationalid;
    // data['pic'] = this.pic;
    data['lastlogin'] = this.lastlogin;
    data['lastpasschange'] = this.lastpasschange;
    return data;
  }

}

class CompanyUserGroups{
  int userid;
  int id;
  String name;
  bool active;

  CompanyUserGroups({this.userid, this.id, this.active, this.name});

  CompanyUserGroups.fromJson(Map<String, dynamic> data)
    : userid = data['userid'],
      id = data['id'], 
      name = data['name'], 
      active = data['active'] == 1;
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['id'] = this.id;
    data['name'] = this.name;
    data['active'] = this.active ? 1 : 0;
    return data;
  }

}

class People{
    int id;
    String name;
    String family;
    String father;
    String nationalid;
    String ss;
    String birth;
    String ssplace;
    String birthdate;
    String nationality;
    String religion;
    String mazhab;
    String reshte;
    int education;
    String english;
    int bimeno;
    int isargari;
    String isargarinesbat;
    String email;
    String tel;
    String mobile;
    String post;
    String address;
    String passport;
    int single;
    int sex;
    int military;
    String token;

  People({this.id,this.name,this.family,this.father,this.nationalid,this.ss,this.birth,this.ssplace,this.birthdate,this.nationality,this.religion,
    this.mazhab,this.reshte,this.english,this.bimeno,this.isargari,this.isargarinesbat,this.email,this.tel,this.mobile,this.post,this.address,this.passport,this.single,
    this.sex,this.military,this.education,this.token});

  People.fromJson(Map<String, dynamic> data)
    : id = data['id'],
    name = data['name'],
    family = data['family'],
    father = data['father'],
    nationalid = data['nationalid'],
    ss = data['ss'],
    birth = data['birth'],
    ssplace = data['ssplace'],
    birthdate = data['birthdate'],
    nationality = data['nationality'],
    religion = data['religion'],
    mazhab = data['mazhab'],
    english = data['english'],
    bimeno = data['bimeno'] ?? 0,
    isargari = data['isargari'],
    isargarinesbat = data['isargarinesbat'],
    email = data['email'],
    tel = data['tel'],
    mobile = data['mobile'],
    post = data['post'],
    address = data['address'],
    passport = data['passport'],
    single = data['single'],
    sex = data['sex'],
    military = data['military'],
    reshte = data['reshte'],
    education = data['education'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['family'] = this.family;
    data['father'] = this.father;
    data['nationalid'] = this.nationalid;
    data['ss'] = this.ss;
    data['birth'] = this.birth;
    data['ssplace'] = this.ssplace;
    data['birthdate'] = this.birthdate;
    data['nationality'] = this.nationality;
    data['religion'] = this.religion;
    data['mazhab'] = this.mazhab;
    data['reshte'] = this.reshte;
    data['english'] = this.english;
    data['bimeno'] = this.bimeno;
    data['isargari'] = this.isargari;
    data['isargarinesbat'] = this.isargarinesbat;
    data['email'] = this.email;
    data['tel'] = this.tel;
    data['mobile'] = this.mobile;
    data['post'] = this.post;
    data['address'] = this.address;
    data['passport'] = this.passport;
    data['single'] = this.single;
    data['sex'] = this.sex;
    data['military'] = this.military;
    data['education'] = this.education;
    data['token'] = this.token;
    return data;
  }
}

class Employee{
	int cmpid;
  int peopid;
  String name;
  String family;
  String mobile;
  String nationalid;
	int semat;
	String hdate;
	int kind;
	int cnttype;
	String cntbdate;
	String cntedate;
	int expyear;
	String note;
	int permit;
  bool showfamily;
  String token;

  Employee({this.peopid, this.name, this.family, this.mobile, this.nationalid, this.semat, this.hdate, this.kind, this.cnttype, this.cntbdate, this.cntedate, this.expyear, this.note, this.permit, this.showfamily = false, this.token});

  Employee.fromJson(Map<String, dynamic> json)
    : peopid = json['peopid'],
	    name = json['name'],
	    family = json['family'],
	    mobile = json['mobile'],
	    nationalid = json['nationalid'],
	    semat = json['semat'],
	    hdate = json['hdate'],
	    kind = json['kind'],
	    cnttype = json['cnttype'],
	    cntbdate = json['cntbdate'],
	    cntedate = json['cntedate'],
	    expyear = json['expyear'],
	    note = json['note'],
	    permit = json['permit'],
      showfamily = false;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
      json['cmpid'] = this.cmpid;
      json['peopid'] = this.peopid;
	    json['name'] = this.name;
	    json['family'] = this.family;
	    json['mobile'] = this.mobile;
	    json['nationalid'] = this.nationalid;
	    json['semat'] = this.semat;
	    json['hdate'] = this.hdate;
	    json['kind'] = this.kind;
	    json['cnttype'] = this.cnttype;
	    json['cntbdate'] = this.cntbdate;
	    json['cntedate'] = this.cntedate;
	    json['expyear'] = this.expyear;
	    json['note'] = this.note;
	    json['permit'] = this.permit;
	    json['token'] = this.token;
      return json;
  }

  String sematName(){
    switch (this.semat){
			case 1: 
        return "مشاور";
        break;
			case 2: 
        return "مدیر اجرایی";
        break;
			case 3: 
        return "بازرس";
        break;
			case 4: 
        return "حسابدار";
        break;
			case 5: 
        return "کمک حسابدار";
        break;
			case 6: 
        return "کارپرداز";
        break;
			case 7: 
        return "خدماتی";
        break;
			case 8: 
        return "کاردان اداری";
        break;
			case 9: 
        return "کارشناس اداری";
        break;
			case 10: 
        return "منشی";
        break;
			case 11: 
        return "غیره";
        break;
    }
    return "";
  }
  String kindName(){
    switch (this.kind){
			case 1: 
        return "تمام وقت";
        break;
			case 2: 
        return "نیمه وقت";
        break;
    }
    return "";
  }
  String cntTypeName(){
    switch (this.cnttype){
			case 1:
        return "شفاهی مدت دار";
        break;
			case 2:
        return "شفاهی دایم";
        break;
			case 3:
        return "کتبی موقت";
        break;
			case 4:
        return "کتبی دایم";
        break;
			case 5:
        return "سایر";
        break;
    }
    return "";
  }
}

class EmpFamily{
  int cmpid;
  int empid;
	int peopid;
  String name;
  String family;
  String mobile;
  String nationalid;
  String reshte;
  int education;
  int isargari;
	int kind;
	String job;
	String mdate;
	String note;
  String token;
  int single;

  EmpFamily({this.peopid, this.name, this.family, this.mobile, this.nationalid, this.education, this.reshte, this.isargari, this.kind, this.job, this.mdate, this.note, this.single});

  EmpFamily.fromJson(Map<String, dynamic> json)
	  : peopid = json['peopid'],
	    name = json['name'],
	    family = json['family'],
	    mobile = json['mobile'] ?? "",
	    nationalid = json['nationalid'],
      isargari = json['isargari'],
	    kind = json['kind'],
	    job = json['job'],
	    mdate = json['mdate'],
      reshte = json['reshte'],
      education = json['education'],
	    note = json['note'],
      single = json['single'];

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> json = new Map<String, dynamic>();
	    json['cmpid'] = this.cmpid;
	    json['empid'] = this.empid;
	    json['peopid'] = this.peopid;
	    json['name'] = this.name;
	    json['family'] = this.family;
	    json['mobile'] = this.mobile;
	    json['nationalid'] = this.nationalid;
	    json['isargari'] = this.isargari;
	    json['kind'] = this.kind;
	    json['job'] = this.job;
	    json['mdate'] = this.mdate;
	    json['note'] = this.note;
      json['reshte'] = this.reshte;
      json['token'] = this.token;
      json['education'] = this.education;
      return json;
  }

  String kindName(){
    switch (this.kind) {
			case 1:
        return "پدر";
        break;
			case 2:
        return "مادر";
        break;
			case 3:
        return "برادر";
        break;
			case 4:
        return "خواهر";
        break;
			case 5:
        return "همسر";
        break;
			case 6:
        return "فرزند";
        break;
    }
    return "";
  }
  String isargariName(){
    if (this.isargari == 1)
      return "دارد";
    return "ندارد";
  }
  String educationName(){
    switch (this.education) {
			case 1:
        return "زیر دیپلم";
        break;
			case 2:
        return "دیپلم";
        break;
			case 3:
        return "دانشجو";
        break;
			case 4:
        return "کاردانی";
        break;
			case 5:
        return "کارشناسی";
        break;
			case 6:
        return "کارشناسی ارشد";
        break;
			case 7:
        return "دکتری";
        break;
			case 8:
        return "فوق دکتری";
        break;
    }
    return "";
  }
}

class Director{
  int cmpid;
	int peopid;
	String name;
	String family;
	String nationalid;
	String mobile;
	int active;
	int semat;
	String etebardate;
	int etebarno;
	String begindate;
	int signright;
  bool showfamily;
  String token;

  Director({this.cmpid, this.peopid, this.name, this.family, this.nationalid, this.mobile, this.active,this.semat,this.etebardate,this.etebarno,this.begindate,this.signright, this.showfamily, this.token});

  Director.fromJson(Map<String, dynamic> json)
    :peopid = json['peopid'],
     name = json['name'],
     family = json['family'],
     nationalid= json['nationalid'],
     mobile = json['mobile'],
     active = json['active'],
     semat = json['semat'],
     etebardate = json['etebardate'],
     etebarno = json['etebarno'],
     begindate = json['begindate'],
     signright = json['signright'],
     showfamily = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['peopid'] = this.peopid;
     json['active'] = this.active;
     json['semat'] = this.semat;
     json['etebardate'] = this.etebardate;
     json['etebarno'] = this.etebarno;
     json['begindate'] = this.begindate;
     json['signright'] = this.signright;
     json['token'] = this.token;

     return json;
  }

  String sematName(){
    switch (this.semat){
			case 1: 
        return "رئیس";
        break;
			case 2: 
        return "نایب رئیس اول";
        break;
			case 3: 
        return "نایب رئیس دوم";
        break;
			case 4: 
        return "عضو";
        break;
			case 5: 
        return "خزانه دار";
        break;
			case 6: 
        return "بازرس";
        break;
			case 7: 
        return "دبیر";
        break;
    }
    return "";
  }
}

class DrtFamily{
	int cmpid;
  int drtid;
  int peopid;
	String name;
	String family;
	String father;
	String nationalid;
	String ss;
	String birth;
	String birthdate;
	String ssplace;
  int single;
	int education;
	String reshte;
	int isargari;
	int kind;
	String job;
	String mdate;
	String note;
  String token;

  DrtFamily({this.cmpid, this.drtid, this.peopid,this.name,this.family, this.father, this.nationalid, this.ss, this.birth, this.birthdate, this.ssplace, this.education, this.reshte, this.isargari, this.kind,this.job,this.mdate,this.note, this.token});

  DrtFamily.fromJson(Map<String, dynamic> json)
    : peopid = json['peopid'],
	   name = json['name'],
	   family = json['family'],
	   father = json['father'],
	   nationalid = json['nationalid'],
	   ss = json['ss'],
	   birth = json['birth'],
	   birthdate = json['birthdate'],
	   ssplace = json['ssplace'],
	   single = json['single'],
	   education = json['education'],
	   reshte = json['reshte'],
	   isargari = json['isargari'],
     kind = json['kind'],
     job = json['job'],
     mdate = json['mdate'],
     note = json['note'];

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['drtid'] = this.drtid;
     json['peopid'] = this.peopid;
     json['kind'] = this.kind;
     json['job'] = this.job;
     json['mdate'] = this.mdate;
     json['note'] = this.note;
     json['token'] = this.token;

     return json;
  }
  String kindName(){
    switch (this.kind) {
			case 1:
        return "پدر";
        break;
			case 2:
        return "مادر";
        break;
			case 3:
        return "برادر";
        break;
			case 4:
        return "خواهر";
        break;
			case 5:
        return "همسر";
        break;
			case 6:
        return "فرزند";
        break;
    }
    return "";
  }
  String isargariName(){
    if (this.isargari == 1)
      return "دارد";
    return "ندارد";
  }
  String educationName(){
    switch (this.education) {
			case 1:
        return "زیر دیپلم";
        break;
			case 2:
        return "دیپلم";
        break;
			case 3:
        return "دانشجو";
        break;
			case 4:
        return "کاردانی";
        break;
			case 5:
        return "کارشناسی";
        break;
			case 6:
        return "کارشناسی ارشد";
        break;
			case 7:
        return "دکتری";
        break;
			case 8:
        return "فوق دکتری";
        break;
    }
    return "";
  }
}

class Bank{
	int id;
  String name;
  String token;
  bool editing;

  Bank({this.id,this.name, this.token, this.editing = false});

  Bank.fromJson(Map<String, dynamic> json)
	  : id = json['id'],
  	 name = json['name'],
     editing = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
	   json['id'] = this.id;
  	 json['name'] = this.name;
  	 json['token'] = this.token;

     return json;
  }
}

class Violation{
	int id;
  String name;
  String token;
  bool editing;

  Violation({this.id,this.name, this.token, this.editing = false});

  Violation.fromJson(Map<String, dynamic> json)
	  : id = json['id'],
  	 name = json['name'],
     editing = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
	   json['id'] = this.id;
  	 json['name'] = this.name;
     json['token'] = this.token;

     return json;
  }
}

class Document{
	int id;
  String name;
  int expdate;
  String token;
  bool editing;

  Document({this.id,this.name,this.expdate = 1, this.token, this.editing = false});

  Document.fromJson(Map<String, dynamic> json)
	  : id = json['id'],
  	 name = json['name'],
  	 expdate = json['expdate'],
     editing = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
	   json['id'] = this.id;
  	 json['name'] = this.name;
     json['expdate'] = this.expdate;
     json['token'] = this.token;

     return json;
  }
}

class Gov{
	int id;
	String name;
	String family;
	String mobile;
	String tel;
	String post;
	String address;
	String note;
  String token;

  Gov({this.id,this.name,this.family,this.mobile="",this.tel="",this.post="",this.address="",this.note="", this.token});

  Gov.fromJson(Map<String, dynamic> json)
    :id = json['id'],
     name = json['name'],
     family = json['family'],
     mobile = json['mobile'],
     tel = json['tel'],
     post = json['post'],
     address = json['address'],
     note = json['note'];

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['id'] = this.id;
     json['name'] = this.name;
     json['family'] = this.family;
     json['mobile'] = this.mobile;
     json['tel'] = this.tel;
     json['post'] = this.post;
     json['address'] = this.address;
     json['note'] = this.note;
     json['token'] = this.token;

     return json;
  }
}

class AddInfo{
	int id;
	String name;
	int kind;
	bool dublicate;
  String token;
  bool edit;
  bool notes;
  bool forms;
  int notecount;
  bool insearch;

  AddInfo({this.id,this.name,this.kind=1,this.dublicate = false, this.token, this.edit = false, this.notes = false, this.forms = false, this.notecount = 0, this.insearch = true});

  AddInfo.fromJson(Map<String, dynamic> json)
    :id = json['id'],
     name = json['name'],
     kind = json['kind'],
     notecount = json['notecount'] ?? 0,
     dublicate = json['dublicate'] == 1,
     edit = false,
     notes = false,
     forms = false,
     insearch = true;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['token'] = this.token;
     json['id'] = this.id;
     json['name'] = this.name;
     json['kind'] = this.kind;
     json['dublicate'] = this.dublicate ? 1: 0;

     return json;
  }

  String kindName(){
    if (kind==1) return "حروفی";
    else if (kind==2) return "عددی";
    else if (kind==3) return "تاریخی";
    else if (kind==4) return "بله و خیر";
    return "";
  }
}

class AddInfoNote{
  int addid;
	int id;
	String note;
  String token;
  bool edit;

  AddInfoNote({this.addid,this.id,this.note, this.token, this.edit = false});

  AddInfoNote.fromJson(Map<String, dynamic> json)
    :addid = json['addid'],
     id = json['id'],
     note = json['note'],
     edit = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['addid'] = this.addid;
     json['id'] = this.id;
     json['note'] = this.note;
     json['token'] = this.token;

     return json;
  }
}

class AddInfoData{
  int addid;
  String name;
  int kind;
  String note;
  String token;
  bool edit;

  AddInfoData({this.addid,this.name,this.kind,this.note = "", this.token, this.edit = false});

  AddInfoData.fromJson(Map<String, dynamic> json)
    :addid = json['addid'],
     name = json['name'],
     kind = json['kind'],
     note = json['note'],
     edit = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['token'] = this.token;
     json['addid'] = this.addid;
     json['name'] = this.name;
     json['kind'] = this.kind;
     json['note'] = this.note;

     return json;
  }
}

class UserGroup{
  int id;
  String name;
  String token;
  bool edit;
  bool permission;
  bool users;

  UserGroup({this.id,this.name, this.edit = false, this.permission = false, this.users = false, this.token = ""});

  UserGroup.fromJson(Map<String, dynamic> json)
    :id = json['id'],
     name = json['name'],
     edit = false,
     permission = false,
     users = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['token'] = this.token;
     json['grpid'] = this.id;
     json['grpname'] = this.name;

     return json;
  }
}

class GroupPermission{
  int grpid;
  int id;
  String title;
  bool valid;
  String token;
  bool insearch;

  GroupPermission({this.grpid, this.id, this.title, this.valid, this.token, this.insearch = true});

  GroupPermission.fromJson(Map<String, dynamic> json)
    :grpid = json['grpid'],
     id = json['id'],
     title = json['title'],
     valid = json['valid'] == 1,
     insearch = true;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['token'] = this.token;
     json['grpid'] = this.grpid;
     json['prvid'] = this.id;
     json['valid'] = (this.valid ?? false) ? 1 : 0;

     return json;
  }
}

class GroupUser{
  int grpid;
  int userid;
  int cmpid;
  String cmpname;
  String family;
  String mobile;
  String username;
  String lastLogin;
  bool insearch;
  String token;
  bool valid;
  bool active;

  GroupUser({this.grpid, this.userid, this.cmpid, this.cmpname, this.family, this.mobile, this.username, this.lastLogin, this.insearch = true, this.token, this.valid, this.active});

  GroupUser.fromJson(Map<String, dynamic> json)
    :grpid = json['grpid'],
     userid = json['userid'],
     cmpid = json['cmpid'],
     cmpname = json['cmpname'],
     family = json['family'],
     mobile = json['mobile'],
     username = json['username'],
     lastLogin = json['lastlogin'],
     valid = json['valid'] == 1,
     active = json['active'] == 1,
     insearch = true;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['grpid'] = this.grpid;
     json['userid'] = this.userid;
     json['cmpname'] = this.cmpname;
     json['family'] = this.family;
     json['mobile'] = this.mobile;
     json['username'] = this.username;
     json['lastLogin'] = this.lastLogin;
     json['token'] = this.token;

     return json;
  }
}

class Committee{
  int cmpid;
  int id;
  String name;
  int kind;
  int empid;
  String empfamily;
  String token;
  bool edit;
  bool member;
  bool detail;

  Committee({this.cmpid,this.id,this.name,this.kind,this.empid,this.empfamily, this.edit = false, this.member=false, this.detail=false, this.token});

  Committee.fromJson(Map<String, dynamic> json)
    :cmpid = json['cmpid'],
     id = json['id'],
     name = json['name'],
     kind = json['kind'],
     empid = json['empid'],
     empfamily = json['empfamily'],
     edit = false,
     member = false,
     detail = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['id'] = this.id;
     json['name'] = this.name;
     json['kind'] = this.kind;
     json['empid'] = this.empid;
     json['token'] = this.token;

     return json;
  }

  String kindName(){
			if (this.kind == 1)
        return "جلسه درون سازمانی";
			if (this.kind == 2)
        return "جلسه برون سازمانی";
			if (this.kind == 3)
        return "کمیسیون بازرسی و رسیدگی به شکایات";
			if (this.kind == 4)
        return "کمیسیون حل اختلاف و تشخیص";
			if (this.kind == 5)
        return "کمیسیون امور اقتصادی";
			if (this.kind == 6)
        return "کمیسیون آموزش و پژوهش";
			if (this.kind == 7)
        return "کمیسیون بودجه و تشکیلات";
			if (this.kind == 8)
        return "کمیسیون امور اجتماعی و فرهنگی";
			if (this.kind == 9)
        return "کمیسیون رسیدگی به شکایات";
			if (this.kind == 10)
        return "کمیسیون حل اختلاف";
			if (this.kind == 11)
        return "کمیسیون فنی";
			if (this.kind == 12)
        return "کمیسیون بازرسی واحد های صنفی";
			if (this.kind == 13)
        return "کمیسیون آموزش";
      return "";
  }
}

class CommitteeMember{
  int cmpid;
  int cmtid;
  int old;
  int peopid;
  String name;
  String family;
  int semat;
  String token;
  bool edit;

  CommitteeMember({this.cmpid,this.cmtid,this.old,this.peopid,this.name,this.family,this.semat,this.token, this.edit=false});

  CommitteeMember.fromJson(Map<String, dynamic> json)
    :cmpid = json['cmpid'],
     cmtid = json['cmtid'],
     old = json['peopid'],
     peopid = json['peopid'],
     name = json['name'],
     family = json['family'],
     semat = json['semat'],
     edit = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['cmtid'] = this.cmtid;
     json['old'] = this.old ?? 0;
     json['peopid'] = this.peopid;
     json['peopid'] = this.peopid;
     json['name'] = this.name;
     json['family'] = this.family;
     json['semat'] = this.semat;
     json['token'] = this.token;

     return json;
  }

  String sematName(){
    if (this.semat == 1)
      return "رییس";
    if (this.semat == 2)
      return "نایب رییس";
    if (this.semat == 3)
      return "منشی";
    if (this.semat == 4)
      return "عضو";
    return "";
  }
}

class CommitteeDetail{
  int cmpid;
  int cmtid;
  int id;
  String title;
  String date;
  String time;
  int empid;
  String empfamily;
  String note;
  String token;
  bool edit;
  bool absent;
  bool mosavabat;

  CommitteeDetail({this.cmpid,this.cmtid,this.id,this.title,this.date,this.time,this.empid,this.empfamily,this.note,this.token, this.edit=false, this.absent=false, this.mosavabat=false});

  CommitteeDetail.fromJson(Map<String, dynamic> json)
    :cmpid = json['cmpid'],
     cmtid = json['cmtid'],
     id = json['id'],
     title = json['title'],
     date = json['date'],
     time = json['time'],
     empid = json['empid'],
     empfamily = json['empfamily'],
     note = json['note'],
     edit = false,
     absent = false,
     mosavabat = false;

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['cmtid'] = this.cmtid;
     json['id'] = this.id;
     json['title'] = this.title;
     json['date'] = this.date ?? "";
     json['time'] = this.time ?? "";
     json['empid'] = this.empid;
     json['note'] = this.note ?? "";
     json['token'] = this.token;

     return json;
  }
}

class CommitteeDetailAbsent{
  int cmpid;
  int cmtid;
  int detailid;
  int peopid;
  String peopfamily;
  String semat;
  String token;

  CommitteeDetailAbsent({this.cmpid,this.cmtid,this.detailid,this.peopid,this.peopfamily, this.token, this.semat});

  CommitteeDetailAbsent.fromJson(Map<String, dynamic> json)
    :cmpid = json['cmpid'],
     cmtid = json['cmtid'],
     detailid = json['detailid'],
     peopid = json['peopid'],
     peopfamily = json['peopfamily'],
     semat = json['semat'];

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['cmtid'] = this.cmtid;
     json['id'] = this.detailid;
     json['empid'] = this.peopid;
     json['token'] = this.token;

     return json;
  }
}

class CommitteeDetailMosavabat{
  int cmpid;
  int cmtid;
  int detailid;
  int id;
  String title;
  String vahed;
  int empid;
  String empfamily;
  int mcmpid;
  String mcmpname;
  String token;

  CommitteeDetailMosavabat({this.cmpid,this.cmtid,this.detailid,this.id,this.title, this.vahed, this.empid, this.empfamily, this.mcmpid, this.mcmpname, this.token});

  CommitteeDetailMosavabat.fromJson(Map<String, dynamic> json)
    :cmpid = json['cmpid'],
     cmtid = json['cmtid'],
     detailid = json['detailid'],
     id = json['id'],
     title = json['title'],
     vahed = json['vahed'],
     empid = json['empid'],
     empfamily = json['empfamily'],
     mcmpid = json['mcmpid'],
     mcmpname = json['mcmpname'];

  Map<String, dynamic> toJson(){
    Map<String, dynamic> json = new Map<String, dynamic>();
     json['cmpid'] = this.cmpid;
     json['cmtid'] = this.cmtid;
     json['detailid'] = this.detailid;
     json['id'] = this.id;
     json['title'] = this.title;
     json['vahed'] = this.vahed;
     json['empid'] = this.empid;
     json['mcmpid'] = this.mcmpid;
     json['token'] = this.token;

     return json;
  }
}


