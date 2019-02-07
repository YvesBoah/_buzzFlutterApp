import 'package:flutter/material.dart';

class ActionsCours extends StatefulWidget {

   ActionsCours(String title){
     this.title = title;
   }
  String title;

  @override
  ActionsCoursState createState() {
    return new ActionsCoursState();
  }
}

class ActionsCoursState extends State<ActionsCours> {
  List<ActionCour> ourActions= [
    new ActionCour("Concert",Icons.voice_chat),
    new ActionCour("Anniversaire",Icons.voice_chat),
    new ActionCour("Mariage",Icons.voice_chat),
    new ActionCour("Baptême",Icons.voice_chat),
    new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
    // new ActionCour("Dôte",Icons.voice_chat),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: ourActions.length,
          itemBuilder: (context, i){
            return new ListTile(
          title : Text('évènement : ${ourActions[i].nom}'),
          trailing: new Icon(ourActions[i].icone),
          );
          }),
      ),
    );
  }
}

class ActionCour {
  String nom;
  IconData icone;


ActionCour(String nom,IconData icone) {
this.nom = nom;
this.icone = icone;
}






}