import 'package:get/get.dart';

validinput(String val, int min, int max, String type){

  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "not valid username";
    }
  }
  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "not valid phone number";
    }
  }
  if(val.isEmpty){
    return "Value can't be empty";
  }
  if(val.length < min){
    return"Value can't be less than $min";
  }
  if (val.length > max){
    return "Value can't be more than $max";}
}