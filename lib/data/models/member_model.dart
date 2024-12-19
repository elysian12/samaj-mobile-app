// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:patel_samaj_app/data/models/occupation_model.dart';

class Member {
  String id;
  String familyId; // New field for family ID
  String name;
  String nameGujarati;
  String fatherOrHusbandName;
  String fatherOrHusbandNameGujarati;
  String grandfatherOrFatherInLawName;
  String grandfatherOrFatherInLawNameGujarati;
  String surname;
  String surnameGujarati;
  String familySakh;
  String familySakhGujarati;
  String nativeVillage;
  DateTime birthDate;
  String gender;
  String mosalVillage;
  String maternalVillage;
  String mobileNumber;
  String email;
  String bloodGroup;
  String pragatiMandal;
  String pragatiMandalGujarati;
  String city;
  String cityGujarati;
  String country;
  String countryGujarati;
  String maritalStatus;
  String education;
  String educationDetail;
  List<String> residentAddresses;
  List<MemberOccupationModel> occupations;
  bool isPlanningToGetMarried;
  double height;
  double weight;
  String skinColor;
  String hobbies;
  String physicalStatus;
  String selfIncome;
  String aboutSelf;
  String expectations;
  List<FamilyMember> familyMembers;
  Permission permissions;
  bool isAdmin;
  bool isSuperAdmin;
  bool livingInNativePlace;

  Member({
    required this.id,
    required this.familyId,
    required this.name,
    required this.nameGujarati,
    required this.fatherOrHusbandName,
    required this.fatherOrHusbandNameGujarati,
    required this.grandfatherOrFatherInLawName,
    required this.grandfatherOrFatherInLawNameGujarati,
    required this.surname,
    required this.surnameGujarati,
    required this.familySakh,
    required this.familySakhGujarati,
    required this.nativeVillage,
    required this.birthDate,
    required this.gender,
    required this.mosalVillage,
    required this.maternalVillage,
    required this.mobileNumber,
    required this.email,
    required this.bloodGroup,
    required this.pragatiMandal,
    required this.pragatiMandalGujarati,
    required this.city,
    required this.cityGujarati,
    required this.country,
    required this.countryGujarati,
    required this.maritalStatus,
    required this.education,
    required this.educationDetail,
    required this.residentAddresses,
    required this.occupations,
    required this.isPlanningToGetMarried,
    required this.height,
    required this.weight,
    required this.skinColor,
    required this.hobbies,
    required this.physicalStatus,
    required this.selfIncome,
    required this.aboutSelf,
    required this.expectations,
    required this.familyMembers,
    required this.permissions,
    required this.isAdmin,
    required this.isSuperAdmin,
    required this.livingInNativePlace,
  });

