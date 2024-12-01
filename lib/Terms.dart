import 'package:flutter/material.dart';
import 'Dashboard.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Guidelines for RTI Portal"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '''
GUIDELINES FOR USE OF RTI ONLINE PORTAL

1. This Web Portal can be used by Indian citizens to file RTI application online and also to make payment for RTI application online. First appeal can also be filed online.
2. An applicant who desires to obtain any information under the RTI Act can make a request through this Web Portal to the Ministries/Departments of Government of India.
3. On clicking at "Submit Request", the applicant has to fill the required details on the page that will appear. The fields marked * are mandatory while the others are optional.
4. The text of the application may be written at the prescribed column.
5. At present, the text of an application that can be uploaded at the prescribed column is confined to 3000 characters only. Only alphabets A-Z, a-z, number 0-9 and special characters ., - _ ( ) / @ : & ; % are allowed in Text for RTI Request application.
6. In case an application contains more than 3000 characters, it can be uploaded as an attachment, by using column "Supporting document".
7. Do not upload Aadhaar Card or PAN Card or any other personal identification (except BPL Card). PDF file name should not have any blank spaces.
8. After filling the first page, the applicant has to click on "Make Payment" to make payment of the prescribed fee.
9. The applicant can pay the prescribed fee through the following modes:
   (a) Internet banking;
   (b) Using credit/debit card of Master/Visa;
   (c) Using UPI;
   (d) Using RuPay Card.
10. Fee for making an application is as prescribed in the RTI Rules, 2012.
11. After making payment, an application can be submitted.
12. After making payment, if applicant didn’t receive the registration number then applicant is advised to wait for the 24-48 working hours as registration number will be generated after reconciliation. Please do not make additional attempt to make payment again. If it is not generated within 24-48 hours kindly send an e-mail at helprtionline-dot[at]nic[dot]in with transaction details.
13. No RTI fee is required to be paid by any citizen who is below poverty line as per RTI Rules, 2012. However, the applicant must attach a copy of the certificate issued by the appropriate government in this regard, along with the application.
14. On submission of an application, a unique registration number would be issued, which may be referred by the applicant for any references in future.
15. The application filed through this Web Portal would reach electronically to the "Nodal Officer" of concerned Ministry/Department, who would transmit the RTI application electronically to the concerned CPIO.
16. In case additional fee is required representing the cost for providing information, the CPIO would intimate the applicant through this portal. This intimation can be seen by the applicant through Status Report or through his/her e-mail alert.
17. For making an appeal to the first Appellate Authority, the applicant has to click at "Submit First Appeal" and fill up the page that will appear.
18. The registration number of original application has to be used for reference.
19. As per RTI Act, no fee has to be paid for first appeal.
20. The applicant/the appellant should submit his/her mobile number to receive SMS alert.
21. Status of the RTI application/first appeal filed online can be seen by the applicant/appellant by clicking at "View Status".
22. All the requirements for filing an RTI application and first appeal as well as other provisions regarding time limit, exemptions etc., as provided in the RTI Act, 2005 will continue to apply.
                  ''',
                  style: TextStyle(fontSize: 14.0, height: 1.5),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "I have read and understood the above guidelines.",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
            if (isCheckboxChecked)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
                child: Text("Submit"),
              ),
          ],
        ),
      ),
    );
  }
}
