class UserInfoModel{
  String name;
  String? email;
  String imagePath;
  bool picked;
  UserInfoModel({this.email,required this.imagePath, required this.name,this.picked=false});
}