  Member copyWith({
    String? id,
    String? familyId,
    String? name,
    String? nameGujarati,
    String? fatherOrHusbandName,
    String? fatherOrHusbandNameGujarati,
    String? grandfatherOrFatherInLawName,
    String? grandfatherOrFatherInLawNameGujarati,
    String? surname,
    String? surnameGujarati,
    String? familySakh,
    String? familySakhGujarati,
    String? nativeVillage,
    DateTime? birthDate,
    String? gender,
    String? mosalVillage,
    String? maternalVillage,
    String? mobileNumber,
    String? email,
    String? bloodGroup,
    String? pragatiMandal,
    String? pragatiMandalGujarati,
    String? city,
    String? cityGujarati,
    String? country,
    String? countryGujarati,
    String? maritalStatus,
    String? education,
    String? educationDetail,
    List<String>? residentAddresses,
    List<MemberOccupationModel>? occupations,
    bool? isPlanningToGetMarried,
    double? height,
    double? weight,
    String? skinColor,
    String? hobbies,
    String? physicalStatus,
    String? selfIncome,
    String? aboutSelf,
    String? expectations,
    List<FamilyMember>? familyMembers,
    Permission? permissions,
    bool? isAdmin,
    bool? isSuperAdmin,
    bool? livingInNativePlace,
  }) {
    return Member(
      id: id ?? this.id,
      familyId: familyId ?? this.familyId,
      name: name ?? this.name,
      nameGujarati: nameGujarati ?? this.nameGujarati,
      fatherOrHusbandName: fatherOrHusbandName ?? this.fatherOrHusbandName,
      fatherOrHusbandNameGujarati: fatherOrHusbandNameGujarati ?? this.fatherOrHusbandNameGujarati,
      grandfatherOrFatherInLawName: grandfatherOrFatherInLawName ?? this.grandfatherOrFatherInLawName,
      grandfatherOrFatherInLawNameGujarati: grandfatherOrFatherInLawNameGujarati ?? this.grandfatherOrFatherInLawNameGujarati,
      surname: surname ?? this.surname,
      surnameGujarati: surnameGujarati ?? this.surnameGujarati,
      familySakh: familySakh ?? this.familySakh,
      familySakhGujarati: familySakhGujarati ?? this.familySakhGujarati,
      nativeVillage: nativeVillage ?? this.nativeVillage,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      mosalVillage: mosalVillage ?? this.mosalVillage,
      maternalVillage: maternalVillage ?? this.maternalVillage,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      email: email ?? this.email,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      pragatiMandal: pragatiMandal ?? this.pragatiMandal,
      pragatiMandalGujarati: pragatiMandalGujarati ?? this.pragatiMandalGujarati,
      city: city ?? this.city,
      cityGujarati: cityGujarati ?? this.cityGujarati,
      country: country ?? this.country,
      countryGujarati: countryGujarati ?? this.countryGujarati,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      education: education ?? this.education,
      educationDetail: educationDetail ?? this.educationDetail,
      residentAddresses: residentAddresses ?? this.residentAddresses,
      occupations: occupations ?? this.occupations,
      isPlanningToGetMarried: isPlanningToGetMarried ?? this.isPlanningToGetMarried,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      skinColor: skinColor ?? this.skinColor,
      hobbies: hobbies ?? this.hobbies,
      physicalStatus: physicalStatus ?? this.physicalStatus,
      selfIncome: selfIncome ?? this.selfIncome,
      aboutSelf: aboutSelf ?? this.aboutSelf,
      expectations: expectations ?? this.expectations,
      familyMembers: familyMembers ?? this.familyMembers,
      permissions: permissions ?? this.permissions,
      isAdmin: isAdmin ?? this.isAdmin,
      isSuperAdmin: isSuperAdmin ?? this.isSuperAdmin,
      livingInNativePlace: livingInNativePlace ?? this.livingInNativePlace,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'familyId': familyId,
      'name': name,
      'nameGujarati': nameGujarati,
      'fatherOrHusbandName': fatherOrHusbandName,
      'fatherOrHusbandNameGujarati': fatherOrHusbandNameGujarati,
      'grandfatherOrFatherInLawName': grandfatherOrFatherInLawName,
      'grandfatherOrFatherInLawNameGujarati': grandfatherOrFatherInLawNameGujarati,
      'surname': surname,
      'surnameGujarati': surnameGujarati,
      'familySakh': familySakh,
      'familySakhGujarati': familySakhGujarati,
      'nativeVillage': nativeVillage,
      'birthDate': birthDate.millisecondsSinceEpoch,
      'gender': gender,
      'mosalVillage': mosalVillage,
      'maternalVillage': maternalVillage,
      'mobileNumber': mobileNumber,
      'email': email,
      'bloodGroup': bloodGroup,
      'pragatiMandal': pragatiMandal,
      'pragatiMandalGujarati': pragatiMandalGujarati,
      'city': city,
      'cityGujarati': cityGujarati,
      'country': country,
      'countryGujarati': countryGujarati,
      'maritalStatus': maritalStatus,
      'education': education,
      'educationDetail': educationDetail,
      'residentAddresses': residentAddresses,
      'occupations': occupations.map((x) => x.toMap()).toList(),
      'isPlanningToGetMarried': isPlanningToGetMarried,
      'height': height,
      'weight': weight,
      'skinColor': skinColor,
      'hobbies': hobbies,
      'physicalStatus': physicalStatus,
      'selfIncome': selfIncome,
      'aboutSelf': aboutSelf,
      'expectations': expectations,
      'familyMembers': familyMembers.map((x) => x.toMap()).toList(),
      'permissions': permissions.toMap(),
      'isAdmin': isAdmin,
      'isSuperAdmin': isSuperAdmin,
      'livingInNativePlace': livingInNativePlace,
    };
  }

