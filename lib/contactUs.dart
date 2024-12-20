import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text('For general queries:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Email: helprtionline-dopt@nic.in'),
            SizedBox(height: 8.0),
            Text('Phone: 011-24622461\n'),
            
            Text("If the applicant's query doesn't get resolved "
                "through the above, then they may "
                "contact below mentioned officials.\n",
            style: TextStyle(color: Colors.red),),

            Text('Contact Information', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0),
            // JS (IR)
            ListTile(
              title: Text('JS (IR)'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DoPT, Room No. 215/C'),
                  Text('North Block'),
                  Text('New Delhi - 110001'),
                  Text("dirrti-dopt@nic.in",style: TextStyle(color: Colors.blue),),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.email),
                onPressed: () {
                  // launch('mailto:dirrti-dopt@nic.in');
                },
              ),
            ),
            SizedBox(height: 16.0),
            // Under Secretary (IR)
            ListTile(
              title: Text('Under Secretary (IR)'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Room No. 278/A'),
                  Text('North Block'),
                  Text('New Delhi - 110001'),
                  Text("usir-dopt@nic.in",style: TextStyle(color: Colors.blue),),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.email),
                onPressed: () {
                  // launch('mailto:usir-dopt@nic.in');
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
