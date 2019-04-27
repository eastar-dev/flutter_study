import 'package:flutter/material.dart';

void main() => runApp(FriendlychatApp());

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override //new
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  //new
  final TextEditingController _textController = new TextEditingController(); //new
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Friendlychat")),

      body: _buildTextComposer(), //new
    );
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                  child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration.collapsed(hintText: "Send Message"),
              )),
              new Container(
                //new
                margin: new EdgeInsets.symmetric(horizontal: 4.0), //new
                child: new IconButton(
                    //new
                    icon: new Icon(Icons.send), //new
                    onPressed: () => _handleSubmitted(_textController.text)), //new
              ),
            ],
          ),
        )
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
//  @override                                                        //new
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(title: new Text("Friendlychat")),
//
//    );
//  }
}