  factory Member.fromMap(Map<String, dynamic> map) {
    try {
      return Member(
        id: map['id']?.toString() ?? '',
        familyId: map['familyId']?.toString() ?? '',
        name: map['name']?.toString() ?? '',
        nameGujarati: map['nameGujarati']?.toString() ?? '',
        fatherOrHusbandName: map['fatherOrHusbandName']?.toString() ?? '',
        fatherOrHusbandNameGujarati: map['fatherOrHusbandNameGujarati']?.toString() ?? '',
        grandfatherOrFatherInLawName: map['grandfatherOrFatherInLawName']?.toString() ?? '',
        grandfatherOrFatherInLawNameGujarati: map['grandfatherOrFatherInLawNameGujarati']?.toString() ?? '',
        surname: map['surname']?.toString() ?? '',
        surnameGujarati: map['surnameGujarati']?.toString() ?? '',
        familySakh: map['familySakh']?.toString() ?? '',
        familySakhGujarati: map['familySakhGujarati']?.toString() ?? '',
        nativeVillage: map['nativeVillage']?.toString() ?? '',
        birthDate: DateTime.fromMillisecondsSinceEpoch(map['birthDate']?.toInt() ?? 0),
        gender: map['gender']?.toString() ?? '',
        mosalVillage: map['mosalVillage']?.toString() ?? '',
        maternalVillage: map['maternalVillage']?.toString() ?? '',
        mobileNumber: map['mobileNumber']?.toString() ?? '',
        email: map['email']?.toString() ?? '',
        bloodGroup: map['bloodGroup']?.toString() ?? '',
        pragatiMandal: map['pragatiMandal']?.toString() ?? '',
        pragatiMandalGujarati: map['pragatiMandalGujarati']?.toString() ?? '',
        city: map['city']?.toString() ?? '',
        cityGujarati: map['cityGujarati']?.toString() ?? '',
        country: map['country']?.toString() ?? '',
        countryGujarati: map['countryGujarati']?.toString() ?? '',
        maritalStatus: map['maritalStatus']?.toString() ?? '',
        education: map['education']?.toString() ?? '',
        educationDetail: map['educationDetail']?.toString() ?? '',
        residentAddresses: List<String>.from(map['residentAddresses'] ?? []),
        occupations: List<MemberOccupationModel>.from(
          (map['occupations'] ?? []).map<MemberOccupationModel>(
            (x) => MemberOccupationModel.fromMap(x ?? {}),
          ),
        ),
        isPlanningToGetMarried: map['isPlanningToGetMarried'] ?? false,
        height: map['height']?.toDouble() ?? 0.0,
        weight: map['weight']?.toDouble() ?? 0.0,
        skinColor: map['skinColor']?.toString() ?? '',
        hobbies: map['hobbies']?.toString() ?? '',
        physicalStatus: map['physicalStatus']?.toString() ?? '',
        selfIncome: map['selfIncome']?.toString() ?? '',
        aboutSelf: map['aboutSelf']?.toString() ?? '',
        expectations: map['expectations']?.toString() ?? '',
        familyMembers: List<FamilyMember>.from(
          (map['familyMembers'] ?? []).map<FamilyMember>(
            (x) => FamilyMember.fromMap(x ?? {}),
          ),
        ),
        permissions: Permission.fromMap(map['permissions'] ?? {}),
        isAdmin: map['isAdmin'] ?? false,
        isSuperAdmin: map['isSuperAdmin'] ?? false,
        livingInNativePlace: map['livingInNativePlace'] ?? false,
      );
    } catch (e, stackTrace) {
      // Handle the error appropriately, e.g., log it or rethrow
      debugPrint('Failed to create Member from map: $e');
      debugPrint('Stack Trace: $stackTrace');
      throw Exception('Failed to create Member from map: $e');
    }
  }

