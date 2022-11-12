class FishermanModel {
  bool? status;
  String? msg;
  Data? data;

  FishermanModel({this.status, this.msg, this.data});

  FishermanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? formId;
  String? status;
  String? permanentPostOffice;
  String? fishermanNameBng;
  String? fishermanNameEng;
  String? nationalIdNo;
  String? gender;
  String? mothersName;
  String? fathersName;
  Null? spouseName;
  String? dateOfBirth;
  Null? mobile;
  String? permanentDivision;
  String? permanentDistrict;
  String? permanentUpazilla;
  String? permanentMuniciplaity;
  String? permanentUnion;
  String? permanentVillage;
  String? permenentPostOffice;
  String? placeOfBirth;
  String? religion;
  String? education;
  String? maritalStaus;
  String? totalFamilyMember;
  String? numberOfSpouse;
  String? numberOfMother;
  String? numberOfFather;
  String? numberOfDaughter;
  Null? numberOfSon;
  String? nationality;
  String? presentDivision;
  String? presentDistrict;
  String? presentUpazilla;
  String? presentMunicipality;
  String? presentUnion;
  String? presentVillage;
  String? presentPostOffice;
  String? timeOfFishing;
  String? typeOfFishing;
  Null? groupMember;
  String? ownerOfNet;
  String? lengthOfNet;
  String? widthOfNet;
  String? priceOfNet;
  Null? sourceOfPurchaseOfNet;
  String? typeOfVessel;
  String? ownerOfVessel;
  Null? lengthOfVessels;
  Null? widthOfVessels;
  Null? heightOfVessels;
  Null? priceOfVessels;
  String? typeOfEmploymentonVessel;
  String? mainProfession;
  Null? subProfession;
  String? annualIncome;
  String? fishermenYearlyLoan;
  String? fishermenYearlySaving;
  String? fishermenDangerPeriodofLiving;

  Data(
      {this.formId,
      this.status,
      this.permanentPostOffice,
      this.fishermanNameBng,
      this.fishermanNameEng,
      this.nationalIdNo,
      this.gender,
      this.mothersName,
      this.fathersName,
      this.spouseName,
      this.dateOfBirth,
      this.mobile,
      this.permanentDivision,
      this.permanentDistrict,
      this.permanentUpazilla,
      this.permanentMuniciplaity,
      this.permanentUnion,
      this.permanentVillage,
      this.permenentPostOffice,
      this.placeOfBirth,
      this.religion,
      this.education,
      this.maritalStaus,
      this.totalFamilyMember,
      this.numberOfSpouse,
      this.numberOfMother,
      this.numberOfFather,
      this.numberOfDaughter,
      this.numberOfSon,
      this.nationality,
      this.presentDivision,
      this.presentDistrict,
      this.presentUpazilla,
      this.presentMunicipality,
      this.presentUnion,
      this.presentVillage,
      this.presentPostOffice,
      this.timeOfFishing,
      this.typeOfFishing,
      this.groupMember,
      this.ownerOfNet,
      this.lengthOfNet,
      this.widthOfNet,
      this.priceOfNet,
      this.sourceOfPurchaseOfNet,
      this.typeOfVessel,
      this.ownerOfVessel,
      this.lengthOfVessels,
      this.widthOfVessels,
      this.heightOfVessels,
      this.priceOfVessels,
      this.typeOfEmploymentonVessel,
      this.mainProfession,
      this.subProfession,
      this.annualIncome,
      this.fishermenYearlyLoan,
      this.fishermenYearlySaving,
      this.fishermenDangerPeriodofLiving});

  Data.fromJson(Map<String, dynamic> json) {
    formId = json['formId'];
    status = json['status'];
    permanentPostOffice = json['permanentPostOffice'];
    fishermanNameBng = json['fishermanNameBng'];
    fishermanNameEng = json['fishermanNameEng'];
    nationalIdNo = json['nationalIdNo'];
    gender = json['gender'];
    mothersName = json['mothersName'];
    fathersName = json['fathersName'];
    spouseName = json['spouseName'];
    dateOfBirth = json['dateOfBirth'];
    mobile = json['mobile'];
    permanentDivision = json['permanentDivision'];
    permanentDistrict = json['permanentDistrict'];
    permanentUpazilla = json['permanentUpazilla'];
    permanentMuniciplaity = json['permanentMuniciplaity'];
    permanentUnion = json['permanentUnion'];
    permanentVillage = json['permanentVillage'];
    permenentPostOffice = json['permenentPostOffice'];
    placeOfBirth = json['placeOfBirth'];
    religion = json['religion'];
    education = json['education'];
    maritalStaus = json['maritalStaus'];
    totalFamilyMember = json['totalFamilyMember'];
    numberOfSpouse = json['numberOfSpouse'];
    numberOfMother = json['numberOfMother'];
    numberOfFather = json['numberOfFather'];
    numberOfDaughter = json['numberOfDaughter'];
    numberOfSon = json['numberOfSon'];
    nationality = json['nationality'];
    presentDivision = json['presentDivision'];
    presentDistrict = json['presentDistrict'];
    presentUpazilla = json['presentUpazilla'];
    presentMunicipality = json['presentMunicipality'];
    presentUnion = json['presentUnion'];
    presentVillage = json['presentVillage'];
    presentPostOffice = json['presentPostOffice'];
    timeOfFishing = json['timeOfFishing'];
    typeOfFishing = json['typeOfFishing'];
    groupMember = json['groupMember'];
    ownerOfNet = json['ownerOfNet'];
    lengthOfNet = json['lengthOfNet'];
    widthOfNet = json['widthOfNet'];
    priceOfNet = json['priceOfNet'];
    sourceOfPurchaseOfNet = json['sourceOfPurchaseOfNet'];
    typeOfVessel = json['typeOfVessel'];
    ownerOfVessel = json['ownerOfVessel'];
    lengthOfVessels = json['lengthOfVessels'];
    widthOfVessels = json['widthOfVessels'];
    heightOfVessels = json['heightOfVessels'];
    priceOfVessels = json['priceOfVessels'];
    typeOfEmploymentonVessel = json['typeOfEmploymentonVessel'];
    mainProfession = json['mainProfession'];
    subProfession = json['subProfession'];
    annualIncome = json['annualIncome'];
    fishermenYearlyLoan = json['fishermenYearlyLoan'];
    fishermenYearlySaving = json['fishermenYearlySaving'];
    fishermenDangerPeriodofLiving = json['fishermenDangerPeriodofLiving'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['formId'] = this.formId;
    data['status'] = this.status;
    data['permanentPostOffice'] = this.permanentPostOffice;
    data['fishermanNameBng'] = this.fishermanNameBng;
    data['fishermanNameEng'] = this.fishermanNameEng;
    data['nationalIdNo'] = this.nationalIdNo;
    data['gender'] = this.gender;
    data['mothersName'] = this.mothersName;
    data['fathersName'] = this.fathersName;
    data['spouseName'] = this.spouseName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['mobile'] = this.mobile;
    data['permanentDivision'] = this.permanentDivision;
    data['permanentDistrict'] = this.permanentDistrict;
    data['permanentUpazilla'] = this.permanentUpazilla;
    data['permanentMuniciplaity'] = this.permanentMuniciplaity;
    data['permanentUnion'] = this.permanentUnion;
    data['permanentVillage'] = this.permanentVillage;
    data['permenentPostOffice'] = this.permenentPostOffice;
    data['placeOfBirth'] = this.placeOfBirth;
    data['religion'] = this.religion;
    data['education'] = this.education;
    data['maritalStaus'] = this.maritalStaus;
    data['totalFamilyMember'] = this.totalFamilyMember;
    data['numberOfSpouse'] = this.numberOfSpouse;
    data['numberOfMother'] = this.numberOfMother;
    data['numberOfFather'] = this.numberOfFather;
    data['numberOfDaughter'] = this.numberOfDaughter;
    data['numberOfSon'] = this.numberOfSon;
    data['nationality'] = this.nationality;
    data['presentDivision'] = this.presentDivision;
    data['presentDistrict'] = this.presentDistrict;
    data['presentUpazilla'] = this.presentUpazilla;
    data['presentMunicipality'] = this.presentMunicipality;
    data['presentUnion'] = this.presentUnion;
    data['presentVillage'] = this.presentVillage;
    data['presentPostOffice'] = this.presentPostOffice;
    data['timeOfFishing'] = this.timeOfFishing;
    data['typeOfFishing'] = this.typeOfFishing;
    data['groupMember'] = this.groupMember;
    data['ownerOfNet'] = this.ownerOfNet;
    data['lengthOfNet'] = this.lengthOfNet;
    data['widthOfNet'] = this.widthOfNet;
    data['priceOfNet'] = this.priceOfNet;
    data['sourceOfPurchaseOfNet'] = this.sourceOfPurchaseOfNet;
    data['typeOfVessel'] = this.typeOfVessel;
    data['ownerOfVessel'] = this.ownerOfVessel;
    data['lengthOfVessels'] = this.lengthOfVessels;
    data['widthOfVessels'] = this.widthOfVessels;
    data['heightOfVessels'] = this.heightOfVessels;
    data['priceOfVessels'] = this.priceOfVessels;
    data['typeOfEmploymentonVessel'] = this.typeOfEmploymentonVessel;
    data['mainProfession'] = this.mainProfession;
    data['subProfession'] = this.subProfession;
    data['annualIncome'] = this.annualIncome;
    data['fishermenYearlyLoan'] = this.fishermenYearlyLoan;
    data['fishermenYearlySaving'] = this.fishermenYearlySaving;
    data['fishermenDangerPeriodofLiving'] = this.fishermenDangerPeriodofLiving;
    return data;
  }
}