import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  Widget _buildListTile(String title, IconData icon) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/profile.png',
              ), // Replace with your image URL
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.grey),
                ),
              ),
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Kasmi Thapa'),
              subtitle: Text('Dhulikhel, Bagmati Province, Nepal'),
            ),
            Divider(),
            _buildListTile('Popular', Icons.chevron_right),
            _buildListTile('Treading', Icons.chevron_right),
            _buildListTile('Today', Icons.chevron_right),
            Divider(),
            Text('Content', style: TextStyle(fontWeight: FontWeight.bold)),
            _buildListTile('Favourite', Icons.favorite_border),
            _buildListTile('Rental update', Icons.download_done_outlined),
            Divider(),
            Text('Preferences', style: TextStyle(fontWeight: FontWeight.bold)),
            _buildListTile('Language', Icons.language),
            _buildListTile('Darkmode', Icons.brightness_2),
            _buildListTile('Only Download via Wifi', Icons.wifi),
          ],
        ),
      ),
    );
  }
}