  String toJson() => json.encode(toMap());

  factory Member.fromJson(String source) => Member.fromMap(json.decode(source) as Map<String, dynamic>);

  String isMemberAccess() => permissions.member ? 'Yes' : 'No';
  String isDirectoryAccess() => permissions.directory ? 'Yes' : 'No';
  String isPostAccess() => permissions.post ? 'Yes' : 'No';

  @override
  String toString() {
    return 'Member(id: $id, familyId: $familyId, name: $name, nameGujarati: $nameGujarati, fatherOrHusbandName: $fatherOrHusbandName, fatherOrHusbandNameGujarati: $fatherOrHusbandNameGujarati, grandfatherOrFatherInLawName: $grandfatherOrFatherInLawName, grandfatherOrFatherInLawNameGujarati: $grandfatherOrFatherInLawNameGujarati, surname: $surname, surnameGujarati: $surnameGujarati, familySakh: $familySakh, familySakhGujarati: $familySakhGujarati, nativeVillage: $nativeVillage, birthDate: $birthDate, gender: $gender, mosalVillage: $mosalVillage, maternalVillage: $maternalVillage, mobileNumber: $mobileNumber, email: $email, bloodGroup: $bloodGroup, pragatiMandal: $pragatiMandal, pragatiMandalGujarati: $pragatiMandalGujarati, city: $city, cityGujarati: $cityGujarati, country: $country, countryGujarati: $countryGujarati, maritalStatus: $maritalStatus, education: $education, educationDetail: $educationDetail, residentAddresses: $residentAddresses, occupations: $occupations, isPlanningToGetMarried: $isPlanningToGetMarried, height: $height, weight: $weight, skinColor: $skinColor, hobbies: $hobbies, physicalStatus: $physicalStatus, selfIncome: $selfIncome, aboutSelf: $aboutSelf, expectations: $expectations, familyMembers: $familyMembers, permissions: $permissions, isAdmin: $isAdmin, isSuperAdmin: $isSuperAdmin, livingInNativePlace: $livingInNativePlace)';
  }

