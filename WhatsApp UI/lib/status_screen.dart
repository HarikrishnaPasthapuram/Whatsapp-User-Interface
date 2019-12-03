import 'package:flutter/material.dart';
import 'package:whatsapp/status_model.dart';


class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummydata1.length,
        itemBuilder:(context,i)=>Column(
          children: <Widget>[
            Divider(height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(dummydata1[i].avatarUrl),
              ),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummydata1[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_vert)
                  
                ],
              ),

              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummydata1[i].time,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0
                  ),
                )
              ),
            ),

          ],

        )
    );
  }
}
