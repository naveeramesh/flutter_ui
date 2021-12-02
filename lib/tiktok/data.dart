import 'package:flutter_ui/tiktok/user.dart';
import 'package:flutter_ui/tiktok/videodetail.dart';

User User1 = User('shipha_casee', "https://wallpaperaccess.com/full/2213424.jpg");

User User2 = User("helen_mac", "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Profile-Photo-Wallpaper.jpg");

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