  @override
  bool operator ==(covariant Member other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.familyId == familyId &&
        other.name == name &&
        other.nameGujarati == nameGujarati &&
        other.fatherOrHusbandName == fatherOrHusbandName &&
        other.fatherOrHusbandNameGujarati == fatherOrHusbandNameGujarati &&
        other.grandfatherOrFatherInLawName == grandfatherOrFatherInLawName &&
        other.grandfatherOrFatherInLawNameGujarati == grandfatherOrFatherInLawNameGujarati &&
        other.surname == surname &&
        other.surnameGujarati == surnameGujarati &&
        other.familySakh == familySakh &&
        other.familySakhGujarati == familySakhGujarati &&
        other.nativeVillage == nativeVillage &&
        other.birthDate == birthDate &&
        other.gender == gender &&
        other.mosalVillage == mosalVillage &&
        other.maternalVillage == maternalVillage &&
        other.mobileNumber == mobileNumber &&
        other.email == email &&
        other.bloodGroup == bloodGroup &&
        other.pragatiMandal == pragatiMandal &&
        other.pragatiMandalGujarati == pragatiMandalGujarati &&
        other.city == city &&
        other.cityGujarati == cityGujarati &&
        other.country == country &&
        other.countryGujarati == countryGujarati &&
        other.maritalStatus == maritalStatus &&
        other.education == education &&
        other.educationDetail == educationDetail &&
        listEquals(other.residentAddresses, residentAddresses) &&
        listEquals(other.occupations, occupations) &&
        other.isPlanningToGetMarried == isPlanningToGetMarried &&
        other.height == height &&
        other.weight == weight &&
        other.skinColor == skinColor &&
        other.hobbies == hobbies &&
        other.physicalStatus == physicalStatus &&
        other.selfIncome == selfIncome &&
        other.aboutSelf == aboutSelf &&
        other.expectations == expectations &&
        listEquals(other.familyMembers, familyMembers) &&
        other.permissions == permissions &&
        other.isAdmin == isAdmin &&
        other.isSuperAdmin == isSuperAdmin &&
        other.livingInNativePlace == livingInNativePlace;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        familyId.hashCode ^
        name.hashCode ^
        nameGujarati.hashCode ^
        fatherOrHusbandName.hashCode ^
        fatherOrHusbandNameGujarati.hashCode ^
        grandfatherOrFatherInLawName.hashCode ^
        grandfatherOrFatherInLawNameGujarati.hashCode ^
        surname.hashCode ^
        surnameGujarati.hashCode ^
        familySakh.hashCode ^
        familySakhGujarati.hashCode ^
        nativeVillage.hashCode ^
        birthDate.hashCode ^
        gender.hashCode ^
        mosalVillage.hashCode ^
        maternalVillage.hashCode ^
        mobileNumber.hashCode ^
        email.hashCode ^
        bloodGroup.hashCode ^
        pragatiMandal.hashCode ^
        pragatiMandalGujarati.hashCode ^
        city.hashCode ^
        cityGujarati.hashCode ^
        country.hashCode ^
        countryGujarati.hashCode ^
        maritalStatus.hashCode ^
        education.hashCode ^
        educationDetail.hashCode ^
        residentAddresses.hashCode ^
        occupations.hashCode ^
        isPlanningToGetMarried.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        skinColor.hashCode ^
        hobbies.hashCode ^
        physicalStatus.hashCode ^
        selfIncome.hashCode ^
        aboutSelf.hashCode ^
        expectations.hashCode ^
        familyMembers.hashCode ^
        permissions.hashCode ^
        isAdmin.hashCode ^
        isSuperAdmin.hashCode ^
        livingInNativePlace.hashCode;
  }
}

class Permission {
  bool directory;
  bool member;
  bool post;

  Permission({
    required this.directory,
    required this.member,
    required this.post,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': directory,
      'member': member,
      'post': post,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      directory: map['directory'] as bool,
      member: map['member'] as bool,
      post: map['post'] as bool,
    );
  }

  Permission copyWith({
    bool? directory,
    bool? member,
    bool? post,
  }) {
    return Permission(
      directory: directory ?? this.directory,
      member: member ?? this.member,
      post: post ?? this.post,
    );
  }

  String toJson() => json.encode(toMap());

  factory Permission.fromJson(String source) => Permission.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Permission(directory: $directory, member: $member, post: $post)';

  @override
  bool operator ==(covariant Permission other) {
    if (identical(this, other)) return true;

    return other.directory == directory && other.member == member && other.post == post;
  }

  @override
  int get hashCode => directory.hashCode ^ member.hashCode ^ post.hashCode;
}

class FamilyMember {
  String name;
  String relation;
  String memberId;

  FamilyMember({
    required this.name,
    required this.relation,
    required this.memberId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'relation': relation,
      'memberId': memberId,
    };
  }

  factory FamilyMember.fromMap(Map<String, dynamic> map) {
    return FamilyMember(
      name: map['name'] as String,
      relation: map['relation'] as String,
      memberId: map['memberId'] as String,
    );
  }

  FamilyMember copyWith({
    String? name,
    String? relation,
    String? memberId,
  }) {
    return FamilyMember(
      name: name ?? this.name,
      relation: relation ?? this.relation,
      memberId: memberId ?? this.memberId,
    );
  }

  String toJson() => json.encode(toMap());

  factory FamilyMember.fromJson(String source) => FamilyMember.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FamilyMember(name: $name, relation: $relation, memberId: $memberId)';

  @override
  bool operator ==(covariant FamilyMember other) {
    if (identical(this, other)) return true;

    return other.name == name && other.relation == relation && other.memberId == memberId;
  }

