import 'package:flutter/material.dart';

class faq extends StatelessWidget {
  const faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frequently Asked Questions"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // FAQ 1
              ExpansionTile(
                title: Text('1. To which Public Authority can I file a request through this portal?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('An applicant who desires to obtain information under the RTI Act, 2005 can make a request through this RTI Online Portal to the Central Ministries/Departments and other Central Public Authorities mentioned in ONLINE RTI request form.'),
                  ),
                ],
              ),

              // FAQ 2
              ExpansionTile(
                title: Text('2. How do I write my application for seeking the information as per RTI Act 2005?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('The text of the application may be written in the prescribed column of the RTI request form. At present, the text of the application is confined up to 3000 characters only.'),
                  ),
                  ListTile(
                    title: Text('In case, the text of an application contains more than 3000 characters, it can be uploaded as a PDF attachment in the "Supporting Document" column of the form.'),
                  ),
                ],
              ),

              // FAQ 3
              ExpansionTile(
                title: Text('3. How do I make the payment for RTI fee?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('After filling the first page of the RTI request form, a non-BPL applicant has to click on "Make Payment" button for payment of the prescribed RTI fee.'),
                  ),
                  ListTile(
                    title: Text('The applicant can pay the prescribed RTI fee through the following modes:'),
                  ),
                  ListTile(
                    title: Text('(i) Internet banking through SBI payment gateway and its associated banks.'),
                  ),
                  ListTile(
                    title: Text('(ii) Using ATM-cum-Debit card of State Bank of India.'),
                  ),
                  ListTile(
                    title: Text('(iii) Credit/Debit card of Master/Visa.'),
                  ),
                  ListTile(
                    title: Text('(iv) UPI'),
                  ),
                  ListTile(
                    title: Text('It may be noted that no RTI fee is required to be paid by a citizen who is below poverty line, as per RTI Rules, 2012. However, the BPL applicant must attach a copy of the certificate issued by the appropriate government in this regard, along with the application.'),
                  ),
                ],
              ),

              // FAQ 4
              ExpansionTile(
                title: Text('4. Do I get any receipt for online filing of RTI application?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('On submission of an application, a unique registration number will be issued, which may be referred by the applicant for any future reference.'),
                  ),
                  ListTile(
                    title: Text('It may be noted that the application filed through this RTI Online Portal will reach electronically to the "Nodal Officer" of the said Ministry/Department and "Not" to the CPIO of the concerned Ministry/Department.'),
                  ),
                  ListTile(
                    title: Text('The Nodal Officer will transmit the RTI application electronically to the concerned CPIO.'),
                  ),
                ],
              ),

              // FAQ 5
              ExpansionTile(
                title: Text('5. What will happen to my application if I select a wrong Public Authority in the RTI request form?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('In case the RTI application is not meant for the Public authority which has been selected by the applicant, the "Nodal Officer" of the said public authority would transfer the application electronically to the "Nodal Officer" of the concerned Central Public authority, if aligned to this portal and physically to that Central Public authority which is not aligned to this portal, under section 6(3) of the RTI Act.'),
                  ),
                  ListTile(
                    title: Text('It may be noted that RTI applications filed through this portal for the state public authorities, including NCT of Delhi, would be returned, without any refund of fee.'),
                  ),
                ],
              ),

              // FAQ 6
              ExpansionTile(
                title: Text('6. Will I be informed about the additional fee (if any) is required to pay?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('In case additional fee representing the cost is required for providing information, the CPIO will intimate the same, which can be viewed by the applicant through "View Status" option in the RTI Online Portal and an e-mail alert or SMS or both will also be sent to the applicant for the same.'),
                  ),
                  ListTile(
                    title: Text('For payment of additional fee online, the applicant needs to use the option \'View Status\' in the RTI Online Portal and on providing the registration number of the request, option for "Make Payment" will be available.'),
                  ),
                ],
              ),

              // FAQ 7
              ExpansionTile(
                title: Text('7. How do I file an appeal with First Appellate Authority?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('For making an appeal to the first Appellate Authority, the applicant has to select the option "Submit First Appeal" in the RTI Online Portal and fill up the form that will appear.'),
                  ),
                  ListTile(
                    title: Text('The registration number and e-mail ID of the original application is required for filing the first appeal.'),
                  ),
                ],
              ),

              //FAQ 8
              ExpansionTile(
                title: Text('8. Do I need to make any payment for filing an appeal?', style: TextStyle(fontWeight: FontWeight.bold)),
                children: [
                  ListTile(
                    title: Text('As per RTI Act, no fee has to be paid for first appeal.'),
                  ),
                ],
              ),

            ],
          ),
          ),

      ),
    );
  }
}
