import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        backgroundColor:Color.fromARGB(255, 34, 158, 217),
      ),
      drawer: TelegramDrawer(),
      body: Center(child: Text('Home Screen')),
    );
  }
}
class TelegramDrawer extends StatefulWidget {
  @override
  _TelegramDrawerState createState() => _TelegramDrawerState();
}

class _TelegramDrawerState extends State<TelegramDrawer> {
  bool showAddAccount = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 34, 158, 217),
            padding: EdgeInsets.only(top:20, left: 15, right: 15, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/Images/photo1.jpeg'),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
               // SizedBox(height: 25),
                // Name, phone, and dropdown below the picture
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Eden Esayas',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '+251 912 345 678',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        showAddAccount
                            ? Icons.arrow_drop_up_outlined
                            : Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          showAddAccount = !showAddAccount;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Show Add Account if toggled
         if (showAddAccount) ...[
            
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Account'),
              onTap: () {},
            ),
           Divider(color: const Color.fromARGB(255, 228, 225, 225)),              
                ],
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
        Divider(color: const Color.fromARGB(255, 228, 225, 225)), 
          ListTile(
            leading: Icon(Icons.group),
            title: Text('New Group'),
          ),
          ListTile(
            leading: Icon(Icons.person_4_outlined),
            title: Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Calls'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark_outline_outlined),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          
          Divider(color: const Color.fromARGB(255, 228, 225, 225)), 
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text('Invite Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Telegram FAQ'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
