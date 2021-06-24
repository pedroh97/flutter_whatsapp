import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Chamadas/Chamada.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';


import 'ChatBody.dart';

class Chat extends StatefulWidget {
  const Chat ({required this.mensagem});
  final String mensagem;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.white70,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white70,
              ),
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chamada()),
              );}
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white70,
              ),
              onPressed: (){
                setState(() {

                });
              }
          )
        ],
        backgroundColor: Colors.blueGrey.shade900,
        title: Padding(
          padding: const EdgeInsets.only(right:0.0),
          child: Container(
            height: 200,
              child: Row(
                children: [
                  Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
                          ),
                        ),
                      ),
                  Text(
                    'Pedro Cozzati'
                  ),
                ],
              ),
            ),
            ),
      ),
      body: ChatBody(mensagem: '',),
    );
  }
}
