import 'package:flutter_ui/tiktok/user.dart';
import 'package:flutter_ui/tiktok/videodetail.dart';

User currentUSer = User('noha_sumi',
    "https://images.pexels.com/photos/3533228/pexels-photo-3533228.png?auto=compress&cs=tinysrgb&dpr=2&w=500");
User User1 = User('shipha_casee',
    "https://images.pexels.com/photos/4519118/pexels-photo-4519118.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");

User User2 = User("helen_mac",
    "https://images.pexels.com/photos/1845208/pexels-photo-1845208.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");

final List<Video> videos_detail = [
  Video(
      User1,
      'video1.mp4',
      '1.2M',
      '200K',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      'Audio . ',
      "https://cdn.britannica.com/03/151903-131-E310E9EC/Microphone-background-sound-waves-energy-Music.jpg"),
  Video(
      User2,
      'video2.mp4',
      '2.2M',
      '300K',
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry ",
      "Audio .",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGiUcydbp-MnJC4o27gqYS6iohw4Hv22TDgw&usqp=CAU"),
];
