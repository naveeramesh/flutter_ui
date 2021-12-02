import 'package:flutter_ui/tiktok/user.dart';
import 'package:flutter_ui/tiktok/videodetail.dart';

User currentUSer = User('noha_sumi',
    "https://images.pexels.com/photos/3533228/pexels-photo-3533228.png?auto=compress&cs=tinysrgb&dpr=2&w=500");
User User1 = User('shipha_casee',
    "https://images.pexels.com/photos/1921168/pexels-photo-1921168.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");

User User2 = User("helen_mac",
    "https://images.pexels.com/photos/1845208/pexels-photo-1845208.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");

final List<Video> videos_detail = [
  Video(
      User1,
      'video1.mp4',
      '1.2M',
      '200K',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      'Audio . '),
  Video(
      User2,
      'video2.mp4',
      '2.2M',
      '300K',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry ",
      "Audio ."),
];
