import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class StudentProfileSetup extends StatefulWidget {
  @override
  _StudentProfileSetupState createState() => _StudentProfileSetupState();
}

class _StudentProfileSetupState extends State<StudentProfileSetup> {
  File? _image;
  final picker = ImagePicker();
  TextEditingController userIDController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController fathersNameController = TextEditingController();
  TextEditingController schoolRegIDController = TextEditingController();
  TextEditingController mothersNameController = TextEditingController();
  TextEditingController placeOfBirthController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController casteController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController aadharController = TextEditingController();
  TextEditingController admissionDateController = TextEditingController();
  TextEditingController previousPercentageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  Future<void> _pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile Setup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () => _pickImage(),
              child: Container(
                width: 100, // Adjust the size as needed
                height: 100, // Adjust the size as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: _image == null
                    ? Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.blue,
                      )
                    : ClipOval(
                        child: Image.file(
                          _image!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: userIDController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: fathersNameController,
              decoration: InputDecoration(labelText: "Father's Name"),
            ),
            TextFormField(
              controller: schoolRegIDController,
              decoration: InputDecoration(labelText: 'School Reg. ID'),
            ),
            TextFormField(
              controller: mothersNameController,
              decoration: InputDecoration(labelText: "Mother's Name"),
            ),
            TextFormField(
              controller: placeOfBirthController,
              decoration: InputDecoration(labelText: 'Place of Birth'),
            ),
            TextFormField(
              controller: dateOfBirthController,
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            TextFormField(
              controller: religionController,
              decoration: InputDecoration(labelText: 'Religion'),
            ),
            TextFormField(
              controller: casteController,
              decoration: InputDecoration(labelText: 'Caste'),
            ),
            TextFormField(
              controller: classController,
              decoration: InputDecoration(labelText: 'Class'),
            ),
            TextFormField(
              controller: aadharController,
              decoration: InputDecoration(labelText: 'Aadhar Number'),
            ),
            TextFormField(
              controller: admissionDateController,
              decoration: InputDecoration(labelText: 'Date of Admission'),
            ),
            TextFormField(
              controller: previousPercentageController,
              decoration: InputDecoration(labelText: 'Previous Percentage'),
            ),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              controller: mobileController,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle saving the profile to Firebase here
              },
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: StudentProfileSetup(),
  ));
}
