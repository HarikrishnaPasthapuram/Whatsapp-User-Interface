import 'package:flutter/material.dart';
import 'package:whatsapp/calls_model.dart';
class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummydata2.length,
        itemBuilder:(context,i)=>Column(
          children: <Widget>[
            Divider(height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(dummydata2[i].avatarUrl),
              ),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummydata2[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.call_end)

                ],
              ),

              subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    dummydata2[i].time,
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