  @override
  int get hashCode => name.hashCode ^ relation.hashCode ^ memberId.hashCode;
}

class MemberOccupationModel {
  String professionalStatus;
  Occupation occupation;
  String nameGujarati;
  String occupationType; // e.g., "Job" or "Business"
  List<String> addresses;
  String occupationPosterUrl;

  MemberOccupationModel({
    required this.professionalStatus,
    required this.occupation,
    required this.nameGujarati,
    required this.occupationType,
    required this.addresses,
    required this.occupationPosterUrl,
  });

  Map<String, dynamic> toMap() {
    try {
      return <String, dynamic>{
        'professionalStatus': professionalStatus,
        'occupation': occupation.toMap(),
        'nameGujarati': nameGujarati,
        'occupationType': occupationType,
        'addresses': addresses,
        'occupationPosterUrl': occupationPosterUrl,
      };
    } catch (e) {
      // Handle the error appropriately, e.g., log it or rethrow
      throw Exception('Failed to convert MemberOccupationModel to map: $e');
    }
  }

  factory MemberOccupationModel.fromMap(Map<String, dynamic> map) {
    try {
      return MemberOccupationModel(
        professionalStatus: map['professionalStatus'] as String,
        occupation: Occupation.fromMap(map['occupation'] as Map<String, dynamic>),
        nameGujarati: map['nameGujarati'] as String,
        occupationType: map['occupationType'] as String,
        addresses: List.from((map['addresses'] as List).map((item) => item.toString())),
        occupationPosterUrl: map['occupationPosterUrl'] as String,
      );
    } catch (e, stackTrace) {
      debugPrint('Failed to create MemberOccupationModel from map: $e');
      debugPrint('Stack Trace: $stackTrace');
      throw Exception('Failed to create MemberOccupationModel from map: $e');
    }
  }

  String toJson() {
    try {
      return json.encode(toMap());
    } catch (e) {
      throw Exception('Failed to convert MemberOccupationModel to JSON: $e');
    }
  }

  factory MemberOccupationModel.fromJson(String source) {
    try {
      return MemberOccupationModel.fromMap(json.decode(source) as Map<String, dynamic>);
    } catch (e) {
      throw Exception('Failed to create MemberOccupationModel from JSON: $e');
    }
  }

  MemberOccupationModel copyWith({
    String? professionalStatus,
    Occupation? occupation,
    String? nameGujarati,
    String? occupationType,
    List<String>? addresses,
    String? occupationPosterUrl,
  }) {
    try {
      return MemberOccupationModel(
        professionalStatus: professionalStatus ?? this.professionalStatus,
        occupation: occupation ?? this.occupation,
        nameGujarati: nameGujarati ?? this.nameGujarati,
        occupationType: occupationType ?? this.occupationType,
        addresses: addresses ?? this.addresses,
        occupationPosterUrl: occupationPosterUrl ?? this.occupationPosterUrl,
      );
    } catch (e) {
      throw Exception('Failed to copy MemberOccupationModel: $e');
    }
  }

  @override
  String toString() {
    try {
      return 'MemberOccupationModel(professionalStatus: $professionalStatus, occupation: $occupation, nameGujarati: $nameGujarati, occupationType: $occupationType, addresses: $addresses, occupationPosterUrl: $occupationPosterUrl)';
    } catch (e) {
      throw Exception('Failed to convert MemberOccupationModel to string: $e');
    }
  }

  @override
  bool operator ==(covariant MemberOccupationModel other) {
    if (identical(this, other)) return true;

    return other.professionalStatus == professionalStatus && other.occupation == occupation && other.nameGujarati == nameGujarati && other.occupationType == occupationType && listEquals(other.addresses, addresses) && other.occupationPosterUrl == occupationPosterUrl;
  }

  @override
  int get hashCode {
    return professionalStatus.hashCode ^ occupation.hashCode ^ nameGujarati.hashCode ^ occupationType.hashCode ^ addresses.hashCode ^ occupationPosterUrl.hashCode;
  }
}
