// To parse this JSON data, do
//
//     final detailUmkm = detailUmkmFromJson(jsonString);

import 'dart:convert';

DetailUmkm detailUmkmFromJson(String str) => DetailUmkm.fromJson(json.decode(str));

String detailUmkmToJson(DetailUmkm data) => json.encode(data.toJson());

class DetailUmkm {
  DetailUmkm({
    this.status,
    this.message,
    this.data,
  });

  int status;
  String message;
  Data data;

  factory DetailUmkm.fromJson(Map<String, dynamic> json) => DetailUmkm(
    status: json["status"] == null ? null : json["status"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.nama,
    this.alamat,
    this.noTelp,
    this.gambar,
    this.userId,
    this.umkmCategoryId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.users,
    this.umkmCategories,
  });

  int id;
  String nama;
  String alamat;
  String noTelp;
  String gambar;
  int userId;
  int umkmCategoryId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  Users users;
  UmkmCategories umkmCategories;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"] == null ? null : json["id"],
    nama: json["nama"] == null ? null : json["nama"],
    alamat: json["alamat"] == null ? null : json["alamat"],
    noTelp: json["no_telp"] == null ? null : json["no_telp"],
    gambar: json["gambar"] == null ? null : json["gambar"],
    userId: json["user_id"] == null ? null : json["user_id"],
    umkmCategoryId: json["umkm_category_id"] == null ? null : json["umkm_category_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    users: json["users"] == null ? null : Users.fromJson(json["users"]),
    umkmCategories: json["umkm_categories"] == null ? null : UmkmCategories.fromJson(json["umkm_categories"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nama": nama == null ? null : nama,
    "alamat": alamat == null ? null : alamat,
    "no_telp": noTelp == null ? null : noTelp,
    "gambar": gambar == null ? null : gambar,
    "user_id": userId == null ? null : userId,
    "umkm_category_id": umkmCategoryId == null ? null : umkmCategoryId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "users": users == null ? null : users.toJson(),
    "umkm_categories": umkmCategories == null ? null : umkmCategories.toJson(),
  };
}

class UmkmCategories {
  UmkmCategories({
    this.id,
    this.nama,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nama;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory UmkmCategories.fromJson(Map<String, dynamic> json) => UmkmCategories(
    id: json["id"] == null ? null : json["id"],
    nama: json["nama"] == null ? null : json["nama"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nama": nama == null ? null : nama,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class Users {
  Users({
    this.id,
    this.nama,
    this.userRoleId,
    this.userCredentialId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nama;
  int userRoleId;
  int userCredentialId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    id: json["id"] == null ? null : json["id"],
    nama: json["nama"] == null ? null : json["nama"],
    userRoleId: json["user_role_id"] == null ? null : json["user_role_id"],
    userCredentialId: json["user_credential_id"] == null ? null : json["user_credential_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nama": nama == null ? null : nama,
    "user_role_id": userRoleId == null ? null : userRoleId,
    "user_credential_id": userCredentialId == null ? null : userCredentialId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
