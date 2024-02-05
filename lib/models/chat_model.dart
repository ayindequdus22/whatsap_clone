class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarurl;

  ChatModel(
      {required this.message,
      required this.time,
      required this.avatarurl,
      required this.name});}
  List<ChatModel> dummyData = [
    ChatModel(
        message: "Hey love,wanna have match??",
        time: "19:50",
        avatarurl: "assets/reporter.jpg",
        name: "Anteqs"),
          ChatModel(
        message: "Send the money I asked",
        time: "19:50",
        avatarurl: "assets/reporter.jpg",
        name: "Babe ❤"),
          ChatModel(
        message: "How you doing",
        time: "19:50",
        avatarurl: "assets/reporter.jpg",
        name: "Dad"),
          ChatModel(
        message: "Yo bro,wtf??David didn't get any grammy",
        time: "19:50",
        avatarurl: "assets/reporter.jpg",
        name: "Blooda"),
  ];

