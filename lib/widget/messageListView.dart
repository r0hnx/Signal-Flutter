import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:signal/model/model.dart';

class MessageListView extends StatelessWidget {
  final AppUser appUser;
  const MessageListView({
    @required this.appUser,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onLongPress: () => showCupertinoDialog(
          context: context,
          barrierDismissible: true,
          builder: (_) => CupertinoAlertDialog(
            title: Text('Options'),
            content: Column(
              children: [
                Divider(),
                GestureDetector(
                  onTap: () => print('Chat Deleted'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Remove'),
                  ),
                ),
                Divider(),
                GestureDetector(
                  onTap: () => print(appUser.name),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('View Info'),
                  ),
                )
              ],
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(appUser.imageUrl),
                      minRadius: 25,
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 12),
                          ),
                          radius: 9,
                        )),
                    right: 0,
                    top: 5,
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appUser.name,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'Missed Call',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '11:11 AM',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                  SizedBox(height: 4,),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).disabledColor,
                    radius: 7,
                    child: Icon(Icons.done_all_rounded, size: 8, color: Colors.white,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
