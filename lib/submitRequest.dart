import 'package:flutter/material.dart';

class submitRequest extends StatefulWidget {
  const submitRequest({super.key});

  @override
  State<submitRequest> createState() => _submitRequestState();
}

class _submitRequestState extends State<submitRequest> {

  final _formKey = GlobalKey<FormState>();

  void _resetForm() {
    _formKey.currentState?.reset();
  }

  // Controllers for form fields
  final _emailController = TextEditingController();
  final _confirmEmailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _queryController = TextEditingController();
  final _pinCodeController = TextEditingController();

  String _gender = 'Male';
  String _country = 'India';
  String _citizenship = 'Indian';
  String? _ministry;
  String? _publicAuthority;
  String? _state;
  String? _status;
  String? _eStatus;

  final List<String> governmentDepartments = [
    "Cabinet Secretariat",
    "Comptroller and Auditor General of India",
    "Department of Administrative Reforms & PG",
    "Department of Agricultural Research & Education",
  ];

  final List<String> publicAuthorities = [
    "Cabinet Secretariat",
    "Department of Agricultural Research & Education",
  ];

  final List<String> stateList = [
    "Karnataka",
    "Kerala",
  ];


  @override
  void dispose() {
    _emailController.dispose();
    _confirmEmailController.dispose();
    _phoneController.dispose();
    _nameController.dispose();
    _addressController.dispose();
    _queryController.dispose();
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RTI Request Form'),
        backgroundColor: Colors.orangeAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                // Text - Online RTI Request Form
                
                const Text(
                  'Online RTI Request Form',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Text - fields marked with * etc
                const Text(
                  'Note: Fields marked with * are Mandatory.',
                  style: TextStyle(color: Colors.red)),

                // Text - Public Authority Details:-
                const Text(
                  "\n\nPublic Authority Details:- ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                // Ministry Dropdown
                DropdownButtonFormField<String>(
                  value: _ministry,
                  decoration: InputDecoration(labelText: 'Select Ministry/Department/Apex Body'),
                  items: governmentDepartments
                      .map((ministry) => DropdownMenuItem(value: ministry, child: Text(ministry)))
                      .toList(),
                  onChanged: (value) => setState(() => _ministry = value),
                  validator: (value) => value == null ? 'Please select a ministry' : null,
                  isExpanded: true,
                ),

                // Public Authority DropDown
                DropdownButtonFormField<String>(
                  value: _publicAuthority,
                  decoration: InputDecoration(labelText: 'Select Public Authority'),
                  items: publicAuthorities
                      .map((publicAuthority) => DropdownMenuItem(value: publicAuthority, child: Text(publicAuthority)))
                      .toList(),
                  onChanged: (value) => setState(() => _publicAuthority = value),
                  validator: (value) => value == null ? 'Please select a Public Authority' : null,
                  isExpanded: true,
                ),

                // Text - Personal Details of RTI Applicant:-
                const Text(
                  "\n\nPersonal Details of RTI Applicant:- ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                // Email Field
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email-ID'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+\$').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),

                // Confirm Email Field
                TextFormField(
                  controller: _confirmEmailController,
                  decoration: InputDecoration(labelText: 'Confirm Email-ID'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value != _emailController.text) {
                      return 'Email does not match';
                    }
                    return null;
                  },
                ),

                // Phone Number Field
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(labelText: 'Mobile Number (For receiving SMS alerts)'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r'^\d{10}\$').hasMatch(value)) {
                      return 'Please enter a valid 10-digit phone number';
                    }
                    return null;
                  },
                ),

                // Name Field
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Full Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),



                // Gender Radio Buttons
                Text("\n\nGender"),
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 'Male',
                          groupValue: _gender,
                          onChanged: (value) => setState(() => _gender = value.toString()),
                        ),
                        Text('Male'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Female',
                          groupValue: _gender,
                          onChanged: (value) => setState(() => _gender = value.toString()),
                        ),
                        Text('Female'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Third Gender',
                          groupValue: _gender,
                          onChanged: (value) => setState(() => _gender = value.toString()),
                        ),
                        Text('Third Gender'),
                      ],
                    ),
                  ],
                ),

                // Address Field
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),

                // Pin Code Field
                TextFormField(
                  controller: _pinCodeController,
                  decoration: InputDecoration(labelText: 'Pin Code'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your pin code';
                    }
                    if (!RegExp(r'^\d{6}\$').hasMatch(value)) {
                      return 'Please enter a valid 6-digit pin code';
                    }
                    return null;
                  },
                ),

                // Country Radio Buttons
                Row(
                  children: [
                    const Text('Country:'),

                    Radio(
                        value: "India",
                        groupValue: _country,
                        onChanged: (value) => setState(() => _country = value.toString())
                    ),
                    const Text("India"),

                    Radio(
                        value: "Other",
                        groupValue: _country,
                        onChanged: (value) => setState(() => _country = value.toString())
                    ),
                    const Text("Other"),
                  ],
                ),

                // State Dropdown
                DropdownButtonFormField<String>(
                  value: _state,
                  decoration: InputDecoration(labelText: 'State'),
                  items: stateList
                      .map((state) => DropdownMenuItem(value: state, child: Text(state)))
                      .toList(),
                  onChanged: (value) => setState(() => _state = value),
                  validator: (value) => value == null ? 'Please select a State' : null,
                ),


                // Urban or Rural Radio Buttons
                Row(
                  children: [
                    const Text('Status:'),

                    Radio(
                        value: "Urban",
                        groupValue: _status,
                        onChanged: (value) => setState(() => _status = value.toString())
                    ),
                    const Text("Urban"),

                    Radio(
                        value: "Rural",
                        groupValue: _status,
                        onChanged: (value) => setState(() => _status = value.toString())
                    ),
                    const Text("Rural"),
                  ],
                ),

                // Educational Status Radio Buttons
                Row(
                  children: [
                    const Text('Educational Status:'),

                    Radio(
                        value: "Literate",
                        groupValue: _eStatus,
                        onChanged: (value) => setState(() => _eStatus = value.toString())
                    ),
                    const Text("Literate"),

                    Radio(
                        value: "Illiterate",
                        groupValue: _eStatus,
                        onChanged: (value) => setState(() => _eStatus = value.toString())
                    ),
                    const Text("Illiterate"),
                  ],
                ),

                // Text - Request Details:-
                const Text(
                  "\n\nRequest Details:- ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                // Citizenship Dropdown
                DropdownButtonFormField<String>(
                  value: _citizenship,
                  decoration: InputDecoration(labelText: 'Citizenship'),
                  items: ['Indian', 'Other']
                      .map((citizen) => DropdownMenuItem(value: citizen, child: Text(citizen)))
                      .toList(),
                  onChanged: (value) => setState(() => _citizenship = value!),
                ),

                const SizedBox(height: 16.0),

                Text('\nNote:- Only alphabets A-Z a-z number 0-9 and '
                    "special characters , . - _ ( ) / @ : & ? \ % "
                    'are allowed in Text for RTI Request application.\n',
                style: TextStyle(color: Colors.red),),

                // RTI Query Field
                TextFormField(
                  controller: _queryController,
                  decoration: InputDecoration(
                      labelText: 'Text for RTI Request Application',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                )
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your RTI query';
                    }
                    return null;
                  },
                ),

                // Text - Do not upload

                Text("\n\nNote: \nDo not upload Aadhar Card or "
                    "PAN Card or any other personal "
                    "Identification (Except BPL Card).\n"
                    "PDF file name should be less than 12 "
                    "alpha-numeric characters only and "
                    "shouldn't contain any blank spaces.\n\n",
                  style: TextStyle(color: Colors.red),),

                Row(
                  children: [
                    Expanded(child: Text("Supporting document \n(only pdf upto 1 MB)")),
                    const SizedBox(width: 14.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Choose File'),
                    ),
                    const Text('No file chosen'),
                  ],
                ),
                const SizedBox(height: 16.0),


                // Make Payment Button
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Submit the form data
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Form Submitted'),
                            content: Text('Your RTI request has been submitted successfully!'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text('Make Payment'),
                  ),
                  ElevatedButton(
                      onPressed: _resetForm, 
                      child: Text('Reset'),
                  )
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
